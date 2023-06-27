import pandas

from cartola_tasks.score import Score

class Candidates:

    def __init__(self) -> None:
        GOLEIRO = 1
        LATERAL = 2
        ZAGUEIRO = 3
        MEIA = 4
        ATACANTE = 5
        self.positions_list = [GOLEIRO,LATERAL,ZAGUEIRO,MEIA,ATACANTE]
        self.score = Score()

    def get_candidates_filter(self, candidates):
        return {
                "id_player":candidates["id_player"],
                "time":candidates["time"],
                "id_club":candidates["id_club"],
                "id_position":candidates["id_position"]
            }
    
    def get_candidates_data(self, candidates):
        return {
            "id_player":candidates["id_player"], 
            "indicacao":candidates["indicacao"], 
            "time":candidates["time"], 
            "id_club":candidates["id_club"], 
            "id_position":candidates["id_position"],
            "points_casa":candidates["points_casa"], 
            "has_played_casa":candidates["has_played_casa"], 
            "points_fora":candidates["points_fora"], 
            "has_played_fora":candidates["has_played_fora"],
            "total_pontos":candidates["total_pontos"], 
            "total_jogos":candidates["total_jogos"], 
            "media_geral":candidates["media_geral"], 
            "media_casa":candidates["media_casa"],
            "media_fora":candidates["media_fora"]
        }

    def lista_jogadores_candidatos(self, matches, scouts, clubs, next_matches, market):
        
        df_pontuacao = self.score.cria_dataframe_pontuacao(matches, scouts, clubs)
        df_scouts = self.score.realiza_merge_entre_partidas_scouts_clube(matches, scouts, clubs)
        
        df_club = pandas.DataFrame.from_dict(clubs)
        df_next_matches = pandas.DataFrame.from_dict(next_matches)
        df_mercado = pandas.DataFrame.from_dict(market)

        df_conquistados = self.__cria_dataframe_pontuacao_conquistada__(df_next_matches, df_scouts, df_club)

        df_acc_canditatos = pandas.DataFrame()
        
        for p in self.positions_list:
            candidados_top3 = df_conquistados[(df_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['mandante']
                clube_id = df_club[df_club['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['club_id']==clube_id) & (df_mercado['position']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos = df_acc_canditatos.append(df_candidatos)
                
        for p in self.positions_list:
            candidados_top5 = df_pontuacao[(df_pontuacao['id_position']==p) & (df_pontuacao['total_jogos']>8)].sort_values(by='media_geral', ascending=False).head(5)
            for index, row in candidados_top5.iterrows():
                id_player = row['id_player']
                df_candidatos = df_mercado[(df_mercado['athlete_id']==int(id_player)) & (df_mercado['status_id']==7)]
                df_acc_canditatos = df_acc_canditatos.append(df_candidatos)

        df_acc_canditatos_final = df_acc_canditatos.groupby('athlete_id').size().reset_index()
        df_acc_canditatos_final.columns = ['id_player', 'indicacao']
        df_acc_canditatos_final['id_player'] = df_acc_canditatos_final['id_player'].astype(str)
        df_acc_canditatos_final = pandas.merge(df_acc_canditatos_final, df_pontuacao, on=['id_player'], how='left')
        return df_acc_canditatos_final.sort_values(['id_position', 'indicacao'], ascending=[True, False])

    def __cria_dataframe_pontuacao_conquistada__(self, df_next_match, df_scouts, df_club):
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_match, df_club)
        df_conquistados = self.cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado(df_scouts, df_next_matches_com_clubes)
        df_conquistados['cedidos_mais_conquistados'] = df_conquistados['pontos_cedidos']+ df_conquistados['pontos_conquistados']
        return df_conquistados
    
    def __adiciona_clubes_nas_proximas_partidas__(self, df_next_match, df_club):
        df_club_aux = df_club[['id_club', 'name']]
        df_club_aux.columns = ['home_id', 'mandante']
        df_next_match = pandas.merge(df_next_match, df_club_aux, how='left', on=['home_id'])

        df_club_aux.columns = ['visitor_id', 'visitante']
        df_next_match = pandas.merge(df_next_match, df_club_aux, how='left', on=['visitor_id'])
        return df_next_match
    
    def cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado(self, df_scouts, df_next_matches_com_clubes):
        df_pontuacao_conquistada = pandas.DataFrame()

        for index, row in df_next_matches_com_clubes.iterrows():
            time_mandante = row['mandante']
            time_visitante = row['visitante']
            
            df_pontuacao_conquistada_por_time_posicao_mando_agrupado = self.__cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(df_scouts)
            df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux = df_pontuacao_conquistada_por_time_posicao_mando_agrupado[(df_pontuacao_conquistada_por_time_posicao_mando_agrupado['time']==time_mandante) & (df_pontuacao_conquistada_por_time_posicao_mando_agrupado['CASA']==1)][['time','id_position','pontos_conquistados']]
            df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux.columns = ['mandante', 'id_position', 'pontos_conquistados']

            df_pontuacao_cedida_por_time_posicao_mando_agrupado = self.__cria_dataframe_pontuacao_cedida_por_time_posicao_mando_agrupado__(df_scouts)
            df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux = df_pontuacao_cedida_por_time_posicao_mando_agrupado[(df_pontuacao_cedida_por_time_posicao_mando_agrupado['time']==time_visitante) & (df_pontuacao_cedida_por_time_posicao_mando_agrupado['CASA']==1)][['time','id_position','pontos_cedidos']]
            df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux.columns = ['visitante', 'id_position', 'pontos_cedidos']

            df_cedidos_vs_conquistados_por_time_posicao_mando_agrupado = pandas.merge(df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux,df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux, on=['id_position'], how='left')

            df_pontuacao_conquistada = df_pontuacao_conquistada.append(df_cedidos_vs_conquistados_por_time_posicao_mando_agrupado, ignore_index = True)    
            
        return df_pontuacao_conquistada
    
    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['time', 'id_position', 'CASA']).agg({'points':'sum'}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_mando_agrupado
    
    def __cria_dataframe_pontuacao_cedida_por_time_posicao_mando_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_cedida_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['adversario', 'id_position', 'CASA']).agg({'points':'sum'}).reset_index()
        df_pontuacao_cedida_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_cedidos']
        return df_pontuacao_cedida_por_time_posicao_mando_agrupado
    
    def __cria_dataframe_scouts_played__(self, df_scouts):
        return df_scouts[df_scouts['has_played'] == True]
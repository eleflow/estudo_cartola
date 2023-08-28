import pandas

from cartola_tasks.score import Score
from cartola_requests.requesters.matches_requester import MatchesRequester

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
                "turn":candidates["turn"],
                "time":candidates["time"],
                "id_club":candidates["id_club"],
                "id_position":candidates["id_position"]
            }
    
    def get_candidates_data(self, candidates):
        return {
            "id_player":candidates["id_player"], 
            "turn":candidates["turn"],
            "criterio_1":candidates["criterio_1"],
            "criterio_2":candidates["criterio_2"],
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
            "media_fora":candidates["media_fora"],
        }

    def lista_jogadores_candidatos(self, matches, scouts, clubs, next_matches, market, turn, chosen):

        df_pontuacao = self.score.cria_dataframe_pontuacao(matches, scouts, clubs)
        df_scouts = self.score.realiza_merge_entre_partidas_scouts_clube(matches, scouts, clubs)
        df_club = pandas.DataFrame.from_dict(clubs)
        df_next_matches = pandas.DataFrame.from_dict(next_matches)
        df_mercado = pandas.DataFrame.from_dict(market)
        df_conquistados = self.__cria_dataframe_pontuacao_conquistada__(df_next_matches, df_scouts, df_club)
        df_cedidos = self.__cria_dataframe_pontuacao_cedida__(df_scouts, df_club, turn)
        df_mandante_x_visitante = self.cria_dataframe_mandante_x_visitante(df_scouts, df_club, turn)
        df_mandante_x_visitante_cedidos_mais_conquistados = cria_dataframe_cedidos_mais_conquistados(df_mandante_x_visitante)
        df_visitante_x_mandante = cria_dataframe_visitante_x_mandante(df_scouts, df_club)
        df_visitante_x_mandante_cedidos_mais_conquistados = cria_dataframe_cedidos_mais_conquistados(df_visitante_x_mandante)

        #-------------------------------------------------------------------
        #comparamos pontuação conquistada x pontuação cedida por posição e considerando mando de campo
        df_acc_canditatos_1 = pandas.DataFrame()

        for p in self.positions_list:
            candidados_top3 = df_conquistados[(df_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['mandante']
                clube_id = df_club[df_club['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['clube_id']==clube_id) & (df_mercado['posicao_id']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_1 = df_acc_canditatos_1.append(df_candidatos)

        for p in self.positions_list:
            candidados_top3 = df_cedidos[(df_cedidos['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['visitante']
                clube_id = df_club[df_club['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['clube_id']==clube_id) & (df_mercado['posicao_id']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_1 = df_acc_canditatos_1.append(df_candidatos)


        df_acc_canditatos_1['criterio_1'] = 1
        df_acc_canditatos_1['criterio_2'] = 0
        df_acc_canditatos_1['criterio_3'] = 0
        df_acc_canditatos_1['criterio_4'] = 0
        df_acc_canditatos_1['criterio_5'] = 0

        #-------------------------------------------------------------------
        #top5 jogadores com maior média por posição, jogador precisa ter mais de 8 jogos
        df_acc_canditatos_2 = pandas.DataFrame()

        for p in self.positions_list:
            candidados_top5 = df_pontuacao[(df_pontuacao['id_position']==p) & (df_pontuacao['total_jogos']>8)].sort_values(by='media_geral', ascending=False).head(5)
            for index, row in candidados_top5.iterrows():
                id_player = row['id_player']
                df_candidatos = df_mercado[(df_mercado['atleta_id']==int(id_player)) & (df_mercado['status_id']==7)]
                df_acc_canditatos_2 = df_acc_canditatos_2.append(df_candidatos)
    
        df_acc_canditatos_2['criterio_1'] = 0
        df_acc_canditatos_2['criterio_2'] = 1
        df_acc_canditatos_2['criterio_3'] = 0
        df_acc_canditatos_2['criterio_4'] = 0
        df_acc_canditatos_2['criterio_5'] = 0

        #-------------------------------------------------------------------
        #comparamos pontuação conquistada x pontuação cedida por posição e sem considerar mando de campo
        df_acc_canditatos_3 = pandas.DataFrame()

        for p in self.positions_list:
            candidados_top3 = df_mandante_x_visitante_cedidos_mais_conquistados[(df_mandante_x_visitante_cedidos_mais_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['mandante']
                clube_id = df_club[df_club['name']==clube]['id'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['clube_id']==clube_id) & (df_mercado['posicao_id']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_3 = df_acc_canditatos_3.append(df_candidatos)

        for p in self.positions_list:
            candidados_top3 = df_visitante_x_mandante_cedidos_mais_conquistados[(df_visitante_x_mandante_cedidos_mais_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['visitante']
                clube_id = df_club[df_club['name']==clube]['id'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['clube_id']==clube_id) & (df_mercado['posicao_id']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_3 = df_acc_canditatos_3.append(df_candidatos)

        df_acc_canditatos_3['criterio_1'] = 0
        df_acc_canditatos_3['criterio_2'] = 0
        df_acc_canditatos_3['criterio_3'] = 1
        df_acc_canditatos_3['criterio_4'] = 0
        df_acc_canditatos_3['criterio_5'] = 0

        #-------------------------------------------------------------------
        #top5 jogadores com maior média por posição, considerando todos os jogos
        df_acc_canditatos_4 = pandas.DataFrame()

        for p in self.positions_list:

            candidados_top5 = df_scouts_geral[(df_scouts_geral['id_position']==p) & (df_scouts_geral['total_jogos']>4)].sort_values(by='media_geral', ascending=False).head(20)
            for index, row in candidados_top5.iterrows():
                id_player = row['id_player']
                df_candidatos = df_mercado[(df_mercado['atleta_id']==int(id_player)) & (df_mercado['status_id']==7)]
                df_acc_canditatos_4 = df_acc_canditatos_4.append(df_candidatos)

        df_acc_canditatos_4['criterio_1'] = 0
        df_acc_canditatos_4['criterio_2'] = 0
        df_acc_canditatos_4['criterio_3'] = 0
        df_acc_canditatos_4['criterio_4'] = 1
        df_acc_canditatos_4['criterio_5'] = 0

        #-------------------------------------------------------------------
        #top20 jogadores mais escalados

        df_mais_escalados = chosen
        df_acc_canditatos_5 = pandas.DataFrame()

        for index, row in df_mais_escalados.iterrows():
            id_player = row['athlete_id']
            df_candidatos = df_mercado[(df_mercado['atleta_id']==int(id_player)) & (df_mercado['status_id']==7)]
            df_acc_canditatos_5 = df_acc_canditatos_5.append(df_candidatos)

        df_acc_canditatos_5['criterio_1'] = 0
        df_acc_canditatos_5['criterio_2'] = 0
        df_acc_canditatos_5['criterio_3'] = 0
        df_acc_canditatos_5['criterio_4'] = 0
        df_acc_canditatos_5['criterio_5'] = 1

        df_acc_canditatos = pandas.concat([df_acc_canditatos_1, df_acc_canditatos_2, df_acc_canditatos_3, df_acc_canditatos_4, df_acc_canditatos_5])
        df_acc_canditatos_final = df_acc_canditatos.groupby('atleta_id')['criterio_1', 'criterio_2', 'criterio_3', 'criterio_4', 'criterio_5'].sum().reset_index()
        df_acc_canditatos_final.columns = ['id_player', 'criterio_1', 'criterio_2', 'criterio_3', 'criterio_4', 'criterio_5']
        df_acc_canditatos_final['indicacao'] = df_acc_canditatos_final['criterio_1']+df_acc_canditatos_final['criterio_2']+df_acc_canditatos_final['criterio_3']+df_acc_canditatos_final['criterio_4']+df_acc_canditatos_final['criterio_5']
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

    def __cria_dataframe_pontuacao_cedida__(self, df_scouts, df_club, turn):
        df_next_matches = self.__proximas_partidas__(turn)
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_matches, df_club)
        df_cedidos = self._cria_dataframe_pontuacao_cedida_por_time_mando_posicao_agrupado(df_scouts, df_next_matches_com_clubes)
        df_cedidos['cedidos_mais_conquistados'] = df_cedidos['pontos_cedidos'] + df_cedidos['pontos_conquistados']
        return df_cedidos

    def __proximas_partidas__(self, turn):
        next_matches = MatchesRequester(turn).matches()
        df_next_matches = pandas.DataFrame(next_matches)
        return df_next_matches

    def __adiciona_clubes_nas_proximas_partidas__(self, df_next_matches, df_club):
        df_club_aux = df_club[['id', 'name']]
        df_club_aux.columns = ['home_id', 'mandante']
        df_next_matches = pandas.merge(df_next_matches, df_club_aux, how='left', on=['home_id'])

        df_club_aux.columns = ['visitor_id', 'visitante']
        df_next_matches = pandas.merge(df_next_matches, df_club_aux, how='left', on=['visitor_id'])
        return df_next_matches

    def _cria_dataframe_pontuacao_cedida_por_time_mando_posicao_agrupado(self, df_scouts, df_next_matches_com_clubes):

        df_pontuacao_cedida = pandas.DataFrame()

        for index, row in df_next_matches_com_clubes.iterrows():
            time_mandante = row['mandante']
            time_visitante = row['visitante']

            df_pontuacao_conquistada_por_time_posicao_mando_agrupado = self.__cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(df_scouts)
            df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux = df_pontuacao_conquistada_por_time_posicao_mando_agrupado[(df_pontuacao_conquistada_por_time_posicao_mando_agrupado['time']==time_visitante)  & (df_pontuacao_conquistada_por_time_posicao_mando_agrupado['CASA']==0)][['time','id_position','pontos_conquistados']]
            df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux.columns = ['visitante', 'id_position', 'pontos_conquistados']

            df_pontuacao_cedida_por_time_posicao_mando_agrupado = self.__cria_dataframe_pontuacao_cedida_por_time_posicao_mando_agrupado__(df_scouts)
            df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux = df_pontuacao_cedida_por_time_posicao_mando_agrupado[(df_pontuacao_cedida_por_time_posicao_mando_agrupado['time']==time_mandante) & (df_pontuacao_cedida_por_time_posicao_mando_agrupado['CASA']==0)][['time','id_position','pontos_cedidos']]
            df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux.columns = ['mandante', 'id_position', 'pontos_cedidos']

            df_cedidos_vs_conquistados_por_time_posicao_mando_agrupado = pandas.merge(df_pontuacao_conquistada_por_time_posicao_mando_agrupado_aux,df_pontuacao_cedida_por_time_mando_posicao_agrupado_aux, on=['id_position'], how='left')

            df_pontuacao_cedida = df_pontuacao_cedida.append(df_cedidos_vs_conquistados_por_time_posicao_mando_agrupado, ignore_index = True)

        return df_pontuacao_cedida

    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['time', 'id_position', 'CASA']).agg({'points':'sum'}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_mando_agrupado

    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['time', 'id_position', 'CASA']).agg({'points':'sum'}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_mando_agrupado

    def __cria_dataframe_scouts_played__(self, df_scouts):
        return df_scouts[df_scouts['has_played'] == True]

    def cria_dataframe_mandante_x_visitante(self, df_scouts, df_club, turn):
        df_next_matches = self.__proximas_partidas__(turn)
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_matches, df_club)
        df_mandante_x_visitante = self.cria_dataframe_pontuacao_conquistada_mandante_x_visitante(df_scouts, df_next_matches_com_clubes)
        return df_mandante_x_visitante

    def cria_dataframe_pontuacao_conquistada_mandante_x_visitante(self, df_scouts, df_next_matches_com_clubes):
        df_mandante_x_visitante = pandas.DataFrame()

        for index, row in df_next_matches_com_clubes.iterrows():
            time_mandante = row['mandante']
            time_visitante = row['visitante']
            df_pontuacao_conquistada_por_time_posicao_agrupado = self.__cria_dataframe_pontuacao_conquistada_por_time_posicao_agrupado__(df_scouts)
            df_pontuacao_conquistada_por_time_posicao_agrupado_aux = df_pontuacao_conquistada_por_time_posicao_agrupado[df_pontuacao_conquistada_por_time_posicao_agrupado['time']==time_mandante]
            df_pontuacao_conquistada_por_time_posicao_agrupado_aux.columns = ['mandante', 'id_position', 'pontos_conquistados']

            df_pontuacao_cedida_por_time_posicao_agrupado = self.__cria_dataframe_pontuacao_cedida_por_time_posicao_agrupado__(df_scouts)
            df_pontuacao_cedida_por_time_posicao_agrupado_aux = df_pontuacao_cedida_por_time_posicao_agrupado[df_pontuacao_cedida_por_time_posicao_agrupado['time']==time_visitante]
            df_pontuacao_cedida_por_time_posicao_agrupado_aux.columns = ['visitante', 'id_position', 'pontos_cedidos']

            df_cedidos_vs_conquistados_por_time_posicao_agrupado = pandas.merge(df_pontuacao_conquistada_por_time_posicao_agrupado_aux,df_pontuacao_cedida_por_time_posicao_agrupado_aux, on=['id_position'], how='left')

            df_mandante_x_visitante = df_mandante_x_visitante.append(df_cedidos_vs_conquistados_por_time_posicao_agrupado, ignore_index = True)

        return df_mandante_x_visitante

    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_agrupado = df_scouts_played.groupby(['time', 'id_position']).agg({'points':'sum'}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_agrupado.columns = ['time','id_position', 'pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_agrupado

    def __cria_dataframe_pontuacao_cedida_por_time_posicao_agrupado__(self, df_scouts):
        df_scouts_played = self.__cria_dataframe_scouts_played__(df_scouts)
        df_pontuacao_cedida_por_time_posicao_agrupado = df_scouts_played.groupby(['adversario', 'id_position']).agg({'points':'sum'}).reset_index()
        df_pontuacao_cedida_por_time_posicao_agrupado.columns = ['time','id_position', 'pontos_cedidos']
        return df_pontuacao_cedida_por_time_posicao_agrupado
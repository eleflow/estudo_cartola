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
                "turn":candidates["turn"],
                "id_club":candidates["id_club"],
                "id_position":candidates["id_position"]
            }
    
    def get_candidates_data(self, candidates):
        return {
            "id_player":candidates["id_player"], 
            "turn":candidates["turn"],
            "criterio_1":candidates["criterio_1"],
            "criterio_2":candidates["criterio_2"],
            "criterio_3":candidates["criterio_3"],
            "criterio_4":candidates["criterio_4"],
            "criterio_5":candidates["criterio_5"],
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

    def lista_jogadores_candidatos(self, matches, athletes, clubs, next_matches, mercado, turn, chosen):
        df_matches = self.aplica_transformacoes_dataframe_partidas(pandas.DataFrame(matches))
        df_clubs = pandas.DataFrame(clubs)
        df_athletes = pandas.DataFrame(athletes)
        df_scouts = self.realiza_merge_entre_partidas_scouts_clube(df_matches, df_athletes, df_clubs)
        df_next_matches = pandas.DataFrame(next_matches)
        df_mercado = pandas.DataFrame(mercado)
        df_chosen = pandas.DataFrame(chosen)

        df_conquistados = self.cria_dataframe_pontuacao_conquistada(df_scouts, df_clubs, df_next_matches)
        df_cedidos = self.cria_dataframe_pontuacao_cedida(df_scouts, df_clubs, df_next_matches)
        df_pontuacao = self.cria_dataframe_pontuacao(df_scouts)
        df_mandante_x_visitante = self.cria_dataframe_mandante_x_visitante(df_scouts, df_clubs, df_next_matches)
        df_mandante_x_visitante_cedidos_mais_conquistados = self.cria_dataframe_cedidos_mais_conquistados(df_mandante_x_visitante)
        df_visitante_x_mandante = self.cria_dataframe_visitante_x_mandante(df_scouts, df_clubs, df_next_matches)
        df_visitante_x_mandante_cedidos_mais_conquistados = self.cria_dataframe_cedidos_mais_conquistados(df_visitante_x_mandante)
        df_scouts_geral = self.cria_dataframe_pontuacao(df_scouts)

        df_acc_canditatos_1 = pandas.DataFrame()
    
        for p in self.positions_list:
            candidados_top3 = df_conquistados[(df_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['mandante']
                clube_id = df_clubs[df_clubs['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['club_id']==clube_id) & (df_mercado['position']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_1 = df_acc_canditatos_1.append(df_candidatos)
    
        for p in self.positions_list:
            candidados_top3 = df_cedidos[(df_cedidos['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['visitante']
                clube_id = df_clubs[df_clubs['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['club_id']==clube_id) & (df_mercado['position']==position) & (df_mercado['status_id']==7)]
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
                df_candidatos = df_mercado[(df_mercado['athlete_id']==int(id_player)) & (df_mercado['status_id']==7)]
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
                clube_id = df_clubs[df_clubs['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['club_id']==clube_id) & (df_mercado['position']==position) & (df_mercado['status_id']==7)]
                df_acc_canditatos_3 = df_acc_canditatos_3.append(df_candidatos)
    
        for p in self.positions_list:
            candidados_top3 = df_visitante_x_mandante_cedidos_mais_conquistados[(df_visitante_x_mandante_cedidos_mais_conquistados['id_position'] == p)].sort_values(by='cedidos_mais_conquistados', ascending=False).head(3)
            for index, row in candidados_top3.iterrows():
                clube = row['visitante']
                clube_id = df_clubs[df_clubs['name']==clube]['id_club'].iloc[0]
                position = row['id_position']
                df_candidatos = df_mercado[(df_mercado['club_id']==clube_id) & (df_mercado['position']==position) & (df_mercado['status_id']==7)]
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
                df_candidatos = df_mercado[(df_mercado['athlete_id']==int(id_player)) & (df_mercado['status_id']==7)]
                df_acc_canditatos_4 = df_acc_canditatos_4.append(df_candidatos)

        df_acc_canditatos_4['criterio_1'] = 0
        df_acc_canditatos_4['criterio_2'] = 0
        df_acc_canditatos_4['criterio_3'] = 0   
        df_acc_canditatos_4['criterio_4'] = 1
        df_acc_canditatos_4['criterio_5'] = 0

        #-------------------------------------------------------------------
    #top20 jogadores mais escalados     

        df_mais_escalados = df_chosen
        df_acc_canditatos_5 = pandas.DataFrame()

        for index, row in df_mais_escalados.iterrows():
            id_player = row['athlete_id']
            df_candidatos = df_mercado[(df_mercado['athlete_id']==int(id_player)) & (df_mercado['status_id']==7)]
            df_acc_canditatos_5 = df_acc_canditatos_5.append(df_candidatos)
            
        df_acc_canditatos_5['criterio_1'] = 0
        df_acc_canditatos_5['criterio_2'] = 0
        df_acc_canditatos_5['criterio_3'] = 0   
        df_acc_canditatos_5['criterio_4'] = 0
        df_acc_canditatos_5['criterio_5'] = 1
        
        df_acc_canditatos = pandas.concat([df_acc_canditatos_1, df_acc_canditatos_2, df_acc_canditatos_3, df_acc_canditatos_4, df_acc_canditatos_5])

        df_acc_canditatos_final = df_acc_canditatos.groupby('athlete_id')['criterio_1', 'criterio_2', 'criterio_3', 'criterio_4', 'criterio_5'].sum().reset_index()
        df_acc_canditatos_final.columns = ['id_player', 'criterio_1', 'criterio_2', 'criterio_3', 'criterio_4', 'criterio_5']
        df_acc_canditatos_final['indicacao'] = df_acc_canditatos_final['criterio_1']+df_acc_canditatos_final['criterio_2']+df_acc_canditatos_final['criterio_3']+df_acc_canditatos_final['criterio_4']+df_acc_canditatos_final['criterio_5']
        df_acc_canditatos_final['id_player'] = df_acc_canditatos_final['id_player'].astype(str)
        df_acc_canditatos_final = pandas.merge(df_acc_canditatos_final, df_pontuacao, on=['id_player'], how='left')
        
        df_acc_canditatos_final['turn'] = turn

        return df_acc_canditatos_final.sort_values(['id_position', 'indicacao'], ascending=[True, False])

    def aplica_transformacoes_dataframe_partidas(self, df_match):
        df_match['diff_goals'] = df_match['home_goal'] - df_match['visitor_goal']
        df_match['vencedor'] = df_match['diff_goals'].map(self.vencedor)
        df_match['datetime'] = pandas.to_datetime(df_match['date'])
        return df_match

    def vencedor(self, diff):
        if diff > 0:
            return 'CASA'
        elif diff == 0:
            return 'EMPATE'
        else:
            return 'VISITANTE'

    def realiza_merge_entre_partidas_scouts_clube(self, df_match, df_scouts, df_club):
        df_scouts = self.__adiciona_coluna_visitor_partida__(df_match, df_scouts)
        df_scouts = self.__adiciona_coluna_home_partida__(df_match, df_scouts)
        df_scouts = self.__organizacao_colunas_apos_criacao_visitor_home__(df_scouts)
        df_scouts = self.__adiciona_coluna_casa__(df_scouts)
        df_scouts = self.__adiciona_coluna_home_clube__(df_scouts, df_club)
        df_scouts = self.__adiciona_coluna_visitor_clube__(df_scouts, df_club)
        df_scouts = self.__adiciona_coluna_adversario__(df_scouts)
        return df_scouts

    def __adiciona_coluna_visitor_partida__(self, df_match, df_scouts):
        df_match.columns = ['match_id', 'turn', 'id_club', 'visitor_id', 'date', 'timestamp', 'local', 'valid', 'home_goal', 'visitor_goal', 'year', 'diff_goals', 'vencedor', 'datetime']
        df_scouts = pandas.merge(df_scouts, df_match, how = 'left', on = ['turn', 'id_club'])
        return df_scouts

    def __adiciona_coluna_home_partida__(self, df_match, df_scouts):
        df_match.columns = ['match_id', 'turn', 'home_id', 'id_club', 'date', 'timestamp', 'local', 'valid', 'home_goal', 'visitor_goal', 'year', 'diff_goals', 'vencedor', 'datetime']
        df_scouts = pandas.merge(df_scouts, df_match, how='left', on=['turn', 'id_club'])
        return df_scouts
    
    def __organizacao_colunas_apos_criacao_visitor_home__(self, df_scouts):
        df_scouts.head()
        df_scouts['home_id'].fillna(df_scouts['id_club'], inplace= True)
        df_scouts['visitor_id'].fillna(df_scouts['id_club'], inplace= True)
        df_scouts['home_goal_x'].fillna(df_scouts['home_goal_y'], inplace= True)
        df_scouts['visitor_goal_x'].fillna(df_scouts['visitor_goal_y'], inplace= True)
        df_scouts['home_goal'] = df_scouts['home_goal_x']
        df_scouts['visitor_goal'] = df_scouts['visitor_goal_x'] 
        df_scouts = df_scouts[['nickname', 'points', 'id_position', 'id_club', 'has_played', 'id_player', 'scout_fc', 'scout_fs', 'scout_pi', 'scout_ff', 'scout_a', 'scout_ds', 'scout_de', 'scout_gs', 'scout_fd', 'scout_sg', 'scout_ca', 'scout_ft', 'scout_g', 'scout_pc', 'scout_ps', 'scout_pp', 'scout_i', 'scout_dp', 'scout_gc', 'scout_cv', 'turn', 'visitor_id', 'home_id','home_goal', 'visitor_goal']]
        return df_scouts

    def __adiciona_coluna_casa__(self, df_scouts):
        df_scouts['CASA'] = df_scouts.apply(lambda row : self.is_home(row['home_id'], row['id_club']), axis = 1)
        return df_scouts

    def is_home(self, home_id, id_club):
        if home_id == id_club:
            return 1
        else:
            return 0

    def __adiciona_coluna_home_clube__(self, df_scouts, df_club):
        df_club = df_club[['id_club', 'name']]
        df_club.columns = ['home_id', 'time_casa']
        df_scouts = pandas.merge(df_scouts, df_club, how='left', on=['home_id'])
        return df_scouts

    def __adiciona_coluna_visitor_clube__(self, df_scouts, df_club):
        df_club = df_club[['id_club', 'name']]
        df_club.columns = ['visitor_id', 'time_visitante']
        df_scouts = pandas.merge(df_scouts, df_club, how='left', on=['visitor_id'])
        df_club.columns = ['id_club', 'time']
        df_scouts = pandas.merge(df_scouts, df_club, how='left', on=['id_club'])
        return df_scouts

    def __adiciona_coluna_adversario__(self, df_scouts):
        df_scouts['adversario'] = df_scouts.apply(lambda row : self.__time_adversario__(row['time_casa'], row['time_visitante'], row['time']), axis = 1)
        return df_scouts
    
    def __time_adversario__(self, time_casa, time_visitante,time):
        if time == time_casa:
            return time_visitante
        else:
            return time_casa

    def cria_dataframe_pontuacao_conquistada(self, scouts, clubs, df_next_matches):
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_matches, clubs)
        df_conquistados = self.cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado(scouts, df_next_matches_com_clubes)
        df_conquistados['cedidos_mais_conquistados'] = df_conquistados['pontos_cedidos']+ df_conquistados['pontos_conquistados']
        return df_conquistados

    def __adiciona_clubes_nas_proximas_partidas__(self, df_next_matches, df_club: pandas.DataFrame):
        df_club_aux = df_club[['id_club', 'name']]
        df_club_aux.columns = ['home_id', 'mandante']
        df_next_matches = pandas.merge(df_next_matches, df_club_aux, how='left', on=['home_id'])

        df_club_aux.columns = ['visitor_id', 'visitante']
        df_next_matches = pandas.merge(df_next_matches, df_club_aux, how='left', on=['visitor_id'])
        return df_next_matches

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

    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_mando_agrupado__(self, df_scouts, sumarization_type='mean'):
        df_scouts_played = self.cria_dataframe_scouts_played(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['time', 'id_position', 'CASA']).agg({'points':sumarization_type}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_mando_agrupado

    def __cria_dataframe_pontuacao_cedida_por_time_posicao_mando_agrupado__(self, df_scouts, sumarization_type='mean'):
        df_scouts_played = self.cria_dataframe_scouts_played(df_scouts)
        df_pontuacao_cedida_por_time_posicao_mando_agrupado = df_scouts_played.groupby(['adversario', 'id_position', 'CASA']).agg({'points':sumarization_type}).reset_index()
        df_pontuacao_cedida_por_time_posicao_mando_agrupado.columns = ['time','id_position', 'CASA','pontos_cedidos']
        return df_pontuacao_cedida_por_time_posicao_mando_agrupado

    def cria_dataframe_scouts_played(self, df_scouts):
        return df_scouts[df_scouts['has_played'] == True]

    def cria_dataframe_pontuacao_cedida(self, df_scouts, df_club, df_next_matches):
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_matches, df_club)
        df_cedidos = self.cria_dataframe_pontuacao_cedida_por_time_mando_posicao_agrupado(df_scouts, df_next_matches_com_clubes)
        df_cedidos['cedidos_mais_conquistados'] = df_cedidos['pontos_cedidos'] + df_cedidos['pontos_conquistados']
        return df_cedidos

    def cria_dataframe_pontuacao_cedida_por_time_mando_posicao_agrupado(self, df_scouts, df_next_matches_com_clubes):
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

    def cria_dataframe_pontuacao(self, df_scouts):
        df_pontuacao_casa = df_scouts[df_scouts['CASA']==1].groupby(['id_player','time', 'id_club', 'id_position']).agg({'points':'sum', 'has_played':'sum'}).reset_index()
        df_pontuacao_fora = df_scouts[df_scouts['CASA']==0].groupby(['id_player', 'time', 'id_club', 'id_position']).agg({'points':'sum', 'has_played':'sum'}).reset_index()
        df_pontuacao_casa.columns=['id_player','time', 'id_club', 'id_position', 'points_casa', 'has_played_casa']
        df_pontuacao_fora.columns=['id_player','time','id_club', 'id_position', 'points_fora', 'has_played_fora']
        df_pontuacao = pandas.merge(df_pontuacao_casa, df_pontuacao_fora, how='outer', on=['id_player','time','id_club','id_position'])
        df_pontuacao.fillna(0, inplace=True)
        df_pontuacao['total_pontos']=df_pontuacao['points_fora']+df_pontuacao['points_casa']
        df_pontuacao['total_jogos']=df_pontuacao['has_played_casa']+df_pontuacao['has_played_fora']
        
        df_nickname = df_scouts[['id_player', 'nickname']]
        df_nickname['nickname'] = df_nickname['nickname'].str.strip()
        df_nickname = df_nickname.drop_duplicates(keep='first', subset=['id_player'])
        
        df_pontuacao = pandas.merge(df_pontuacao, df_nickname, on=['id_player'], how='left')
        df_pontuacao = df_pontuacao[['id_player', 'nickname','time', 'id_club', 'id_position', 'points_casa',\
                                    'has_played_casa', 'points_fora', 'has_played_fora', 'total_pontos',\
                                    'total_jogos']]
        

        df_pontuacao['media_geral']=df_pontuacao['total_pontos']/df_pontuacao['total_jogos']
        df_pontuacao['media_casa']=df_pontuacao['points_casa']/df_pontuacao['has_played_casa']
        df_pontuacao['media_fora']=df_pontuacao['points_fora']/df_pontuacao['has_played_fora']

        return df_pontuacao

    def cria_dataframe_mandante_x_visitante(self, df_scouts, df_club, df_next_matches):
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

    def __cria_dataframe_pontuacao_conquistada_por_time_posicao_agrupado__(self, df_scouts, sumarization_type='mean'):
        df_scouts_played = self.cria_dataframe_scouts_played(df_scouts)
        df_pontuacao_conquistada_por_time_posicao_agrupado = df_scouts_played.groupby(['time', 'id_position']).agg({'points':sumarization_type}).reset_index()
        df_pontuacao_conquistada_por_time_posicao_agrupado.columns = ['time','id_position', 'pontos_conquistados']
        return df_pontuacao_conquistada_por_time_posicao_agrupado

    def __cria_dataframe_pontuacao_cedida_por_time_posicao_agrupado__(self, df_scouts, sumarization_type='mean'):
        df_scouts_played = self.cria_dataframe_scouts_played(df_scouts)
        df_pontuacao_cedida_por_time_posicao_agrupado = df_scouts_played.groupby(['adversario', 'id_position']).agg({'points':sumarization_type}).reset_index()
        df_pontuacao_cedida_por_time_posicao_agrupado.columns = ['time','id_position', 'pontos_cedidos']
        return df_pontuacao_cedida_por_time_posicao_agrupado

    def cria_dataframe_cedidos_mais_conquistados(self, df):
        df['cedidos_mais_conquistados'] = df['pontos_cedidos'] + df['pontos_conquistados']
        return df

    def cria_dataframe_visitante_x_mandante(self, df_scouts, df_club, df_next_matches):
        df_next_matches_com_clubes = self.__adiciona_clubes_nas_proximas_partidas__(df_next_matches, df_club)
        df_visitante_x_mandante = self.cria_dataframe_pontuacao_conquistada_visitante_x_mandante(df_scouts, df_next_matches_com_clubes)
        return df_visitante_x_mandante

    def cria_dataframe_pontuacao_conquistada_visitante_x_mandante(self, df_scouts, df_next_matches_com_clubes):
        df_visitante_x_mandante = pandas.DataFrame()

        for index, row in df_next_matches_com_clubes.iterrows():
            time_mandante = row['mandante']
            time_visitante = row['visitante']

            df_pontuacao_conquistada_por_time_posicao_agrupado = self.__cria_dataframe_pontuacao_conquistada_por_time_posicao_agrupado__(df_scouts)
            df_pontuacao_conquistada_por_time_posicao_agrupado_aux = df_pontuacao_conquistada_por_time_posicao_agrupado[df_pontuacao_conquistada_por_time_posicao_agrupado['time']==time_visitante]
            df_pontuacao_conquistada_por_time_posicao_agrupado_aux.columns = ['visitante', 'id_position', 'pontos_conquistados']

            df_pontuacao_cedida_por_time_posicao_agrupado = self.__cria_dataframe_pontuacao_cedida_por_time_posicao_agrupado__(df_scouts)
            df_pontuacao_cedida_por_time_posicao_agrupado_aux = df_pontuacao_cedida_por_time_posicao_agrupado[df_pontuacao_cedida_por_time_posicao_agrupado['time']==time_mandante]
            df_pontuacao_cedida_por_time_posicao_agrupado_aux.columns = ['mandante', 'id_position', 'pontos_cedidos']

            df_cedidos_vs_conquistados_por_time_posicao_agrupado = pandas.merge(df_pontuacao_conquistada_por_time_posicao_agrupado_aux,df_pontuacao_cedida_por_time_posicao_agrupado_aux, on=['id_position'], how='left')

            df_visitante_x_mandante = df_visitante_x_mandante.append(df_cedidos_vs_conquistados_por_time_posicao_agrupado, ignore_index = True)
        
        return df_visitante_x_mandante
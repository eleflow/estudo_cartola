import pandas

class Score:

    def cria_dataframe_pontuacao(self, matches, scouts, clubs):
        df_scouts = self.realiza_merge_entre_partidas_scouts_clube(matches, scouts, clubs)

        df_pontuacao_casa = df_scouts[df_scouts['CASA']==1].groupby(['id_player','time', 'id_club', 'id_position']).agg({'points':'sum', 'has_played':'sum'}).reset_index()
        df_pontuacao_fora = df_scouts[df_scouts['CASA']==0].groupby(['id_player', 'time', 'id_club', 'id_position']).agg({'points':'sum', 'has_played':'sum'}).reset_index()
        df_pontuacao_casa.columns=['id_player','time', 'id_club', 'id_position', 'points_casa', 'has_played_casa']
        df_pontuacao_fora.columns=['id_player','time','id_club', 'id_position', 'points_fora', 'has_played_fora']
        df_pontuacao = pandas.merge(df_pontuacao_casa, df_pontuacao_fora, how='outer', on=['id_player','time','id_club','id_position'])
        df_pontuacao.fillna(0, inplace=True)
        df_pontuacao['total_pontos']=df_pontuacao['points_fora']+df_pontuacao['points_casa']
        df_pontuacao['total_jogos']=df_pontuacao['has_played_casa']+df_pontuacao['has_played_fora']

        df_pontuacao['media_geral']=df_pontuacao['total_pontos']/df_pontuacao['total_jogos']
        df_pontuacao['media_casa']=df_pontuacao['points_casa']/df_pontuacao['has_played_casa']
        df_pontuacao['media_fora']=df_pontuacao['points_fora']/df_pontuacao['has_played_fora']

        return df_pontuacao
    
    def realiza_merge_entre_partidas_scouts_clube(self, matches, scouts, clubs):
        df_match = pandas.DataFrame.from_dict(matches)
        df_scouts = pandas.DataFrame.from_dict(scouts)
        df_club = pandas.DataFrame.from_dict(clubs)

        df_match = self.__aplica_transformacoes_dataframe_partidas__(df_match)

        df_scouts = self.__adiciona_coluna_home_partida__(df_match, df_scouts)
        df_scouts = self.__adiciona_coluna_visitor_partida__(df_match, df_scouts)
        df_scouts = self.__organizacao_colunas_apos_criacao_visitor_home__(df_scouts)
        df_scouts = self.__adiciona_coluna_casa__(df_scouts)
        df_scouts = self.__adiciona_coluna_home_clube__(df_scouts, df_club)
        df_scouts = self.__adiciona_coluna_visitor_clube__(df_scouts, df_club)
        df_scouts = self.__adiciona_coluna_adversario__(df_scouts)
        return df_scouts

    def __aplica_transformacoes_dataframe_partidas__(self, df_match):
        df_match['diff_goals'] = df_match['home_goal'] - df_match['visitor_goal']
        df_match['vencedor'] = df_match['diff_goals'].map(self.__vencedor__)
        df_match['datetime'] = pandas.to_datetime(df_match['date'])
        return df_match
    
    def __vencedor__(self, diff):
        if diff > 0:
            return 'CASA'
        elif diff == 0:
            return 'EMPATE'
        else:
            return 'VISITANTE'
    
    def __adiciona_coluna_home_partida__(self, df_match, df_scouts):
        df_match.columns = ['match_id', 'turn', 'home_id', 'id_club', 'date', 'timestamp', 'local', 'valid', 'home_goal', 'visitor_goal', 'year', 'diff_goals', 'vencedor', 'datetime']
        df_scouts = pandas.merge(df_scouts, df_match, how='left', on=['turn', 'id_club'])
        return df_scouts

    def __adiciona_coluna_visitor_partida__(self, df_match, df_scouts):
        df_match.columns = ['match_id', 'turn', 'id_club', 'visitor_id', 'date', 'timestamp', 'local', 'valid', 'home_goal', 'visitor_goal', 'year', 'diff_goals', 'vencedor', 'datetime']
        df_scouts = pandas.merge(df_scouts, df_match, how = 'left', on = ['turn', 'id_club'])
        return df_scouts
    
    def __organizacao_colunas_apos_criacao_visitor_home__(self, df_scouts):
        df_scouts.head()
        df_scouts['home_id'].fillna(df_scouts['id_club'], inplace= True)
        df_scouts['visitor_id'].fillna(df_scouts['id_club'], inplace= True)
        df_scouts['home_goal_x'].fillna(df_scouts['home_goal_y'], inplace= True)
        df_scouts['visitor_goal_x'].fillna(df_scouts['visitor_goal_y'], inplace= True)
        df_scouts['home_goal'] = df_scouts['home_goal_x']
        df_scouts['visitor_goal'] = df_scouts['visitor_goal_x'] 
        df_scouts = df_scouts[['nickname', 'points', 'id_position', 'id_club', 'has_played',\
            'id_player', 'scout_fc', 'scout_fs', 'scout_pi', 'scout_ff', 'scout_a',\
            'scout_ds', 'scout_de', 'scout_gs', 'scout_fd', 'scout_sg', 'scout_ca',\
            'scout_ft', 'scout_g', 'scout_pc', 'scout_ps', 'scout_pp', 'scout_i',\
            'scout_dp', 'scout_gc', 'scout_cv', 'turn', 'visitor_id',\
            'home_id','home_goal', 'visitor_goal']]
        
        return df_scouts
    
    def __adiciona_coluna_casa__(self, df_scouts):
        df_scouts['CASA'] = df_scouts.apply(lambda row : self.__is_home__(row['home_id'], row['id_club']), axis = 1)
        return df_scouts
    
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
    
    def __is_home__(self, home_id, id_club):
        if home_id == id_club:
            return 1
        else:
            return 0
        
    def __time_adversario__(self, time_casa, time_visitante,time):
        if time == time_casa:
            return time_visitante
        else:
            return time_casa
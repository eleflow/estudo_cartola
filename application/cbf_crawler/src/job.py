# -*- coding: utf-8 -*-

import psycopg2
import os
import sys
import yaml
from datetime import date, datetime

from crawler.crawl import Crawl

CONFIG = os.path.join(os.path.dirname(__file__), 'config.yaml')

class Job:

    def start(self):
        self.save_next_game()
        self.refactor_broken_data()

    def save_next_game(self):
        year, match = self.get_year_match()
        match = match + 1
        self.validate(year, match)
        self.crawl_game_data(year, match)

    def refactor_broken_data(self):
        self.connect_to_database()
        matches = self.find_broken_data()
        for year, match in matches:
            self.crawl_game_data_and_update(year, match)

    def crawl_game_data_and_update(self, year, match):
        try:
            crawl = Crawl(year, match)
            game = crawl.get_game()
            if (not game['home_goal'] or not game['visitor_goal']):
                return
            self.update(game)
            print(f'Jogo {match} atualizado com sucesso!')
        except:
            exc_type, exc_value, exc_traceback = sys.exc_info()
            print("Erro ao capturar partida:", exc_value)
    
    def crawl_game_data(self, year, match):
        try:
            crawl = Crawl(year, match)
            game = crawl.get_game()
            self.validate_game_date(game)
            self.save(game)
            print(f'Jogo {match} salvo com sucesso!')
        except:
            exc_type, exc_value, exc_traceback = sys.exc_info()
            print(exc_value)

    def validate_game_date(self, game):
        months = {'Janeiro': 1, 'Fevereiro': 2, 'Março': 3, 'Abril': 4, 'Maio': 5, 'Junho': 6, 'Julho': 7, 'Agosto': 8, 'Setembro': 9, 'Outubro': 10, 'Novembro': 11, 'Dezembro': 12}
        strDate = game['date'].split(' ')
        day = int(strDate[1])
        month = int(months[strDate[3]])
        year = int(strDate[5])

        if(datetime.now() < datetime(year, month, day)):
            raise Exception('future_game', 'Esse jogo ainda nao aconteceu') 

    def save(self, game):
        print(game)
        self.connect_to_database()
        self.insert_game(game)
        self.close_database_connection()

    def update(self, game):
        print(game)
        self.connect_to_database()
        self.update_game(game)
        self.close_database_connection()

    def insert_game(self, game):
        cur = self.con.cursor()			
        query = "INSERT INTO match VALUES(%(match)s, %(turn)s, %(year)s, %(date)s, %(hour)s, %(local)s, %(home_id)s, %(home)s, %(home_goal)s, %(home_players_goals)s, %(visitor_players_goals)s, %(visitor_goal)s, %(visitor)s, %(visitor_id)s, %(referee)s, %(referee_category)s)"
        cur.execute(query, game)
        self.con.commit()

    def update_game(self, game):
        cur = self.con.cursor()			
        query = "UPDATE match SET %(home_goal)s, %(home_players_goals)s, %(visitor_players_goals)s, %(visitor_goal)s, %(referee)s, %(referee_category)s WHERE year = %(year)s and match = %(match)s and turn = %(turn)s"
        cur.execute(query, game)
        self.con.commit()

    def validate(self, year, match):
        current_year = date.today().year
        if (year != current_year):
            raise Exception('invalid_year', f'O ano {year} é diferente do ano atual da temporada')

        if(match < 1 or match > 380):
            raise Exception('invalid_match_value', f'Existem partidas entre os números 1 à 380. O valor {match} está fora desse intervalo')

    def get_year_match(self):
        self.connect_to_database()
        year_match = self.find_last_data()
        self.close_database_connection()

        return year_match

    def connect_to_database(self):
        with open(CONFIG) as yamlfile:
            config_data = yaml.load(yamlfile, Loader=yaml.FullLoader)
        
        host = config_data['postgres']['host']
        database = config_data['postgres']['database']
        user = config_data['postgres']['user']
        password = config_data['postgres']['password']

        self.con = psycopg2.connect(host=host, database=database, user=user, password=password)
    
    def find_last_data(self):
        cur = self.con.cursor()
        cur.execute('''
            SELECT m.year, m.match
            FROM match m
            ORDER BY m.year desc, m.match DESC
            LIMIT 1''')

        recset = cur.fetchall()

        for rec in recset:
            year_match = rec

        return year_match

    def find_broken_data(self):
        cur = self.con.cursor()
        cur.execute('''
            SELECT m.year, m.match
            FROM match m
            where m.home_goal is null or m.visitor_goal is null
            ''')

        recset = cur.fetchall()

        year_matches = []
        for rec in recset:
            year_matches.append(rec)

        return year_matches

    def close_database_connection(self):
        self.con.close()

job = Job()
job.start()
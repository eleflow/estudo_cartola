# -*- coding: utf-8 -*-

import psycopg2
import os
import sys
import yaml
from datetime import date

from crawler.crawl import Crawl

CONFIG = os.path.join(os.path.dirname(__file__), 'config.yaml')

class Job:

    def start(self):
        year, match = self.get_year_match()
        match = match + 1
        self.validate(year, match)
        try:
            crawl = Crawl(year, match)
            game = crawl.get_game()
            self.save(game)
            print("Jogo salvo com sucesso!")
        except:
            print("Erro ao capturar partida:", sys.exc_info()[0])

    def save(self, game):
        print(game)
        self.connect_to_database()
        self.insert_game(game)
        self.close_database_connection()

    def insert_game(self, game):
        cur = self.con.cursor()			
        query = "INSERT INTO match VALUES(%(match)s, %(turn)s, %(year)s, %(date)s, %(hour)s, %(local)s, %(home_id)s, %(home)s, %(home_goal)s, %(home_players_goals)s, %(visitor_players_goals)s, %(visitor_goal)s, %(visitor)s, %(visitor_id)s, %(referee)s, %(referee_category)s)"
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

    def close_database_connection(self):
        self.con.close()

job = Job()
job.start()
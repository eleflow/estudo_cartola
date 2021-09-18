# -*- coding: utf-8 -*-

import unittest
import os
from src.crawler.crawler import Crawler
from bs4 import BeautifulSoup

GAME = os.path.join(os.path.dirname(__file__), 'game.html')
POSTPONED_GAME = os.path.join(os.path.dirname(__file__), 'postponed_game.html')

class CrawlerTestSuite(unittest.TestCase):

    def test_game(self):
        cartola_clubs = {
            "Flamengo - RJ": { "globo_id": 262 },
            "Sport - PE": { "globo_id": 292 }
        }

        with open(GAME) as filename:
            game = BeautifulSoup(filename.read(), features="html.parser")

        self.crawler = Crawler(game, 2021, 151, cartola_clubs)

        game_dict = {'match': 151, 'turn': 16, 'year': 2021, 'date': 'Domingo 15 de Agosto de 2021', 'hour': '16:00', 'local': 'Raulino de Oliveira - Volta Redonda - RJ', 'home_id': 262, 'home': 'Flamengo - RJ', 'home_goal': '2', 'home_players_goals': [' Bruno Henrique 10 (1ºT)', ' Everton Ribeiro 1 (2ºT)'], 'visitor_players_goals': [], 'visitor_goal': '0', 'visitor': 'Sport - PE', 'visitor_id': 292, 'referee': 'Raphael Claus', 'referee_category': 'FIFA'}
        self.assertEqual(game_dict, self.crawler.to_dict())

    def test_postponed_game(self):
        cartola_clubs = {
            "Flamengo - RJ": { "globo_id": 262 },
            "Atlético - GO": { "globo_id": 373 }
        }

        with open(POSTPONED_GAME) as filename:
            game = BeautifulSoup(filename.read(), features="html.parser")

        self.crawler = Crawler(game, 2021, 181, cartola_clubs)

        game_dict = {'match': 181, 'turn': 19, 'year': 2021, 'date': 'Sexta 05 de Novembro de 2021', 'hour': '21:30', 'local': 'Maracanã - Rio de Janeiro - RJ', 'home_id': 262, 'home': 'Flamengo - RJ', 'home_goal': None, 'home_players_goals': [], 'visitor_players_goals': [], 'visitor_goal': None, 'visitor': 'Atlético - GO', 'visitor_id': 373, 'referee': 'Sem escalação no momento', 'referee_category': 'A definir'}
        self.assertEqual(game_dict, self.crawler.to_dict())
# -*- coding: utf-8 -*-

import unittest
import os
from src.crawler.crawler import Crawler
from bs4 import BeautifulSoup

GAME = os.path.join(os.path.dirname(__file__), 'game.html')

class CrawlerTestSuite(unittest.TestCase):

    def setUp(self):
        cartola_clubs = {
            "Flamengo - RJ": { "globo_id": 262 },
            "Sport - PE": { "globo_id": 292 }
        }

        with open(GAME) as filename:
            game = BeautifulSoup(filename.read(), features="html.parser")


        self.crawler = Crawler(game, 2021, 151, cartola_clubs)

    def test_game(self):
        game_dict = {'match': 151, 'turn': 16, 'year': 2021, 'date': 'Domingo 15 de Agosto de 2021', 'hour': '16:00', 'local': 'Raulino de Oliveira - Volta Redonda - RJ', 'home_id': 262, 'home': 'Flamengo - RJ', 'home_goal': '2', 'home_players_goals': [' Bruno Henrique 10 (1ºT)', ' Everton Ribeiro 1 (2ºT)'], 'visitor_players_goals': [], 'visitor_goal': '0', 'visitor': 'Sport - PE', 'visitor_id': 292, 'referee': 'Raphael Claus', 'referee_category': 'FIFA'}
        self.assertEqual(game_dict, self.crawler.to_dict())
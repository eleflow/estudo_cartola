import requests
from bs4 import BeautifulSoup

from .crawler import Crawler

class Crawl:

    def __init__(self, year, match):
        page_game = requests.get(f'https://www.cbf.com.br/futebol-brasileiro/competicoes/campeonato-brasileiro-serie-a/{year}/{match}')
        game = BeautifulSoup(page_game.content, 'html.parser')
        self.crawler = Crawler(game, year, match, self.get_cartola_clubs())

    def get_game(self):
        return self.crawler.to_dict()

    def get_cartola_clubs(self):
        return {
            "Fluminense - RJ": { "globo_id": 266 },
            "Atlético - MG": { "globo_id": 282 },
            "Grêmio - RS": { "globo_id": 284 },
            "São Paulo - SP": { "globo_id": 276 },
            "Vasco da Gama - RJ": { "globo_id": 267 },
            "Corinthians - SP": { "globo_id": 264 },
            "Botafogo - RJ": { "globo_id": 296 },
            "Santos - SP": { "globo_id": 277 },
            "Cruzeiro - MG": { "globo_id": 283 },
            "Internacional - RS": { "globo_id": 285 },
            "Flamengo - RJ": { "globo_id": 262 },
            "Náutico - PE": { "globo_id": 343 },
            "Coritiba - PR": { "globo_id": 294 },
            "Ponte Preta - SP": { "globo_id": 303 },
            "Bahia - BA": { "globo_id": 265 },
            "Portuguesa - SP": { "globo_id": 278 },
            "Sport - PE": { "globo_id": 292 },
            "Palmeiras - SP": { "globo_id": 275 },
            "Atlético - GO": { "globo_id": 373 },
            "Figueirense - SC": { "globo_id": 316 },
            "Atlético Paranaense - PR": { "globo_id": 293 },
            "Vitória - BA": { "globo_id": 287 },
            "Goiás - GO": { "globo_id": 290 },
            "Criciuma - SC": { "globo_id": 288 },
            "Atletico - PR": { "globo_id": 293 },
            "Chapecoense - SC": { "globo_id": 315 },
            "Atlético - PR": { "globo_id": 293 },
            "Avaí - SC": { "globo_id": 314 },
            "Joinville - SC": { "globo_id": 317 },
            "Santa Cruz - PE": { "globo_id": 344 },
            "América - MG": { "globo_id": 327 },
            "Athletico Paranaense - PR": { "globo_id": 293 },
            "Ceará - CE": { "globo_id": 354 },
            "America Fc - MG": { "globo_id": 327 },
            "Paraná - PR": { "globo_id": 289 },
            "Fortaleza - CE": { "globo_id": 356 },
            "Csa - AL": { "globo_id": 341 },
            "Red Bull Bragantino - SP": { "globo_id": 280 },
            "Atlético Mineiro - MG": { "globo_id": 282 },
            "Juventude - RS": { "globo_id": 286 },
            "Cuiabá - MT": { "globo_id": 1371 },
            "America - MG": { "globo_id": 327 }
        }
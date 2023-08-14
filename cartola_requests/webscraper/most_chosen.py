import re
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

from cartola_requests.config import Config
from cartola_requests.model.chosen import Chosen
from cartola_requests.requesters.requester import Requester

class MostChosen:

    def __init__(self) -> None:
        self.config = Config.instance()
        self.turn = Requester().last_turn()

    def most_chosen(self):
        service = Service(executable_path=r"/usr/local/bin/chromedriver")
        options = webdriver.ChromeOptions()
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        options.add_experimental_option("excludeSwitches", ["enable-automation"])
        options.add_experimental_option('useAutomationExtension', False)
        browser = webdriver.Chrome(service=service, options=options)
        browser.get(self.config.get_mais_escalados_uri())
        html = browser.page_source
        soup = BeautifulSoup(html, 'html.parser')
        div = soup.find(id="gmListaTitulares")

        elements = div.find_all("div", class_="GM-FICHA-JOGADOR-box")

        browser.close()

        return [self.__build_chosen__(element).asdict() for element in elements]

    def __build_chosen__(self, element) -> Chosen:
        name = element.find("h4", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__nome").text
        position = element.find("span", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__posicao").text
        club = element.find("span", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__time").text
        rank_str = element.find("div", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__rank").text
        rank = int(re.findall(r"\d+", rank_str)[0])
        
        return Chosen(name, position, club, rank, self.turn)
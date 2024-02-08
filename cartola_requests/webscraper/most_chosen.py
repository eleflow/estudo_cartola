import re
import datetime
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.service import Service

from cartola_requests.config import Config
from cartola_requests.model.chosen import Chosen, ChosenBuilder
from cartola_requests.requesters.requester import Requester

class MostChosen:

    def __init__(self) -> None:
        self.config = Config.instance()
        self.turn = Requester().last_turn()
        self.year = datetime.date.today().year

    def most_chosen(self):
        service = Service(executable_path=r"/usr/local/bin/chromedriver")
        #service = Service(executable_path=r"./chromedriver") # Modo debug
        options = webdriver.ChromeOptions()
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        options.add_experimental_option("excludeSwitches", ["enable-automation"])
        options.add_experimental_option('useAutomationExtension', False)
        browser = webdriver.Chrome(service=service, options=options)
        browser.get(self.config.get_mais_escalados_uri())
        html = browser.page_source
        browser.close()
        soup = BeautifulSoup(html, 'html.parser')
        elements = soup.select(".GM-FICHA-JOGADOR-box")

        return [self.__build_chosen__(element).asdict() for element in elements[0:11]]

    def __build_chosen__(self, element) -> Chosen:
        athlete_id = str(int(''.join(filter(str.isdigit, element.get("id")))))
        name = element.find("h4", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__nome").text
        position = element.find("span", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__posicao").text
        club = element.find("span", class_="GM-FICHA-JOGADOR-box__header-dados-jogador__time").text
        price = element.findAll("span", {"class" : "GM-FICHA-JOGADOR-box__header-dados-jogador__numeros__detalhes__valor"})[0].text
        escalations = element.findAll("span", {"class" : "GM-FICHA-JOGADOR-box__header-dados-jogador__numeros__detalhes__valor"})[1].text
        club_id = ""
        shield = ""
        picture = ""#element.find("div", class_="GM-FICHA-JOGADOR-box__header-foto-jogador").url
        
        return (
            ChosenBuilder()
                .name(name)
                .position(position)
                .club_name(club)
                .escalations(escalations)
                .short_position(position)
                .short_club(club)
                .club_name(club)
                .club_id(club_id)
                .shield(shield)
                .nickname(name)
                .short_nickname(name)
                .picture(picture)
                .athlete_id(athlete_id)
                .price(price)
                .turn(self.turn)
                .year(self.year)
                .build()
            )
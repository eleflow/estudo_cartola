import datetime
import json
import requests

from airflow.cartola_api.requester import Requester
from airflow.cartola_api.model.club import ClubBuilder

class ClubsRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "partidas"
        self.dictionary_key = "clubes"

    def clubs(self):
        clubs_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}')
        clubs_json = json.loads(clubs_page.content)
        clubs_dict = clubs_json[self.dictionary_key]

        clubs = []
        year = datetime.date.today().year

        for id in clubs_dict:
            club = self.__build_club__(clubs_dict[id], year)
            clubs.append(club.asdict())

        return clubs
    
    def __build_club__(self, club, year):
        return ClubBuilder() \
                    .id(club['id']) \
                    .name(club['nome']) \
                    .initials(club['abreviacao']) \
                    .year(year) \
                    .build()
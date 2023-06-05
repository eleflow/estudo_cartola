import datetime
import json
import requests

from cartola_requests.model.club import Club, ClubBuilder
from cartola_requests.requesters.requester import Requester

class ClubsRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "partidas"
        self.dictionary_key = "clubes"

    def clubs(self):
        clubs_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}')
        clubs_json = json.loads(clubs_page.content)
        clubs_dict = clubs_json[self.dictionary_key]

        year = datetime.date.today().year

        return [self.__build_club__(clubs_dict[id], year) for id in clubs_dict]
    
    def __build_club__(self, club, year):
        return (ClubBuilder()
                    .id(club[Club.ID])
                    .name(club[Club.NAME])
                    .initials(club[Club.INITIALS])
                    .year(year)
                    .build()).to_save()
import datetime
import json
import requests

from airflow.cartola_api.requester import Requester
from airflow.cartola_api.model.athlete import Athlete, AthleteBuilder

class AthleteRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "atletas/pontuados"
        self.dictionary_key = "atletas"
    
    def athlete(self):
        athletes_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}')
        athletes_json = json.loads(athletes_page.content)
        athletes_dict = athletes_json[self.dictionary_key]

        year = datetime.date.today().year

        return [self.__build_athlete__(id, athletes_dict[id], year) for id in athletes_dict]

    def __build_athlete__(self, id, athlete, year):
        return (AthleteBuilder()
                    .id(id)
                    .scouts(athlete[Athlete.scout])
                    .nickname(athlete[Athlete.nickname])
                    .picture(athlete[Athlete.picture])
                    .points(athlete[Athlete.points])
                    .position_id(athlete[Athlete.position_id])
                    .club_id(athlete[Athlete.club_id])
                    .played_the_game(athlete[Athlete.played_the_game])
                    .year(year)
                    .build()).asdict()
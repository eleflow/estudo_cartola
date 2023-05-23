import datetime
import json
import logging
import requests

from airflow.cartola_api.model.athlete import Athlete, AthleteBuilder
from airflow.cartola_api.requesters.requester import Requester

logger = logging.getLogger(__name__)


class AthleteRequester(Requester):
    
    def __init__(self, turn) -> None:
        super().__init__()
        self.endpoint = "atletas/pontuados"
        self.dictionary_key = "atletas"
        self.turn = turn
    
    def athletes(self):
        athletes_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}/{self.turn}')
        athletes_json = json.loads(athletes_page.content)
        try:
            athletes_dict = athletes_json[self.dictionary_key]
        except Exception:
            logger.error("Is not possible to find athletes for this turn")
            return []

        year = datetime.date.today().year

        return [self.__build_athlete__(id, athletes_dict[id], year) for id in athletes_dict]

    def __build_athlete__(self, athlete_id, athlete, year):
        return (AthleteBuilder()
                    .id(athlete_id)
                    .scouts(athlete[Athlete.scout])
                    .nickname(athlete[Athlete.nickname])
                    .picture(athlete[Athlete.picture])
                    .points(athlete[Athlete.points])
                    .position_id(athlete[Athlete.position_id])
                    .club_id(athlete[Athlete.club_id])
                    .played_the_game(athlete[Athlete.played_the_game])
                    .year(year)
                    .build()).asdict()
import datetime
import json
import logging
import requests

from cartola_requests.model.athlete import Athlete, AthleteBuilder
from cartola_requests.requesters.requester import Requester

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
                    .turn(self.turn)
                    .scouts(athlete[Athlete.SCOUT])
                    .nickname(athlete[Athlete.NICKNAME])
                    .picture(athlete[Athlete.PICTURE])
                    .points(athlete[Athlete.POINTS])
                    .position_id(athlete[Athlete.POSITION_ID])
                    .club_id(athlete[Athlete.CLUB_ID])
                    .has_played(athlete[Athlete.HAS_PLAYED])
                    .year(year)
                    .build()).to_save()
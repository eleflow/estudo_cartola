import datetime
import json
import requests

from cartola_requests.model.chosen import Chosen, ChosenBuilder
from cartola_requests.requesters.requester import Requester

class ChosenRequester(Requester):

    def __init__(self, turn) -> None:
        super().__init__()
        self.endpoint = "mercado/destaques"
        self.turn = turn
    
    def most_chosen(self):
        chosen_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}')
        chosen_json = json.loads(chosen_page.content)
        year = datetime.date.today().year

        return [self.__build_chosen__(chosen, self.turn, year) for chosen in chosen_json]
    
    def __build_chosen__(self, chosen, turn, year):
        return (ChosenBuilder()
                    .position(chosen[Chosen.POSITION])
                    .short_position(chosen[Chosen.SHORT_POSITION])
                    .short_club(chosen[Chosen.SHORT_CLUB])
                    .club_name(chosen[Chosen.CLUB_NAME])
                    .club_id(chosen[Chosen.CLUB_ID])
                    .shield(chosen[Chosen.SHIELD])
                    .name(chosen[Chosen.ATHLETE][Chosen.NAME])
                    .nickname(chosen[Chosen.ATHLETE][Chosen.NICKNAME])
                    .short_nickname(chosen[Chosen.ATHLETE][Chosen.SHORT_NICK])
                    .picture(chosen[Chosen.ATHLETE][Chosen.PICTURE])
                    .athlete_id(chosen[Chosen.ATHLETE][Chosen.ATHLETE_ID])
                    .price(chosen[Chosen.ATHLETE][Chosen.PRICE])
                    .escalations(chosen[Chosen.ESCALATIONS])
                    .turn(turn)
                    .year(year)
                    .build()).to_save()
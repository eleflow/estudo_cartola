import datetime
import json
import requests

from airflow.cartola_api.requester import Requester
from airflow.cartola_api.model.match import MatchBuilder

class MatchesRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "partidas"
    
    def matches(self):
        last_turn = self.last_turn()

        year = datetime.date.today().year
        matches = []
        
        for turn in range(1, last_turn):
            turn_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}/{turn}')
            turn_json = json.loads(turn_page.content)
            turn_matches = turn_json[self.endpoint]
            
            for match_data in turn_matches:
                match = self.build_match(match_data, turn, year)
                matches.append(match.asdict())
        
        print(f">>>> {matches}")
        return matches
    
    def build_match(self, match_data, turn, year):
        return MatchBuilder() \
                    .match_id(match_data['partida_id']) \
                    .turn(turn) \
                    .home_id(match_data['clube_casa_id']) \
                    .visitor_id(match_data['clube_visitante_id']) \
                    .date(match_data['partida_data']) \
                    .timestamp(match_data['timestamp']) \
                    .local(match_data['local']) \
                    .valid(match_data['valida']) \
                    .home_goal(match_data['placar_oficial_mandante']) \
                    .visitor_goal(match_data['placar_oficial_visitante']) \
                    .year(year) \
                    .build()
import datetime
import json
import requests

from airflow.cartola_api.requester import Requester
from airflow.cartola_api.model.match import Match, MatchBuilder

class MatchesRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "partidas"
        self.dictionary_key = "partidas"
    
    def matches(self):
        last_turn = self.last_turn()

        year = datetime.date.today().year
        matches = []
        
        for turn in range(1, last_turn):
            turn_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}/{turn}')
            turn_json = json.loads(turn_page.content)
            turn_matches = turn_json[self.dictionary_key]
            
            for match_data in turn_matches:
                match = self.__build_match__(match_data, turn, year)
                matches.append(match.asdict())

        return matches
    
    def __build_match__(self, match_data, turn, year):
        return (MatchBuilder()
                    .match_id(match_data[Match.match_id])
                    .turn(turn)
                    .home_id(match_data[Match.home_id])
                    .visitor_id(match_data[Match.visitor_id])
                    .date(match_data[Match.date])
                    .timestamp(match_data[Match.timestamp])
                    .local(match_data[Match.local])
                    .valid(match_data[Match.valid])
                    .home_goal(match_data[Match.home_goal])
                    .visitor_goal(match_data[Match.visitor_goal])
                    .year(year)
                    .build())
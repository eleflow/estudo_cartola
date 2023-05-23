import datetime
import json
import logging
import requests

from cartola_requests.model.match import Match, MatchBuilder
from cartola_requests.requesters.requester import Requester

logger = logging.getLogger(__name__)


class MatchesRequester(Requester):
    
    def __init__(self, turn) -> None:
        super().__init__()
        self.endpoint = "partidas"
        self.dictionary_key = "partidas"
        self.turn = turn
    
    def matches(self):
        year = datetime.date.today().year
        matches = []
        
        matches_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}/{self.turn}')
        matches_json = json.loads(matches_page.content)
        try:
            matches = matches_json[self.dictionary_key]
        except Exception:
            logger.error("Is not possible to find matches for this turn")
            return []

        return [self.__build_match__(match, self.turn, year) for match in matches]
    
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
                    .build()).asdict()
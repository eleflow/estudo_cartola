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
                    .match_id(match_data[Match.MATCH_ID])
                    .turn(turn)
                    .home_id(match_data[Match.HOME_ID])
                    .visitor_id(match_data[Match.VISITOR_ID])
                    .date(match_data[Match.DATE])
                    .timestamp(match_data[Match.TIMESTAMP])
                    .local(match_data[Match.LOCAL])
                    .valid(match_data[Match.VALID])
                    .home_goal(match_data[Match.HOME_GOAL])
                    .visitor_goal(match_data[Match.VISITOR_GOAL])
                    .year(year)
                    .build()).asdict()
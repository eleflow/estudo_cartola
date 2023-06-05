import datetime
import json
import logging
import requests

from cartola_requests.requesters.requester import Requester
from cartola_requests.model.market import Market, MarketBuilder
from cartola_requests.model.master_cat import MasterCat, MasterCatBuilder
from cartola_requests.model.scout import Scout

logger = logging.getLogger(__name__)

class MarketRequester(Requester):

    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "atletas/mercado"
        self.dictionary_key = "atletas"

    def market(self):
        market_page = requests.get(f'{self.config.get_cartola_uri()}/{self.endpoint}')
        market_json = json.loads(market_page.content)
        try:
            market_dict = market_json[self.dictionary_key]
        except Exception:
            logger.error("Is not possible to find market")
            return []

        year = datetime.date.today().year

        return [self.__build_market__(market, year) for market in market_dict]
    
    def __build_market__(self, market_data, year):
        return (MarketBuilder()
                    .athlete_id(market_data[Market.ATHLETE_ID])
                    .turn(market_data[Market.TURN])
                    .club_id(market_data[Market.CLUB_ID])
                    .position(market_data[Market.POSITION_ID])
                    .status_id(market_data[Market.STATUS_ID])
                    .points(market_data[Market.POINTS])
                    .variation(market_data[Market.VARIATION])
                    .average(market_data[Market.AVERAGE])
                    .games(market_data[Market.GAMES])
                    .min_to_up_value(market_data[Market.MIN_TO_UP_VALUE])
                    .nickname(market_data[Market.NICKNAME])
                    .name(market_data[Market.NAME])
                    .picture(market_data[Market.PICTURE])
                    .year(year)
                    .scouts(market_data[Scout.SCOUT])
                    .master_cat(market_data[MasterCat.MASTER_CAT])
                    .build().to_save())

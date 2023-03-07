import json
import requests

from airflow.cartola_api.config import Config

class Requester:

    def __init__(self) -> None:
        self.config = Config()
    
    def last_turn(self) -> int:
        home_page = requests.get(self.config.get_cartola_uri())
        home_json = json.loads(home_page.content)
        last_turn = home_json['rodada']
        return last_turn
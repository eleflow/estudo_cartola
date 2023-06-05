import json
import requests

from cartola_requests.config import Config

class Requester:

    def __init__(self) -> None:
        self.config = Config.instance()
    
    def last_turn(self) -> int:
        home_page = requests.get(f"{self.config.get_cartola_uri()}/partidas")
        home_json = json.loads(home_page.content)
        last_turn = home_json['rodada']
        return last_turn
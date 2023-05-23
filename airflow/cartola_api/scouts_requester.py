from airflow.cartola_api.requester import Requester

class ScoutRequester(Requester):
    
    def __init__(self) -> None:
        super().__init__()
        self.endpoint = "atletas/pontuados"
        self.dictionary_key = "atletas"
    
    def scouts(self):
        
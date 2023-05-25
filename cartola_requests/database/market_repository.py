from cartola_requests.database.mongodb_api import MongoDBAPI

class MarketRepository(MongoDBAPI):

    def __init__(self) -> None:
        super().__init__()

    def upsert_one(self, document: dict):
        return super().upsert_one("market", {"athlete_id":document["athlete_id"], "turn":document["turn"], "club_id":document["club_id"]}, document)

    def insert_one(self, document: dict):
        return super().insert_one("market", document)
    
    def find_one(self, filter: dict):
        return super().find_one("market", filter)
    
    def delete_one(self, filter: dict):
        return super().delete_one("market", filter)
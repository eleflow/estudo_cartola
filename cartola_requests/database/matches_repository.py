from cartola_requests.database.mongodb_api import MongoDBAPI

class MatchesRepository(MongoDBAPI):

    def __init__(self) -> None:
        super().__init__()

    def upsert_one(self, document: dict):
        return super().upsert_one("matches", {"match_id":document["match_id"], "year":document["year"]}, document)

    def insert_one(self, document: dict):
        return super().insert_one("matches", document)
    
    def find_one(self, filter: dict):
        return super().find_one("matches", filter)
    
    def delete_one(self, filter: dict):
        return super().delete_one("matches", filter)
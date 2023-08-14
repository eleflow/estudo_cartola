from cartola_requests.database.mongodb_api import MongoDBAPI

class ChosenRepository(MongoDBAPI):

    def __init__(self) -> None:
        super().__init__()

    def upsert_one(self, document: dict):
        return super().upsert_one("chosen", {"name":document["name"], "turn":document["turn"]}, document)

    def insert_one(self, document: dict):
        return super().insert_one("chosen", document)
    
    def find_one(self, filter: dict):
        return super().find_one("chosen", filter)
    
    def delete_one(self, filter: dict):
        return super().delete_one("chosen", filter)
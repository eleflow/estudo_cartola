from cartola_requests.database.mongodb_api import MongoDBAPI

class AthletesRepository(MongoDBAPI):

    def __init__(self) -> None:
        super().__init__()

    def upsert_one(self, document: dict):
        return super().upsert_one("athletes", {"id":document["id"], "turn":document["turn"], "year": document["year"]}, document)

    def insert_one(self, document: dict):
        return super().insert_one("athletes", document)
    
    def find_one(self, filter: dict):
        return super().find_one("athletes", filter)
    
    def delete_one(self, filter: dict):
        return super().delete_one("athletes", filter)
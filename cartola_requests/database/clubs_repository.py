from cartola_requests.database.mongodb_api import MongoDBAPI

class ClubsRepository(MongoDBAPI):

    def __init__(self) -> None:
        super().__init__()

    def insert_one(self, document: dict):
        return super().insert_one("clubs", document)
    
    def find_one(self, filter: dict):
        return super().find_one("clubs", filter)
    
    def delete_one(self, filter: dict):
        return super().delete_one("clubs", filter)
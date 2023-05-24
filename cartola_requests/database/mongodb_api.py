import logging

from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi

from cartola_requests.config import Config

logger = logging.getLogger(__name__)

class MongoDBAPI:

    def __init__(self) -> None:
        self.config = Config.instance()
        self.uri = self.config.get_mongodb_uri()
        self.__create_client__()

    def __create_client__(self):
        client = MongoClient(self.uri, server_api=ServerApi('1'))
        try:
            client.admin.command('ping')
            logger.info("Pinged your deployment. You successfully connected to MongoDB!")
            self.database = client[self.config.get_mongodb_database()]
        except Exception as e:
            logger.info(e)

    def upsert_one(self, collection_name:str, filter:dict, document:dict):
        collection = self.database[collection_name]
        return collection.update_one(filter, {"$set": document}, upsert=True)

    def insert_one(self, collection_name:str, document:dict):
        collection = self.database[collection_name]
        return collection.insert_one(document)

    def find_one(self, collection_name:str, filter:dict):
        collection = self.database[collection_name]
        return collection.find_one(filter)
    
    def find_all(self, collection_name:str, filter:dict):
        collection = self.database[collection_name]
        return collection.find()

    def delete_one(self, collection_name:str, filter:dict):
        collection = self.database[collection_name]
        return collection.delete_one(filter)
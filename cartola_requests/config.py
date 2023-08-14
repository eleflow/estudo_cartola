import os
from datetime import datetime

class Config:

    _instance = None

    @classmethod
    def instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance
    
    def get_mais_escalados_uri(self) -> str:
        return "https://gatomestre.ge.globo.com/mais-escalados-do-cartola/"

    def get_cartola_uri(self) -> str:
        return "https://api.cartolafc.globo.com"
    
    def get_start_data(self):
        return datetime(2023, 4, 18)
    
    def get_schedule_interval(self):
        # Execute toda terça-feira às 17:00 horas (-3 GMT)
        return "0 20 * * tue"

    def get_mongodb_database(self):
        return "cartola"

    def get_mongodb_app_name(self):
        return "data-eyokm"
    
    def get_mongodb_uri(self):
        password = self.get_mongodb_password()
        return f"mongodb+srv://cartola:{password}@cluster0.zns1a.mongodb.net/?retryWrites=true&w=majority"
    
    def get_mongodb_cluster_name(self):
        return "Cluster0"
    
    def get_mongodb_password(self):
        return os.environ["MONGODB_PASSWORD"]
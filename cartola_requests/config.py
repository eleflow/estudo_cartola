from datetime import datetime

class Config:

    _instance = None

    @classmethod
    def instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance
    
    def get_cartola_uri(self) -> str:
        return "https://api.cartolafc.globo.com"
    
    def get_start_data(self):
        return datetime(2023, 4, 18)
    
    def get_schedule_interval(self):
        # Execute toda terça-feira às 17:00 horas
        return "0 17 * * tue"
    
    def get_pontuacao(self) -> dict:
        return {
                "G" : ( 8.0, "Gol" ),
                "A" : ( 5.0, "Assistência" ),
                "FT": ( 3.0, "Finalização na trave" ),
                "FD": ( 1.2, "Finalização defendida" ),
                "FF": ( 0.8, "Finalização para fora" ),
                "FS": ( 0.5, "Falta sofrida" ),
                "PS": ( 1.0, "Pênalti sofrido" ),
                "DP": ( 7.0, "Defesa de pênalti" ),
                "SG": ( 5.0, "Jogo sem sofrer gols" ),
                "DE": ( 1.0, "Defesa" ),
                "DS": ( 1.2, "Desarme" ),
                "PP": (-4.0, "Pênalti perdido para fora" ),
                "I" : (-0.1, "Impedimento" ),
                "PI": (-0.1, "Passe incompleto" ),
                "CA": (-1.0, "Cartão amarelo" ),
                "GS": (-1.0, "Gol sofrido" ),
                "FC": (-0.3, "Falta cometida" ),
                "PC": (-1.0, "Pênalti cometido" ),
                "GC": (-3.0, "Gol contra" ),
                "CV": (-3.0, "Cartão vermelho" ),
                "V" : ( 0.25, "Desconhecido" )
            }
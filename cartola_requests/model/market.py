from typing import List

from cartola_requests.model.master_cat import MasterCat, MasterCatBuilder
from cartola_requests.model.scout import Scout, ScoutBuilder

class Market:
    
    ATHLETE_ID: str = "atleta_id"
    TURN: str = "rodada_id"
    CLUB_ID: str = "clube_id"
    POSITION_ID: str = "posicao_id"
    STATUS_ID: str = "status_id"
    POINTS: str = "pontos_num"
    PRICE: str = "preco_num"
    VARIATION: str = "variacao_num"
    AVERAGE: str = "media_num"
    GAMES: str = "jogos_num"
    MIN_TO_UP_VALUE: str = "minimo_para_valorizar"
    NICKNAME: str = "apelido"
    NAME: str = "nome"
    PICTURE: str = "foto"

    def __init__(self, athlete_id, turn, club_id, position, status_id, points, variation, 
                 average, games, min_to_up_value, nickname, name, picture, year, scouts: List[Scout], master_cat: MasterCat) -> None:
        self.athlete_id = athlete_id
        self.turn = turn
        self.club_id = club_id
        self.position = position
        self.status_id = status_id
        self.points = points
        self.variation = variation
        self.average = average
        self.games = games
        self.min_to_up_value = min_to_up_value
        self.nickname = nickname
        self.name = name
        self.picture = picture
        self.year = year
        self.scouts = scouts
        self.master_cat = master_cat
    
    def asdict(self):
        return (
            {
                "athlete_id":self.athlete_id,
                "turn":self.turn,
                "club_id":self.club_id,
                "position":self.position,
                "status_id":self.status_id,
                "points":self.points,
                "variation":self.variation,
                "average":self.average,
                "games":self.games,
                "min_to_up_value":self.min_to_up_value,
                "nickname":self.nickname,
                "name":self.name,
                "picture":self.picture,
                "year": self.year,
                "scouts":[scout.asdict() for scout in self.scouts],
                "master_cat": self.master_cat.asdict()
            }
        )


class MarketBuilder:

    def athlete_id(self, athlete_id):
        self.athlete_id = athlete_id
        return self
    
    def turn(self, turn):
        self.turn = turn
        return self
    
    def club_id(self, club_id):
        self.club_id = club_id
        return self
    
    def position(self, position):
        self.position = position
        return self
    
    def status_id(self, status_id):
        self.status_id = status_id
        return self
    
    def points(self, points):
        self.points = points
        return self
    
    def variation(self, variation):
        self.variation = variation
        return self
    
    def average(self, average):
        self.average = average
        return self
    
    def games(self, games):
        self.games = games
        return self
    
    def min_to_up_value(self, min_to_up_value):
        self.min_to_up_value = min_to_up_value
        return self
    
    def nickname(self, nickname):
        self.nickname = nickname
        return self
    
    def name(self, name):
        self.name = name
        return self
    
    def picture(self, picture):
        self.picture = picture
        return self

    def year(self, year):
        self.year = year
        return self
    
    def scouts(self, scouts):
        self.scouts = scouts
        return self
    
    def master_cat(self, master_cat):
        self.master_cat = master_cat
        return self
    
    def build(self):
        scouts = [ScoutBuilder().scout_value(scout, value).build() for scout, value in self.scouts.items()]
        master_cat = self.__build_master_cat__(self.master_cat)

        return Market(
            self.athlete_id,
            self.turn,
            self.club_id,
            self.position,
            self.status_id,
            self.points,
            self.variation,
            self.average,
            self.games,
            self.min_to_up_value,
            self.nickname,
            self.name,
            self.picture,
            self.year,
            scouts,
            master_cat
        )

    def __build_master_cat__(self, cat_data):
        return (MasterCatBuilder()
                    .average_points_principal(cat_data[MasterCat.AVERAGE_POINTS_PRINCPAL])
                    .average_points_visitor(cat_data[MasterCat.AVERAGE_POINTS_VISITOR])
                    .average_minutes_played(cat_data[MasterCat.AVERAGE_MINUTES_PLAYED])
                    .minutes_played(cat_data[MasterCat.MINUTES_PLAYED])
                    .average_scouts(cat_data[MasterCat.SCOUTS][MasterCat.AVERAGE])
                    .principal_scouts(cat_data[MasterCat.SCOUTS][MasterCat.PRINCIPAL])
                    .visitor_scouts(cat_data[MasterCat.SCOUTS][MasterCat.VISITOR])
                    .build())
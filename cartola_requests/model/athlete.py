from typing import List

from cartola_requests.config import Config
from cartola_requests.model.scout import Scout, ScoutBuilder

class Athlete:

    scout: str = "scout"
    nickname: str = "apelido"
    picture: str = "foto"
    points: str = "pontuacao"
    position_id: str = "posicao_id"
    club_id: str = "clube_id"
    played_the_game: str = "entrou_em_campo"
    
    def __init__(self, id:str, turn:int, scouts:List[Scout], nickname:str, picture:str, points:float, position_id:int, club_id:int, played_the_game:bool, year: int) -> None:
        self.id = id
        self.turn = turn
        self.scouts = scouts
        self.nickname = nickname
        self.picture = picture
        self.points = points
        self.calculated_points = self.__calculated_points__()
        self.position_id = position_id
        self.club_id = club_id
        self.played_the_game = played_the_game
        self.year = year

    def __calculated_points__(self):
        return sum([value * Config.instance().get_pontuacao()[key][0] for dic in self.scouts for key, value in dic.items()], 0)
    
    def asdict(self):
        return (
            {
                "id": self.id,
                "turn": self.turn,
                "scouts": self.scouts,
                "nickname": self.nickname,
                "picture": self.picture,
                "points": self.points,
                "calculated_points": self.calculated_points,
                "position_id": self.position_id,
                "club_id": self.club_id,
                "played_the_game": self.played_the_game,
                "year": self.year
            }
        )

class AthleteBuilder:

    def id(self, athlete_id):
        self.id = athlete_id
        return self
    
    def turn(self, turn):
        self.turn = turn
        return self
    
    def scouts(self, scouts):
        self.scouts = scouts
        return self
    
    def nickname(self, nickname):
        self.nickname = nickname
        return self
    
    def picture(self, picture):
        self.picture = picture
        return self
    
    def points(self, points):
        self.points = points
        return self
    
    def position_id(self, position_id):
        self.position_id = position_id
        return self
    
    def club_id(self, club_id):
        self.club_id = club_id
        return self
    
    def played_the_game(self, played_the_game):
        self.played_the_game = ("true" == str(played_the_game).lower())
        return self
    
    def year(self, year):
        self.year = year
        return self
    
    def build(self):
        scouts = [ScoutBuilder().scout_value(scout, value).build().asdict() for scout, value in self.scouts.items()]

        return Athlete(
            self.id,
            self.turn,
            scouts,
            self.nickname,
            self.picture,
            self.points,
            self.position_id,
            self.club_id,
            self.played_the_game,
            self.year
        )
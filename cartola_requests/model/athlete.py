from typing import List

from cartola_requests.config import Config
from cartola_requests.model.scout import Scout, ScoutBuilder

class Athlete:

    SCOUT: str = "scout"
    NICKNAME: str = "apelido"
    PICTURE: str = "foto"
    POINTS: str = "pontuacao"
    POSITION_ID: str = "posicao_id"
    CLUB_ID: str = "clube_id"
    PLAYED_THE_GAME: str = "entrou_em_campo"
    
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
        return sum([scout.value * Scout.get_pontuacao(scout.scout) for scout in self.scouts], 0)
        #[print(f"{scout.scout, scout.value}") for scout in self.scouts]
    
    def asdict(self):
        return (
            {
                "id": self.id,
                "turn": self.turn,
                "scouts": [scout.asdict() for scout in self.scouts],
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
        scouts = [ScoutBuilder().scout_value(scout, value).build() for scout, value in self.scouts.items()]

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
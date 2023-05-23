from typing import List
from airflow.cartola_api.model.scout import Scout, ScoutBuilder

class Athlete:
    
    def __init__(self, id:int, scouts:List[Scout], nickname:str, picture:str, points:float, position_id:int, club_id:int, played_the_game:bool) -> None:
        self.id = id
        self.scouts = scouts
        self.nickname = nickname
        self.picture = picture
        self.points = points
        self.position_id = position_id
        self.club_id = club_id
        self.played_the_game = played_the_game
    
    def asdict(self):
        return (
            {
                "id": self.id,
                "scouts": self.scouts,
                "nickname": self.nickname,
                "picture": self.picture,
                "points": self.points,
                "position_id": self.position_id,
                "club_id": self.club_id,
                "played_the_game": self.played_the_game
            }
        )

class AthleteBuilder:

    def id(self, id):
        self.id = id
        return self
    
    def scout(self, scouts):
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
        self.played_the_game = played_the_game
        return self
    
    def build(self):
        scouts = [ScoutBuilder().scout_value(scout, value).build for scout, value in self.scouts.items()]

        return Athlete(
            self.id,
            scouts,
            self.nickname,
            self.picture,
            self.points,
            self.position_id,
            self.club_id,
            self.played_the_game
        )
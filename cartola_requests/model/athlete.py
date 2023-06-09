from typing import List

from cartola_requests.model.scout import Scout, ScoutBuilder

class Athlete:

    SCOUT: str = "scout"
    NICKNAME: str = "apelido"
    PICTURE: str = "foto"
    POINTS: str = "pontuacao"
    POSITION_ID: str = "posicao_id"
    CLUB_ID: str = "clube_id"
    HAS_PLAYED: str = "entrou_em_campo"
    
    def __init__(self, id:str, turn:int, scouts:List[Scout], nickname:str, picture:str, points:float, position_id:int, club_id:int, has_played:bool, year: int) -> None:
        self.id = id
        self.turn = turn
        self.scouts = scouts
        self.nickname = nickname
        self.picture = picture
        self.points = points
        self.calculated_points = self.__calculated_points__()
        self.position_id = position_id
        self.club_id = club_id
        self.has_played = has_played
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
                "has_played": self.has_played,
                "year": self.year
            }
        )
    
    def to_save(self):

        scouts = { scout: 0 for scout in Scout.get_scouts().keys() }
        scouts_from_request = {scout.get_scout(): scout.get_value() for scout in self.scouts}
        for scout in scouts_from_request:
            scouts[scout] = scouts_from_request[scout]

        return (
            {
                "id": self.id,
                "turn": self.turn,
                "scout_g" : scouts[Scout.G ],
                "scout_a" : scouts[Scout.A ],
                "scout_ft": scouts[Scout.FT],
                "scout_fd": scouts[Scout.FD],
                "scout_ff": scouts[Scout.FF],
                "scout_fs": scouts[Scout.FS],
                "scout_ps": scouts[Scout.PS],
                "scout_dp": scouts[Scout.DP],
                "scout_sg": scouts[Scout.SG],
                "scout_de": scouts[Scout.DE],
                "scout_ds": scouts[Scout.DS],
                "scout_pp": scouts[Scout.PP],
                "scout_i" : scouts[Scout.I ],
                "scout_pi": scouts[Scout.PI],
                "scout_ca": scouts[Scout.CA],
                "scout_gs": scouts[Scout.GS],
                "scout_fc": scouts[Scout.FC],
                "scout_pc": scouts[Scout.PC],
                "scout_gc": scouts[Scout.GC],
                "scout_cv": scouts[Scout.CV],
                "scout_v" : scouts[Scout.V ],
                "nickname": self.nickname,
                "picture": self.picture,
                "points": self.points,
                "calculated_points": self.calculated_points,
                "position_id": self.position_id,
                "club_id": self.club_id,
                "has_played": self.has_played,
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
    
    def has_played(self, has_played):
        self.has_played = ("true" == str(has_played).lower())
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
            self.has_played,
            self.year
        )
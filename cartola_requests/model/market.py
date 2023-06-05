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
    
    def to_save(self):

        scouts = self.__get_scouts_to_save__(self.scouts)
        master_cat_average_scouts = self.__get_scouts_to_save__(self.master_cat.average_scouts)
        master_cat_principal_scouts = self.__get_scouts_to_save__(self.master_cat.principal_scouts)
        master_cat_visitor_scouts = self.__get_scouts_to_save__(self.master_cat.visitor_scouts)

        print(f">>>{master_cat_visitor_scouts}")

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
                "master_cat_avg_points_principal":self.master_cat.average_points_principal,
                "master_cat_avg_points_visitor":self.master_cat.average_points_visitor,
                "master_cat_avg_minutes_played":self.master_cat.average_minutes_played,
                "master_cat_minutes_played":self.master_cat.minutes_played,
                "master_cat_average_scout_g" : master_cat_average_scouts[Scout.G ],
                "master_cat_average_scout_a" : master_cat_average_scouts[Scout.A ],
                "master_cat_average_scout_ft": master_cat_average_scouts[Scout.FT],
                "master_cat_average_scout_fd": master_cat_average_scouts[Scout.FD],
                "master_cat_average_scout_ff": master_cat_average_scouts[Scout.FF],
                "master_cat_average_scout_fs": master_cat_average_scouts[Scout.FS],
                "master_cat_average_scout_ps": master_cat_average_scouts[Scout.PS],
                "master_cat_average_scout_dp": master_cat_average_scouts[Scout.DP],
                "master_cat_average_scout_sg": master_cat_average_scouts[Scout.SG],
                "master_cat_average_scout_de": master_cat_average_scouts[Scout.DE],
                "master_cat_average_scout_ds": master_cat_average_scouts[Scout.DS],
                "master_cat_average_scout_pp": master_cat_average_scouts[Scout.PP],
                "master_cat_average_scout_i" : master_cat_average_scouts[Scout.I ],
                "master_cat_average_scout_pi": master_cat_average_scouts[Scout.PI],
                "master_cat_average_scout_ca": master_cat_average_scouts[Scout.CA],
                "master_cat_average_scout_gs": master_cat_average_scouts[Scout.GS],
                "master_cat_average_scout_fc": master_cat_average_scouts[Scout.FC],
                "master_cat_average_scout_pc": master_cat_average_scouts[Scout.PC],
                "master_cat_average_scout_gc": master_cat_average_scouts[Scout.GC],
                "master_cat_average_scout_cv": master_cat_average_scouts[Scout.CV],
                "master_cat_average_scout_v" : master_cat_average_scouts[Scout.V ],
                "master_cat_principal_scout_g" : master_cat_principal_scouts[Scout.G ],
                "master_cat_principal_scout_a" : master_cat_principal_scouts[Scout.A ],
                "master_cat_principal_scout_ft": master_cat_principal_scouts[Scout.FT],
                "master_cat_principal_scout_fd": master_cat_principal_scouts[Scout.FD],
                "master_cat_principal_scout_ff": master_cat_principal_scouts[Scout.FF],
                "master_cat_principal_scout_fs": master_cat_principal_scouts[Scout.FS],
                "master_cat_principal_scout_ps": master_cat_principal_scouts[Scout.PS],
                "master_cat_principal_scout_dp": master_cat_principal_scouts[Scout.DP],
                "master_cat_principal_scout_sg": master_cat_principal_scouts[Scout.SG],
                "master_cat_principal_scout_de": master_cat_principal_scouts[Scout.DE],
                "master_cat_principal_scout_ds": master_cat_principal_scouts[Scout.DS],
                "master_cat_principal_scout_pp": master_cat_principal_scouts[Scout.PP],
                "master_cat_principal_scout_i" : master_cat_principal_scouts[Scout.I ],
                "master_cat_principal_scout_pi": master_cat_principal_scouts[Scout.PI],
                "master_cat_principal_scout_ca": master_cat_principal_scouts[Scout.CA],
                "master_cat_principal_scout_gs": master_cat_principal_scouts[Scout.GS],
                "master_cat_principal_scout_fc": master_cat_principal_scouts[Scout.FC],
                "master_cat_principal_scout_pc": master_cat_principal_scouts[Scout.PC],
                "master_cat_principal_scout_gc": master_cat_principal_scouts[Scout.GC],
                "master_cat_principal_scout_cv": master_cat_principal_scouts[Scout.CV],
                "master_cat_principal_scout_v" : master_cat_principal_scouts[Scout.V ],
                "master_cat_visitor_scout_g" : master_cat_visitor_scouts[Scout.G ],
                "master_cat_visitor_scout_a" : master_cat_visitor_scouts[Scout.A ],
                "master_cat_visitor_scout_ft": master_cat_visitor_scouts[Scout.FT],
                "master_cat_visitor_scout_fd": master_cat_visitor_scouts[Scout.FD],
                "master_cat_visitor_scout_ff": master_cat_visitor_scouts[Scout.FF],
                "master_cat_visitor_scout_fs": master_cat_visitor_scouts[Scout.FS],
                "master_cat_visitor_scout_ps": master_cat_visitor_scouts[Scout.PS],
                "master_cat_visitor_scout_dp": master_cat_visitor_scouts[Scout.DP],
                "master_cat_visitor_scout_sg": master_cat_visitor_scouts[Scout.SG],
                "master_cat_visitor_scout_de": master_cat_visitor_scouts[Scout.DE],
                "master_cat_visitor_scout_ds": master_cat_visitor_scouts[Scout.DS],
                "master_cat_visitor_scout_pp": master_cat_visitor_scouts[Scout.PP],
                "master_cat_visitor_scout_i" : master_cat_visitor_scouts[Scout.I ],
                "master_cat_visitor_scout_pi": master_cat_visitor_scouts[Scout.PI],
                "master_cat_visitor_scout_ca": master_cat_visitor_scouts[Scout.CA],
                "master_cat_visitor_scout_gs": master_cat_visitor_scouts[Scout.GS],
                "master_cat_visitor_scout_fc": master_cat_visitor_scouts[Scout.FC],
                "master_cat_visitor_scout_pc": master_cat_visitor_scouts[Scout.PC],
                "master_cat_visitor_scout_gc": master_cat_visitor_scouts[Scout.GC],
                "master_cat_visitor_scout_cv": master_cat_visitor_scouts[Scout.CV],
                "master_cat_visitor_scout_v" : master_cat_visitor_scouts[Scout.V ]
            }
        )
    
    def __get_scouts_to_save__(self, request_scouts):
        scouts = { scout: 0 for scout in Scout.get_scouts().keys() }
        scouts_from_request = {scout.get_scout(): scout.get_value() for scout in request_scouts}
        for scout in scouts_from_request:
            scouts[scout] = scouts_from_request[scout]

        return scouts


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
from typing import List
from cartola_requests.model.scout import Scout, ScoutBuilder

class MasterCat:

    MASTER_CAT: str = "gato_mestre"
    AVERAGE_POINTS_PRINCPAL: str = "media_pontos_mandante"
    AVERAGE_POINTS_VISITOR: str = "media_pontos_visitante"
    AVERAGE_MINUTES_PLAYED: str = "media_minutos_jogados"
    MINUTES_PLAYED: str = "minutos_jogados"
    SCOUTS: str = "scouts"
    AVERAGE: str = "media"
    PRINCIPAL: str = "mandante"
    VISITOR: str = "visitante"

    def __init__(self, average_points_principal:float, average_points_visitor:float, average_minutes_played:float, minutes_played:float, average_scouts: List[Scout], principal_scouts: List[Scout], visitor_scouts: List[Scout]) -> None:
        self.average_points_principal = average_points_principal
        self.average_points_visitor = average_points_visitor
        self.average_minutes_played = average_minutes_played
        self.minutes_played = minutes_played
        self.average_scouts = average_scouts
        self.principal_scouts = principal_scouts
        self.visitor_scouts = visitor_scouts
    
    def asdict(self):
        return (
            {
                "average_points_principal":self.average_points_principal,
                "average_points_visitor":self.average_points_visitor,
                "average_minutes_played":self.average_minutes_played,
                "minutes_played":self.minutes_played,
                "average_scouts": [scout.asdict() for scout in self.average_scouts],
                "principal_scouts": [scout.asdict() for scout in self.principal_scouts],
                "visitor_scouts": [scout.asdict() for scout in self.visitor_scouts]
            }
        )
    
class MasterCatBuilder:

    def average_points_principal(self, average_points_principal):
        self.average_points_principal = average_points_principal
        return self
    
    def average_points_visitor(self, average_points_visitor):
        self.average_points_visitor = average_points_visitor
        return self
    
    def average_minutes_played(self, average_minutes_played):
        self.average_minutes_played = average_minutes_played
        return self
    
    def minutes_played(self, minutes_played):
        self.minutes_played = minutes_played
        return self
    
    def average_scouts(self, average_scouts):
        self.average_scouts = average_scouts
        return self
    
    def principal_scouts(self, principal_scouts):
        self.principal_scouts = principal_scouts
        return self
    
    def visitor_scouts(self, visitor_scouts):
        self.visitor_scouts = visitor_scouts
        return self
    
    def build(self):
        average_scouts = [ScoutBuilder().scout_value(scout, value).build() for scout, value in self.average_scouts.items()]
        principal_scouts = [ScoutBuilder().scout_value(scout, value).build() for scout, value in self.principal_scouts.items()]
        visitor_scouts = [ScoutBuilder().scout_value(scout, value).build() for scout, value in self.visitor_scouts.items()]

        return MasterCat(
            self.average_points_principal,
            self.average_points_visitor,
            self.average_minutes_played,
            self.minutes_played,
            average_scouts,
            principal_scouts,
            visitor_scouts
        )
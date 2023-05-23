class Match:

    match_id: str = "partida_id"
    home_id: str = "clube_casa_id"
    visitor_id: str = "clube_visitante_id"
    date: str = "partida_data"
    timestamp: str = "timestamp"
    local: str = "local"
    valid: str = "valida"
    home_goal: str = "placar_oficial_mandante"
    visitor_goal: str = "placar_oficial_visitante"

    def __init__(self, match_id, turn, home_id, visitor_id, date, timestamp, local, valid, home_goal, visitor_goal, year):
        self.match_id = match_id
        self.turn = turn
        self.home_id = home_id
        self.visitor_id = visitor_id
        self.date = date
        self.timestamp = timestamp
        self.local = local
        self.valid = valid
        self.home_goal = home_goal
        self.visitor_goal = visitor_goal
        self.year = year

    def asdict(self):
        return (
            {
                "match_id": self.match_id, 
                "turn": self.turn, 
                "home_id": self.home_id,
                "visitor_id": self.visitor_id,
                "date": self.date,
                "timestamp": self.timestamp,
                "local": self.local,
                "valid": self.valid,
                "home_goal": self.home_goal,
                "visitor_goal": self.visitor_goal,
                "year":self.year
            }
        )

class MatchBuilder:

    def match_id(self, partida_id):
        self.match_id = partida_id
        return self
    
    def turn(self, turn):
        self.turn = turn
        return self
    
    def home_id(self, clube_casa_id):
        self.home_id = clube_casa_id
        return self
    
    def visitor_id(self, clube_visitante_id):
        self.visitor_id = clube_visitante_id
        return self
    
    def date(self, partida_data):
        self.date = partida_data
        return self

    def timestamp(self, timestamp):
        self.timestamp = timestamp
        return self
    
    def local(self, local):
        self.local = local
        return self
    
    def valid(self, valida):
        self.valid = valida
        return self
    
    def home_goal(self, placar_oficial_mandante):
        self.home_goal = placar_oficial_mandante
        return self
    
    def visitor_goal(self, placar_oficial_visitante):
        self.visitor_goal = placar_oficial_visitante
        return self
    
    def year(self, year):
        self.year = year
        return self
    
    def build(self):
        return Match(
            self.match_id,
            self.turn,
            self.home_id,
            self.visitor_id,
            self.date,
            self.timestamp,
            self.local,
            self.valid,
            self.home_goal,
            self.visitor_goal,
            self.year
        )
class Chosen:
    
    ATHLETE:str = "Atleta"
    POSITION:str = "posicao"
    SHORT_POSITION:str = "posicao_abreviacao"
    SHORT_CLUB:str = "clube"
    CLUB_NAME:str = "clube_nome"
    CLUB_ID:str = "clube_id"
    SHIELD:str = "escudo_clube"
    NAME:str = "nome"
    NICKNAME:str = "apelido"
    SHORT_NICK:str = "apelido_abreviado"
    PICTURE:str = "foto"
    ATHLETE_ID:str = "atleta_id"
    PRICE:str = "preco_editorial"
    ESCALATIONS:str = "escalacoes"

    def __init__(self, position, short_position, short_club, club_name, club_id, shield, name, nickname, short_nickname, picture, athlete_id, price, escalations, turn, year) -> None:
        self.position = position
        self.short_position = short_position
        self.short_club = short_club
        self.club_name = club_name
        self.club_id = club_id
        self.shield = shield
        self.name = name
        self.nickname = nickname
        self.short_nickname = short_nickname
        self.picture = picture
        self.athlete_id = athlete_id
        self.price = price
        self.escalations = escalations
        self.turn = turn
        self.year = year

    def asdict(self):
        return (
            {
                "position": self.position,
                "short_position": self.short_position,
                "short_club": self.short_club,
                "club_name": self.club_name,
                "club_id": self.club_id,
                "shield": self.shield,
                "name": self.name,
                "nickname": self.nickname,
                "short_nickname": self.short_nickname,
                "picture": self.picture,
                "athlete_id": self.athlete_id,
                "price": self.price,
                "escalations": self.escalations,
                "turn": self.turn,
                "year": self.year
            }
        )
    
    def to_save(self):
        return (
            {
                "position": self.position,
                "short_position": self.short_position,
                "short_club": self.short_club,
                "club_name": self.club_name,
                "club_id": self.club_id,
                "shield": self.shield,
                "name": self.name,
                "nickname": self.nickname,
                "short_nickname": self.short_nickname,
                "picture": self.picture,
                "athlete_id": self.athlete_id,
                "price": self.price,
                "escalations": self.escalations,
                "turn": self.turn,
                "year": self.year
            }
        )

class ChosenBuilder:

    def position(self, _position):
        self._position = _position
        return self
    
    def short_position(self, _short_position):
        self._short_position = _short_position
        return self
    
    def short_club(self, _short_club):
        self._short_club = _short_club
        return self
    
    def club_name(self, _club_name):
        self._club_name = _club_name
        return self
    
    def club_id(self, _club_id):
        self._club_id = _club_id
        return self
    
    def shield(self, _shield):
        self._shield = _shield
        return self
    
    def name(self, _name):
        self._name = _name
        return self
    
    def nickname(self, _nickname):
        self._nickname = _nickname
        return self
    
    def short_nickname(self, _short_nickname):
        self._short_nickname = _short_nickname
        return self
    
    def picture(self, _picture):
        self._picture = _picture
        return self
    
    def athlete_id(self, _athlete_id):
        self._athlete_id = _athlete_id
        return self
    
    def price(self, _price):
        self._price = _price
        return self
    
    def escalations(self, _escalations):
        self._escalations = _escalations
        return self
    
    def turn(self, _turn):
        self._turn = _turn
        return self
    
    def year(self, _year):
        self._year = _year
        return self
    
    def build(self):
        return Chosen(
            self._position,
            self._short_position,
            self._short_club,
            self._club_name,
            self._club_id,
            self._shield,
            self._name,
            self._nickname,
            self._short_nickname,
            self._picture,
            self._athlete_id,
            self._price,
            self._escalations,
            self._turn,
            self._year
        )
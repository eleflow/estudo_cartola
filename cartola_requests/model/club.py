class Club:

    ID: str = "id"
    NAME: str = "nome"
    INITIALS: str = "abreviacao"

    def __init__(self, id, name, initials, year) -> None:
        self.id = id
        self.name = name
        self.initials = initials
        self.year = year
    
    def asdict(self):
        return (
            {
                "id": self.id, 
                "name": self.name, 
                "initials": self.initials,
                "year": self.year
            }
        )
    
    def to_save(self):
        return (
            {
                "id_club": self.id, 
                "name": self.name, 
                "initials": self.initials,
                "year": self.year
            }
        )
    
class ClubBuilder:

    def id(self, id):
        self.id = id
        return self
    
    def name(self, name):
        self.name = name
        return self
    
    def initials(self, initials):
        self.initials = initials
        return self

    def year(self, year):
        self.year = year
        return self
    
    def build(self):
        return Club(
            self.id, 
            self.name, 
            self.initials, 
            self.year
        )
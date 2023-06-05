class Scout:

    SCOUT: str = "scout"
    G : str = "G"
    A : str = "A"
    FT: str = "FT"
    FD: str = "FD"
    FF: str = "FF"
    FS: str = "FS"
    PS: str = "PS"
    DP: str = "DP"
    SG: str = "SG"
    DE: str = "DE"
    DS: str = "DS"
    PP: str = "PP"
    I : str = "I"
    PI: str = "PI"
    CA: str = "CA"
    GS: str = "GS"
    FC: str = "FC"
    PC: str = "PC"
    GC: str = "GC"
    CV: str = "CV"
    V : str = "V"
    
    def __init__(self, scout: str, value: float) -> None:
        self.scout = scout
        self.value = value
    
    def get_scout(self):
        return self.scout
    
    def get_value(self):
        return self.value

    def asdict(self):
        return (
            {
                f"{self.scout}": self.value
            }
        )
    
    @classmethod
    def get_scouts(self):
        return {
                Scout.G : ( 8.0, "Gol" ),
                Scout.A : ( 5.0, "Assistência" ),
                Scout.FT: ( 3.0, "Finalização na trave" ),
                Scout.FD: ( 1.2, "Finalização defendida" ),
                Scout.FF: ( 0.8, "Finalização para fora" ),
                Scout.FS: ( 0.5, "Falta sofrida" ),
                Scout.PS: ( 1.0, "Pênalti sofrido" ),
                Scout.DP: ( 7.0, "Defesa de pênalti" ),
                Scout.SG: ( 5.0, "Jogo sem sofrer gols" ),
                Scout.DE: ( 1.0, "Defesa" ),
                Scout.DS: ( 1.2, "Desarme" ),
                Scout.PP: (-4.0, "Pênalti perdido para fora" ),
                Scout.I : (-0.1, "Impedimento" ),
                Scout.PI: (-0.1, "Passe incompleto" ),
                Scout.CA: (-1.0, "Cartão amarelo" ),
                Scout.GS: (-1.0, "Gol sofrido" ),
                Scout.FC: (-0.3, "Falta cometida" ),
                Scout.PC: (-1.0, "Pênalti cometido" ),
                Scout.GC: (-3.0, "Gol contra" ),
                Scout.CV: (-3.0, "Cartão vermelho" ),
                Scout.V : ( 1.0, "Vitória" )
            }

    @classmethod
    def get_pontuacao(self, key) -> dict:
        return Scout.get_scouts()[key][0]

class ScoutBuilder:

    def scout(self, scout):
        self.scout = scout
        return self
    
    def value(self, value):
        self.value = value
        return self
    
    def scout_value(self, scout, value):
        self.scout = scout
        self.value = value
        return self
    
    def build(self):
        return Scout(
            self.scout, 
            self.value
        )
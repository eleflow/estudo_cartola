class Scout:
    
    def __init__(self, scout, value) -> None:
        self.scout = scout
        self.value = value
    
    def asdict(self):
        return (
            {
                f"{self.scout}": self.value
            }
        )

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
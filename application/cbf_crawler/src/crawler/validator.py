import re

class Validator:
    
    def __init__(self, cartola_clubs):
        self.clubs = cartola_clubs
    
    def validate_hour(self, hour):
        if not re.match(r"\d{2}:\d{2}", hour):
            raise Exception('hour', f'The value {hour} dont match with the hour pattern hh:mm')
        return hour
    
    def validate_date(self, date):
        if not re.match(r"\w+, \d{2} de \w+ de \d{4}", date):
            raise Exception('date', f'The value {date} dont match with the date pattern EEE, dd de MMMM de yyyy')
        return date
    
    def validate_team(self, club):
        if club not in self.clubs.keys():
            raise Exception('club', f'The value {club} dont match with the name of the clubs')
        return club
    
    def validate_goal(self, goal):
        if not re.match(r"\d+", goal):
            raise Exception('goal', f'The value {goal} must be a number')
        return goal
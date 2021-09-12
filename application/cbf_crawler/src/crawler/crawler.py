import re
import math
from .validator import Validator

class Crawler:
    
    def __init__(self, game, year, match, cartola_clubs):
        self.game_soup = game
        self.cartola_clubs = cartola_clubs
        self.validator = Validator(cartola_clubs)

        self.year = year
        self.match = match
        self.turn = int(math.ceil(match / 10))

        self.local = self.get_local()
        self.date = self.get_date()
        self.hour = self.get_hour()
        
        self.home_team = self.get_home_team()
        self.home_team_id = self.team_id(self.home_team)
        self.home_team_goals = self.get_home_team_goals()
        self.home_players_goals = self.get_home_players_goals()
        
        self.visitor_team = self.get_visitor_team()
        self.visitor_team_id = self.team_id(self.visitor_team)
        self.visitor_team_goals = self.get_visitor_team_goals()
        self.visitor_players_goals = self.get_visitor_players_goals()
        
        self.referee = self.referee_soup_element_value(0)
        self.referee_category = self.referee_soup_element_value(1)
    
    def get_local(self):
        return self.game_soup_element_value('text-2 p-r-20', 0)

    def get_date(self):
        return self.validator.validate_date(self.game_soup_element_value('text-2 p-r-20', 1))

    def get_hour(self):
        return self.validator.validate_hour(self.game_soup_element_value('text-2 p-r-20', 2))

    def get_home_team(self):
        return self.validator.validate_team(self.game_soup_element_value('time-nome', 0))

    def get_home_team_goals(self):
        return self.validator.validate_goal(self.game_soup_element_value('time-gols block', 0))

    def get_visitor_team(self):
        return self.validator.validate_team(self.game_soup_element_value('time-nome', 1))

    def get_visitor_team_goals(self):
        return self.validator.validate_goal(self.game_soup_element_value('time-gols block', 1))
    
    def get_home_players_goals(self):
        return self.players_goals('text-left')

    def get_visitor_players_goals(self):
        return self.players_goals('text-right')
    
    def game_soup_element_value(self, css_class, position):
        return self.game_soup.find_all(class_=css_class)[position].get_text().strip()
    
    def referee_soup_element_value(self, position):
        return self.game_soup.find_all("td")[position].get_text().strip()
    
    def players_goals(self, css_class):
        players_goals = []
        players = self.game_soup.find_all(class_='col-xs-3 col-sm-3 '+ css_class +' hidden-xs')[0].get_text().strip().split("\n")
        
        for i in range(1, len(players)):
            name = players[i]
            if "'" in name:
                name = re.sub("'", "", name);
            if '"' in name:
                name = re.sub('"', "", name);

            players_goals.append(name)
            
        return players_goals
    
    def team_id(self, team_name):
        return self.cartola_clubs[team_name]["globo_id"]

    def to_dict(self):
        return {
            "match": self.match,
            "turn": self.turn,
            "year": self.year,
            "date": re.sub(',', '', self.date),
            "hour": self.hour,
            "local": self.local, 
            "home_id": self.home_team_id,
            "home": self.home_team, 
            "home_goal": self.home_team_goals,
            "home_players_goals": self.home_players_goals,
            "visitor_players_goals": self.visitor_players_goals,
            "visitor_goal": self.visitor_team_goals,
            "visitor": self.visitor_team,
            "visitor_id": self.visitor_team_id,
            "referee": self.referee,
            "referee_category": self.referee_category
        }
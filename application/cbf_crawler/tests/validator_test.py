# -*- coding: utf-8 -*-

from src.crawler.validator import Validator
import unittest

class ValidatorTestSuite(unittest.TestCase):

    def setUp(self):
        cartola_clubs = {
            "Fluminense - RJ": { "globo_id": 266 },
            "Atlético - MG": { "globo_id": 282 },
            "Grêmio - RS": { "globo_id": 284 },
            "São Paulo - SP": { "globo_id": 276 }
        }
        self.validator = Validator(cartola_clubs)

    def test_validate_team(self):
        self.assertEqual("Fluminense - RJ", self.validator.validate_team("Fluminense - RJ"))

    def test_exception_when_team_not_present(self):
        self.assertRaises(Exception, self.validator.validate_team, "Limoeiro - FC")

    def test_validate_hour(self):
        self.assertEqual("09:30", self.validator.validate_hour("09:30"))

    def test_exception_when_hour_dont_match(self):
        self.assertRaises(Exception, self.validator.validate_hour, "9:30")

    def test_validate_date(self):
        self.assertEqual("Quinta, 25 de Fevereiro de 2021", self.validator.validate_date("Quinta, 25 de Fevereiro de 2021"))

    def test_exception_when_date_dont_match(self):
        self.assertRaises(Exception, self.validator.validate_date, "Quinta 1 de Fevereiro de 2021")

    def test_validate_goal(self):
        self.assertEqual("1", self.validator.validate_goal("1"))

    def test_exception_when_goal_dont_match(self):
        self.assertRaises(Exception, self.validator.validate_goal, "a")

if __name__ == '__main__':
    unittest.main()
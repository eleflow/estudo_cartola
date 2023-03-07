from datetime import datetime
import pytest
import requests
import requests_mock

from airflow.cartola_api.config import Config
from airflow.cartola_api.matches_requester import MatchesRequester

config = Config()

def test_mock_request():
    with requests_mock.Mocker() as mock_request:
        mock_request.get(config.get_cartola_uri(), text="Hello!")
        response = requests.get(config.get_cartola_uri())

        assert response.text == "Hello!"

@pytest.mark.parametrize(
    ["expected", "response", "last_turn_response"], 
    [
        ([{ "match_id": 1, "turn": 1, "home_id": 1001, "visitor_id": 1002, "date": "2000-01-01", "timestamp": 1234567890, "local": "Campo", "valid": "true", "home_goal": 2, "visitor_goal": 1 }], 
         { "partidas": [{ "partida_id": 1, "clube_casa_id": 1001, "clube_visitante_id": 1002, "partida_data": "2000-01-01", "timestamp": 1234567890, "local": "Campo", "valida": "true", "placar_oficial_mandante": 2, "placar_oficial_visitante": 1 }] },
         { "rodada": 2 }
        )
    ])
def test_build_match(mocker, expected, response, last_turn_response):
    mock_date = mocker.patch("airflow.cartola_api.matches_requester.datetime")
    FAKE_NOW = datetime(2000, 10, 10, 0, 0, 0)
    mock_date.now.return_value = FAKE_NOW
    expected[0]["year"] = mock_date.date.today().year

    with requests_mock.Mocker() as mock_request:
        mock_request.get(config.get_cartola_uri(), json=last_turn_response)
        mock_request.get(f"{config.get_cartola_uri()}/partidas/1", json=response)

        subject = MatchesRequester()
        assert expected == subject.matches()
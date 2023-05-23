from datetime import datetime
import pytest
import requests_mock

from airflow.cartola_api.config import Config
from airflow.cartola_api.clubs_requester import ClubsRequester

config = Config.instance()

@pytest.mark.parametrize(
    ["expected", "response"], 
    [
        ([{ "id": 1, "name": "Time 1", "initials": "T1" }, { "id": 2, "name": "Time 2", "initials": "T2" }], 
         { "clubes": {"1":{ "id": 1, "nome": "Time 1", "abreviacao": "T1" }, "2":{ "id": 2, "nome": "Time 2", "abreviacao": "T2" }} }
        )
    ])
def test_build_clubs(mocker, expected, response):
    mock_date = mocker.patch("airflow.cartola_api.clubs_requester.datetime")
    FAKE_NOW = datetime(2000, 10, 10, 0, 0, 0)
    mock_date.now.return_value = FAKE_NOW
    expected[0]["year"] = mock_date.date.today().year
    expected[1]["year"] = mock_date.date.today().year

    with requests_mock.Mocker() as mock_request:
        mock_request.get(f"{config.get_cartola_uri()}/partidas", json=response)

        subject = ClubsRequester()
        assert expected == subject.clubs()
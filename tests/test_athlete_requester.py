from datetime import datetime
import pytest
import requests
import requests_mock

from cartola_requests.config import Config
from cartola_requests.requesters.athlete_requester import AthleteRequester

config = Config.instance()

@pytest.mark.parametrize(
    ["expected", "response", "last_turn_response"], 
    [
        ([{"id":"38144","scouts":[{'CA': 1}, {'DS': 2}, {'FC': 2}, {'SG': 1}],"nickname":"Rafinha","picture":"https://s.sde.globo.com/media/person_role/2022/03/01/de7df71bb9091a8547f8d8bd0212b549_FORMATO.png","points":5.8,"calculated_points":5.8,"position_id":2,"club_id":276,"played_the_game":True,"year":2023}], 
         {"atletas":{"38144":{"scout":{"CA":1,"DS":2,"FC":2,"SG":1},"apelido":"Rafinha","foto":"https://s.sde.globo.com/media/person_role/2022/03/01/de7df71bb9091a8547f8d8bd0212b549_FORMATO.png","pontuacao":5.8,"posicao_id":2,"clube_id":276,"entrou_em_campo":"true"}}},
         { "rodada": 2 }
        )
    ])
def test_build_match(mocker, expected, response, last_turn_response):
    mock_date = mocker.patch("cartola_requests.requesters.matches_requester.datetime")
    FAKE_NOW = datetime(2000, 10, 10, 0, 0, 0)
    mock_date.now.return_value = FAKE_NOW
    #expected[0]["year"] = mock_date.date.today().year

    with requests_mock.Mocker() as mock_request:
        turn = last_turn_response['rodada']-1
        mock_request.get(config.get_cartola_uri(), json=last_turn_response)
        mock_request.get(f"{config.get_cartola_uri()}/atletas/pontuados/{turn}", json=response)

        subject = AthleteRequester(turn)
        assert expected == subject.athletes()
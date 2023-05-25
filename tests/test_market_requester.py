from datetime import datetime
import pytest
import requests_mock

from cartola_requests.config import Config
from cartola_requests.requesters.market_requester import MarketRequester

config = Config.instance()

@pytest.mark.parametrize(
    ["expected", "response"], 
    [
        ([{'athlete_id': 71162, 'turn': 7, 'club_id': 284, 'position': 4, 'status_id': 6, 'points': 0, 'variation': -0.63, 'average': 2.1, 'games': 7, 'min_to_up_value': 0.14, 'nickname': 'Vina', 'name': 'Vinícius Goes Barbosa de Souza', 'picture': 'https://s.sde.globo.com/media/person_role/2023/03/08/photo_FORMATO_q8oUM9e.png', 'year': 2023, 'scouts': [{'CA': 2}, {'DS': 2}, {'FC': 2}, {'FD': 2}, {'FS': 9}, {'G': 1}], 'master_cat': {'average_points_principal': 0.64, 'average_points_visitor': 4.03, 'average_minutes_played': 65, 'minutes_played': 11, 'average_scouts': [{'FS': 1.29}, {'G': 0.14}, {'DS': 0.29}, {'FC': 0.29}, {'CA': 0.29}, {'FD': 0.29}], 'principal_scouts': [{'FS': 5}, {'DS': 1}, {'FC': 1}, {'CA': 2}, {'FD': 1}], 'visitor_scouts': [{'FS': 4}, {'G': 1}, {'DS': 1}, {'FC': 1}, {'FD': 1}]}}], 
         {"atletas":[{"scout":{"CA":2,"DS":2,"FC":2,"FD":2,"FS":9,"G":1},"atleta_id":71162,"rodada_id":7,"clube_id":284,"posicao_id":4,"status_id":6,"pontos_num":0,"preco_num":5.16,"variacao_num":-0.63,"media_num":2.1,"jogos_num":7,"minimo_para_valorizar":0.14,"gato_mestre":{"media_pontos_mandante":0.64,"media_pontos_visitante":4.03,"media_minutos_jogados":65,"minutos_jogados":11,"scouts":{"media":{"FS":1.29,"G":0.14,"DS":0.29,"FC":0.29,"CA":0.29,"FD":0.29},"mandante":{"FS":5,"DS":1,"FC":1,"CA":2,"FD":1},"visitante":{"FS":4,"G":1,"DS":1,"FC":1,"FD":1}}},"slug":"vina","apelido":"Vina","apelido_abreviado":"Vina","nome":"Vinícius Goes Barbosa de Souza","foto":"https://s.sde.globo.com/media/person_role/2023/03/08/photo_FORMATO_q8oUM9e.png"}]}
        )
    ])
def test_build_match(mocker, expected, response):
    mock_date = mocker.patch("cartola_requests.requesters.matches_requester.datetime")
    FAKE_NOW = datetime(2000, 10, 10, 0, 0, 0)
    mock_date.now.return_value = FAKE_NOW

    with requests_mock.Mocker() as mock_request:
        mock_request.get(config.get_cartola_uri())
        mock_request.get(f"{config.get_cartola_uri()}/atletas/mercado", json=response)

        subject = MarketRequester()
        assert expected == subject.market()
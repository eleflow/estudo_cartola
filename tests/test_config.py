import pytest

from cartola_requests.config import Config

config = Config.instance()

@pytest.mark.parametrize(
    ["expected"],
    [
        ({"https://api.cartolafc.globo.com"})
    ])
def test_cartola_api_address(expected):
    assert expected == config.get_cartola_uri()
import pytest

from airflow.cartola_api.config import Config

config = Config.instance()

@pytest.mark.parametrize(
    ["expected"],
    [
        ({"https://api.cartolafc.globo.com"})
    ])
def test_cartola_api_address(expected):
    assert expected == config.get_cartola_uri()


@pytest.mark.parametrize(
    ["expected", "scenario"],
    [
        ({"G" :  8.0}, "G" ),
        ({"A" :  5.0}, "A" ),
        ({"FT":  3.0}, "FT"),
        ({"FD":  1.2}, "FD"),
        ({"FF":  0.8}, "FF"),
        ({"FS":  0.5}, "FS"),
        ({"PS":  1.0}, "PS"),
        ({"DP":  7.0}, "DP"),
        ({"SG":  5.0}, "SG"),
        ({"DE":  1.0}, "DE"),
        ({"DS":  1.2}, "DS"),
        ({"PP": -4.0}, "PP"),
        ({"I" : -0.1}, "I" ),
        ({"PI": -0.1}, "PI"),
        ({"CA": -1.0}, "CA"),
        ({"GS": -1.0}, "GS"),
        ({"FC": -0.3}, "FC"),
        ({"PC": -1.0}, "PC"),
        ({"GC": -3.0}, "GC"),
        ({"CV": -3.0}, "CV")
    ])
def test_scouts_values(expected, scenario):
    assert expected[scenario] == config.get_pontuacao()[scenario][0]
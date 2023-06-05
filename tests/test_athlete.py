import pytest

from cartola_requests.model.athlete import Athlete, AthleteBuilder

@pytest.mark.parametrize(
    ["expected", "to_build"], 
    [
        (
            {"id":"38144", "turn":1, "scout_a":0, "scout_ca":1, "scout_cv":0, "scout_de":0, "scout_ds":2, "scout_dp":0, "scout_fd":0, "scout_fc":2, "scout_ff":0, "scout_fs":0, "scout_ft":0, "scout_g":0, "scout_sg":1, "scout_gc":0, "scout_gs":0, "scout_i":0, "scout_pc":0, "scout_pi":0, "scout_pp":0, "scout_ps":0, "scout_v":0,"nickname":"Rafinha","picture":"https://s.sde.globo.com/media/person_role/2022/03/01/de7df71bb9091a8547f8d8bd0212b549_FORMATO.png","points":5.8,"calculated_points":5.8,"position_id":2,"club_id":276,"played_the_game":True,"year":2023},
            {"id":"38144", "scout":{"CA":1,"DS":2,"FC":2,"SG":1},"apelido":"Rafinha","foto":"https://s.sde.globo.com/media/person_role/2022/03/01/de7df71bb9091a8547f8d8bd0212b549_FORMATO.png","pontuacao":5.8,"posicao_id":2,"clube_id":276,"entrou_em_campo":"true"}
        )
    ])
def test_build_match(expected, to_build):
    athlete = (AthleteBuilder()
                .id(to_build["id"])
                .turn(1)
                .scouts(to_build[Athlete.SCOUT])
                .nickname(to_build[Athlete.NICKNAME])
                .picture(to_build[Athlete.PICTURE])
                .points(to_build[Athlete.POINTS])
                .position_id(to_build[Athlete.POSITION_ID])
                .club_id(to_build[Athlete.CLUB_ID])
                .played_the_game(to_build[Athlete.PLAYED_THE_GAME])
                .year(2023)
                .build())
    
    assert expected == athlete.to_save()
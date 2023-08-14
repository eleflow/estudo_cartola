import datetime
import logging
import json
import pandas
from pandas import DataFrame


from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.python import PythonOperator

from cartola_tasks.candidates import Candidates
from cartola_requests.config import Config
from cartola_requests.requesters.athlete_requester import AthleteRequester
from cartola_requests.requesters.clubs_requester import ClubsRequester
from cartola_requests.requesters.matches_requester import MatchesRequester
from cartola_requests.requesters.market_requester import MarketRequester
from cartola_requests.requesters.chosen_requester import ChosenRequester
from cartola_requests.requesters.requester import Requester

from cartola_requests.database.athletes_repository import AthletesRepository
from cartola_requests.database.clubs_repository import ClubsRepository
from cartola_requests.database.matches_repository import MatchesRepository
from cartola_requests.database.market_repository import MarketRepository
from cartola_requests.database.chosen_repository import ChosenRepository
from cartola_requests.database.mongodb_api import MongoDBAPI

logger = logging.getLogger(__name__)


def get_turn():
    return Requester().last_turn()


def get_clubs(ti):
    return ClubsRequester().clubs()


def get_athletes(ti):
    turn = ti.xcom_pull(task_ids="get_turn")
    athletes = []

    for t in range(1, turn):
        athletes.extend(AthleteRequester(t).athletes())

    return athletes


def get_matches(ti):
    turn = ti.xcom_pull(task_ids="get_turn")

    matches = []

    for t in range(1, turn):
        matches.extend(MatchesRequester(t).matches())

    return matches


def get_market():
    return MarketRequester().market()


def get_chosen(ti):
    turn = ti.xcom_pull(task_ids="get_turn")
    return ChosenRequester(turn).most_chosen()


def write_athletes(ti):
    df = __get_dataframe__(ti, "get_athletes")
    df.to_csv("/opt/cartola/athletes.csv")


def write_clubs(ti):
    df = __get_dataframe__(ti, "get_clubs")
    df.to_csv("/opt/cartola/clubs.csv")


def write_matches(ti):
    df = __get_dataframe__(ti, "get_matches")
    df.to_csv("/opt/cartola/matches.csv")


def __get_dataframe__(ti, task_id) -> DataFrame:
    data = ti.xcom_pull(task_ids=task_id)
    logging.info(f"List of Dict>>> {data}")
    return pandas.DataFrame.from_dict(data)


def save_athletes(ti):
    data = ti.xcom_pull(task_ids="get_athletes")
    repo = AthletesRepository()
    for athlete in data:
        repo.upsert_one(athlete)


def save_clubs(ti):
    has_clubs_for_year = ti.xcom_pull(task_ids="empty_clubs_for_year")
    if not has_clubs_for_year:
        data = ti.xcom_pull(task_ids="get_clubs")
        repo = ClubsRepository()
        for club in data:
            repo.insert_one(club)


def save_matches(ti):
    data = ti.xcom_pull(task_ids="get_matches")
    repo = MatchesRepository()
    for match in data:
        repo.upsert_one(match)


def save_market(ti):
    data = ti.xcom_pull(task_ids="get_market")
    repo = MarketRepository()
    for market in data:
        repo.upsert_one(market)


def save_chosen(ti):
    data = ti.xcom_pull(task_ids="get_chosen")
    repo = ChosenRepository()
    for chosen in data:
        repo.upsert_one(chosen)


def create_candidates_dataframe(ti):
    athletes = ti.xcom_pull(task_ids="get_athletes")
    clubs = ti.xcom_pull(task_ids="get_clubs")
    matches = ti.xcom_pull(task_ids="get_matches")
    market = ti.xcom_pull(task_ids="get_market")
    turn = ti.xcom_pull(task_ids="get_turn")
    chosen = ti.xcom_pull(task_ids="get_chosen")
    next_matches = MatchesRequester(turn).matches()

    candidates = Candidates()
    data = candidates.lista_jogadores_candidatos(matches, athletes, clubs, next_matches, market, turn, chosen)

    repo = MongoDBAPI()
    for idx, line in data.iterrows():
        filter = candidates.get_candidates_filter(line)
        row = candidates.get_candidates_data(line)
        repo.upsert_one("candidates", filter, row)


def empty_clubs_for_year():
    year = datetime.date.today().year
    response = ClubsRepository().find_one({"year": year})
    return None if response is None else json.dumps(response["year"])


with DAG("cartola", start_date=Config.instance().get_start_data(), schedule_interval=Config.instance().get_schedule_interval(), catchup=False) as dag:
    get_turn = PythonOperator(task_id="get_turn", python_callable=get_turn)
    empty_clubs_for_year = PythonOperator(task_id="empty_clubs_for_year", python_callable=empty_clubs_for_year)
    get_clubs = PythonOperator(task_id="get_clubs", python_callable=get_clubs)
    get_athletes = PythonOperator(task_id="get_athletes", python_callable=get_athletes)
    get_matches = PythonOperator(task_id="get_matches", python_callable=get_matches)
    get_market = PythonOperator(task_id="get_market", python_callable=get_market)
    get_chosen = PythonOperator(task_id="get_chosen", python_callable=get_chosen)

    dummy_operation = DummyOperator(task_id = 'dummy_operation')

    save_clubs = PythonOperator(task_id="save_clubs", python_callable=save_clubs)
    save_athletes = PythonOperator(task_id="save_athletes", python_callable=save_athletes)
    save_matches = PythonOperator(task_id="save_matches", python_callable=save_matches)
    save_market = PythonOperator(task_id="save_market", python_callable=save_market)
    save_chosen = PythonOperator(task_id="save_chosen", python_callable=save_chosen)
    create_candidates_dataframe = PythonOperator(task_id="create_candidates_dataframe", python_callable=create_candidates_dataframe)

    get_turn >> get_athletes >> save_athletes
    get_turn >> get_matches >> save_matches
    get_turn >> get_market >> save_market
    empty_clubs_for_year >> get_turn >> get_clubs >> save_clubs
    get_turn >> get_chosen >> save_chosen
    [save_athletes, save_matches, save_market, save_clubs, save_chosen] >> dummy_operation >> create_candidates_dataframe

    #Modo debug
    #get_turn >> get_athletes
    #get_turn >> get_matches
    #get_turn >> get_market
    #empty_clubs_for_year >> get_turn >> get_clubs
    #[get_athletes, get_matches, get_market, get_clubs, get_chosen] >> dummy_operation >> create_candidates_dataframe

    #write_clubs = PythonOperator(task_id="write_clubs", python_callable=write_clubs)
    #write_athletes = PythonOperator(task_id="write_athletes", python_callable=write_athletes)
    #write_matches = PythonOperator(task_id="write_matches", python_callable=write_matches)
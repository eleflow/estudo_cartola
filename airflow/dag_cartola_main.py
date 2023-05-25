import datetime
import logging
import pandas
from pandas import DataFrame


from airflow import DAG
from  airflow.operators.dummy import DummyOperator
from airflow.operators.python import PythonOperator

from cartola_requests.config import Config
from cartola_requests.requesters.athlete_requester import AthleteRequester
from cartola_requests.requesters.clubs_requester import ClubsRequester
from cartola_requests.requesters.matches_requester import MatchesRequester
from cartola_requests.requesters.market_requester import MarketRequester
from cartola_requests.requesters.requester import Requester

from cartola_requests.database.athletes_repository import AthletesRepository
from cartola_requests.database.clubs_repository import ClubsRepository
from cartola_requests.database.matches_repository import MatchesRepository
from cartola_requests.database.market_repository import MarketRepository

logger = logging.getLogger(__name__)


def get_turn():
    return Requester().last_turn()

def empty_clubs_for_year():
    repo = ClubsRepository()
    year = datetime.date.today().year
    response = repo.find_one({"year": year})
    return str(response)


def get_clubs(ti):
    response = ti.xcom_pull(task_ids="empty_clubs_for_year")
    if not response:
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
    return MarketRequester.market()


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
    response = ti.xcom_pull(task_ids="empty_clubs_for_year")
    if not response:
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


with DAG("cartola", start_date=Config.instance().get_start_data(), schedule_interval=Config.instance().get_schedule_interval(), catchup=False) as dag:
    get_turn = PythonOperator(task_id="get_turn", python_callable=get_turn)
    empty_clubs_for_year = PythonOperator(task_id="empty_clubs_for_year", python_callable=empty_clubs_for_year)
    get_clubs = PythonOperator(task_id="get_clubs", python_callable=get_clubs)
    get_athletes = PythonOperator(task_id="get_athletes", python_callable=get_athletes)
    get_matches = PythonOperator(task_id="get_matches", python_callable=get_matches)
    get_market = PythonOperator(task_id="get_market", python_callable=get_market)

    dummy_operation = DummyOperator(task_id = 'dummy_operation')

    #write_clubs = PythonOperator(task_id="write_clubs", python_callable=write_clubs)
    #write_athletes = PythonOperator(task_id="write_athletes", python_callable=write_athletes)
    #write_matches = PythonOperator(task_id="write_matches", python_callable=write_matches)

    save_clubs = PythonOperator(task_id="save_clubs", python_callable=save_clubs)
    save_athletes = PythonOperator(task_id="save_athletes", python_callable=save_athletes)
    save_matches = PythonOperator(task_id="save_matches", python_callable=save_matches)
    save_market = PythonOperator(task_id="save_market", python_callable=save_market)

    get_turn >> [get_athletes, get_matches, get_market] >> dummy_operation >> [save_athletes, save_matches, save_market]
    empty_clubs_for_year >> get_clubs >> save_clubs
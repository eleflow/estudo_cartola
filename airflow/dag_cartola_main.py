import logging
import pandas
from pandas import DataFrame


from airflow import DAG
from  airflow.operators.dummy import DummyOperator
from airflow.operators.python import PythonOperator

from cartola_requests.config import Config
from cartola_requests.requesters.requester import Requester
from cartola_requests.requesters.clubs_requester import ClubsRequester
from cartola_requests.requesters.athlete_requester import AthleteRequester
from cartola_requests.requesters.matches_requester import MatchesRequester

logger = logging.getLogger(__name__)


def get_turn():
    return Requester().last_turn()


def get_clubs():
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


def write_clubs(ti):
    df = __get_dataframe__(ti, "get_clubs")
    df.to_csv("/opt/cartola/clubs.csv")


def write_athletes(ti):
    df = __get_dataframe__(ti, "get_athletes")
    df.to_csv("/opt/cartola/athletes.csv")


def write_matches(ti):
    df = __get_dataframe__(ti, "get_matches")
    df.to_csv("/opt/cartola/matches.csv")


def __get_dataframe__(ti, task_id) -> DataFrame:
    data = ti.xcom_pull(task_ids=task_id)
    logging.info(f"List of Dict>>> {data}")
    return pandas.DataFrame.from_dict(data)


with DAG("cartola", start_date=Config.instance().get_start_data(), schedule_interval=Config.instance().get_schedule_interval(), catchup=False) as dag:
    get_turn = PythonOperator(task_id="get_turn", python_callable=get_turn)
    get_clubs = PythonOperator(task_id="get_clubs", python_callable=get_clubs)
    get_athletes = PythonOperator(task_id="get_athletes", python_callable=get_athletes)
    get_matches = PythonOperator(task_id="get_matches", python_callable=get_matches)

    dummy_operation = DummyOperator(task_id = 'dummy_operation')

    write_clubs = PythonOperator(task_id="write_clubs", python_callable=write_clubs)
    write_athletes = PythonOperator(task_id="write_athletes", python_callable=write_athletes)
    write_matches = PythonOperator(task_id="write_matches", python_callable=write_matches)

    get_turn >> [get_clubs, get_athletes, get_matches] >> dummy_operation >> [write_clubs, write_athletes, write_matches]
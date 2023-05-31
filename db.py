import os
from datetime import datetime

import psycopg2
from dotenv import load_dotenv

load_dotenv()

def getConn():
    return psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        database=os.getenv("DB_DATABASE"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASS")
    )


def getUserId(name, groupCode):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "select id from users.users where name = %s and group_code = %s"
            data = (name, groupCode,)

            cursor.execute(sql, data)
            id = cursor.fetchone()
            return id if id == None else id[0]


def addUser(name, groupCode):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "insert into users.users (name, group_code) values (%s, %s)"
            data = (name, groupCode,)

            cursor.execute(sql, data)
            conn.commit()


def getGroupMemberNames(groupCode, name):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "select name from users.users where group_code = %s and name != %s"
            data = (groupCode,name,)

            cursor.execute(sql, data)
            names = cursor.fetchall()
            return names


def getTopDays(groupCode):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "SELECT date, COUNT(date) as popularity FROM entries.entries INNER JOIN users.users ON entries.entries.user_id = users.users.id WHERE group_code = %s GROUP BY group_code, date ORDER BY popularity DESC LIMIT 10;"
            data = (groupCode,)

            cursor.execute(sql, data)
            dates = cursor.fetchall()
            return dates


def addDates(dates, userid):
    with getConn() as conn:
        with conn.cursor() as cursor:
            for d in dates:
                dateInQuestion = datetime.fromisoformat(d).date()
                sql = "insert into entries.entries (user_id, date, available) values (%s, %s, %s)"
                data = (userid, dateInQuestion, True)

                cursor.execute(sql, data)

            conn.commit()
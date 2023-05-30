import os

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
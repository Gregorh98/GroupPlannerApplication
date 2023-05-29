import psycopg2


def getConn():
    return psycopg2.connect(
        host="localhost",
        port="5432",
        database="GroupMeetOrganiser",
        user="postgres",
        password="alm151ntL"
    )


def getUserId(name, groupCode):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "select id from users.users where name = %s and group_code = %s"
            data = (name, groupCode,)

            cursor.execute(sql, data)
            id = cursor.fetchone()[0]
            return id


def addUser(name, groupCode):
    with getConn() as conn:
        with conn.cursor() as cursor:
            sql = "insert into users.users (name, group_code) values (%s, %s)"
            data = (name, groupCode,)

            cursor.execute(sql, data)
            conn.commit()

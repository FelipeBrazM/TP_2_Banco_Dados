from server_info import *
import mysql.connector

class MySQLConnection:
    @staticmethod
    def create_connection() -> mysql.connector.connection_cext.CMySQLConnection:
        conn = mysql.connector.connect(
            host=HOST,
            user=USER,
            password=PASSWORD,
            database=DATABASE,
            port=PORT
        )
        return conn

    @staticmethod
    def close_connection(conn):
        conn.close()


if __name__ == '__main__':
    conn = MySQLConnection.create_connection()
    MySQLConnection.close_connection(conn)

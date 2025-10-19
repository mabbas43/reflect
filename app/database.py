import sqlite3
import os

DB_PATH = os.path.join(os.getcwd(), "app.db")

def init_db():
    conn = sqlite3.connect(DB_PATH)
    conn.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT)")
    conn.close()

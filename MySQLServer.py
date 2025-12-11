import mysql.connector

db = mysql.connector.connect(
    user="root",
    password="Sql12ab83",
    host="localhost"
)
print("Connected to MySQL Server")
cursor = db.cursor()
database_name = "alx_book_store"
try:
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")
    print(f"Database '{database_name}' created successfully!")
except mysql.connector.Error as err:
    print(f"Fail creating database: {err}")

db.commit()
cursor.close()
db.close()
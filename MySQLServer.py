import mysql.connector

db = mysql.connector.connect(
    user="root",
    password="Sql12ab83",
    host="localhost"
)
print("Connected to MySQL Server")
cursor = db.cursor()
try:
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database alx_book_store created successfully!")
except mysql.connector.Error as err:
    print(f"Fail creating database: {err}")

db.commit()
cursor.close()
db.close()
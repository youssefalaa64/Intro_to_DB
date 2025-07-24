import mysql.connector 
def connect():
    try:
        mydb = mysql.connector.connect(  host="localhost",
        user="root",
        password="Asdel1-Asdel1"
        )
        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATEBASE alx_book_store IF NOT EXISTS")
        print("Database alx_book_store created successfully!")
    except mysql.connector.Error :
        print(f"error : {mysql.connector.Error}")
    finally:
        mycursor.close()
        mydb.close()
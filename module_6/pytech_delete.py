from inspect import findsource
from pymongo import MongoClient
import pymongo
url ="mongodb+srv://admin:admin@cluster0.n088j.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
students=db.students
docs = db.students.find({})

#find method
def findStudent():
    print("\n--DISPLAYING STUDENTS DOCUMENTS--")
    for doc in docs:
        print("Student ID: " + doc["student_id"] + "\nFirst Name: " + doc["first_name"] + "\nLast Name: " + doc["last_name"] + "\n")

foo = {"student_id": "1010",
        "first_name": "Foo",
        "last_name": "Fighter"}
#foo_student_id = students.insert_one(foo).inserted_id

query = {"student_id": "1010"}
students.delete_one(query)
findStudent()
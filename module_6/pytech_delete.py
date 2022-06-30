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
    print("\n--DISPLAYING STUDENTS DOCUMENTS FROM find() QUERY--")
    for doc in docs:
        print("Student ID: " + doc["student_id"] + "\nFirst Name: " + doc["first_name"] + "\nLast Name: " + doc["last_name"] + "\n")

def insertStudent():
    foo = {"student_id": "1010",
            "first_name": "Foo",
            "last_name": "Fighter"}
    foo_student_id = students.insert_one(foo).inserted_id
    print("--INSERT STATEMENTS--")
    print("Inserted student record 1010 into the students collection with document_id")
    print(foo_student_id)
    

def findUpdatedStudent():
    print("\n--DISPLAYING NEW STUDENT LIST DOC--")
    for doc in docs:
        print("Student ID: " + doc["student_id"] + "\nFirst Name: " + doc["first_name"] + "\nLast Name: " + doc["last_name"] + "\n")

def deleteStudent():
    query = {"student_id": "1010"}
    students.delete_one(query)
    print("--DELETED STUDENT ID: 1010--")
    for doc in docs:
        print("Student ID: " + doc["student_id"] + "\nFirst Name: " + doc["first_name"] + "\nLast Name: " + doc["last_name"] + "\n")


findStudent()
insertStudent()
findUpdatedStudent()
deleteStudent()
input("End of program, press any key to continue...")
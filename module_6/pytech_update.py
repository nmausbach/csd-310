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

#find method
def findOneStudent(x):
    doc = db.students.find_one(x)
    print("--DISPLAYING UPDATED STUDENT DOCUMENT--")
    print("Student ID: " + doc["student_id"] + "\nFirst Name: " + doc["first_name"] + "\nLast Name: " + doc["last_name"] + "\n")

#update method
def updateStudent():
    student = {"student_id": "1007"}
    newValue = {"$set": {"last_name": "Smith"}}
    students.update_one(student, newValue)
    
findStudent()
updateStudent()
findOneStudent({"student_id": "1007"})
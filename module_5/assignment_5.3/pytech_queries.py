from pymongo import MongoClient
import pymongo
url ="mongodb+srv://admin:admin@cluster0.n088j.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
students=db.students

#find method
docs = db.students.find({})
for doc in docs:
    print(doc)
    

#find one method
one = students.find_one({"student_id": "1007"})
print()
print("find one")
print(one)
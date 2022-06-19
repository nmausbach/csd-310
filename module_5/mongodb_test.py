from pymongo import MongoClient
import pymongo
url ="mongodb+srv://admin:admin@cluster0.n088j.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
print(db.list_collection_names())

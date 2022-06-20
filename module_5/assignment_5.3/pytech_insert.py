from pymongo import MongoClient
import pymongo
url ="mongodb+srv://admin:admin@cluster0.n088j.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
students=db.students
fred = {"student_id": "1007",
        "first_name": "Fred",
        "last_name": "Durst"
        # "enrollments": [
        #     {
        #     "term": "Session 2",
        #     "gpa": "4.0",
        #     "start_date": "May 24, 2021",
        #     "courses": [
        #         {
        #             "course_id": "CSD310",
        #             "description": "Database Development and Use",
        #             "instructor": "Professor Sampson",
        #             "grade": "A+"
        #         },
        #         {
        #             "course_id": "CSD320",
        #             "description": "Programming with Java",
        #             "instructor": "Professor Payne",
        #             "grade": "A+"
        #         }
        #     ]
        #     }
        # ]
    }
            

mike = {"student_id": "1008",
        "first_name": "Mike",
        "last_name": "Tyson"
        # "enrollments": [
        #     {
        #     "term": "Session 2",
        #     "gpa": "4.0",
        #     "start_date": "May 24, 2021",
        #     "courses": [
        #         {
        #             "course_id": "CSD310",
        #             "description": "Database Development and Use",
        #             "instructor": "Professor Sampson",
        #             "grade": "A+"
        #         },
        #         {
        #             "course_id": "CSD320",
        #             "description": "Programming with Java",
        #             "instructor": "Professor Payne",
        #             "grade": "A+"
        #         }
        #     ]
        #     }
        # ]
    }

kid = {"student_id": "1009",
        "first_name": "Kid",
        "last_name": "Rock"
        # "enrollments": [
        #     {
        #     "term": "Session 2",
        #     "gpa": "4.0",
        #     "start_date": "May 24, 2021",
        #     "courses": [
        #         {
        #             "course_id": "CSD310",
        #             "description": "Database Development and Use",
        #             "instructor": "Professor Sampson",
        #             "grade": "A+"
        #         },
        #         {
        #             "course_id": "CSD320",
        #             "description": "Programming with Java",
        #             "instructor": "Professor Payne",
        #             "grade": "A+"
        #         }
        #     ]
        #     }
        # ]
    }
fred_student_id = students.insert_one(fred).inserted_id
mike_student_id = students.insert_one(mike).inserted_id
kid_student_id = students.insert_one(kid).inserted_id
print(fred_student_id)
print(mike_student_id)
print(kid_student_id)

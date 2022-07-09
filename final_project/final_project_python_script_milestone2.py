import mysql.connector
from mysql.connector import errorcode
config ={
    "user" : "root",
    "password": "fastBALL1!",
    "host" : "127.0.0.1",
    "database" : "final_project",
    "raise_on_warnings" : True
}
db=mysql.connector.connect(**config)
cursor=db.cursor()
query = "SELECT _revenue, business_name, _address FROM business"
cursor.execute(query)
businesses=cursor.fetchall()
print("-- DISPLAYING BUSINESS RECORDS --")
for business in businesses:
    print(" Revenue: {}\n Business Name and Year: {} \n Address:  {}\n".format(business[0], business[1], business[2]))

query = "SELECT employee_id, first_name, last_name, job_code, _salary FROM employee"
cursor.execute(query)
employees=cursor.fetchall()
print("-- DISPLAYING EMPLOYEE RECORDS --")
for employee in employees:
    print(" Employee ID: {}\n First Name: {} \n Last Name:  {}\n Job Code:  {}\n Salary:   {}\n".format(employee[0], employee[1], employee[2], employee[3], employee[4]))

query = "SELECT _functions, _title FROM roles"
cursor.execute(query)
role=cursor.fetchall()
print("-- DISPLAYING ROLES--")
for roles in role:
    print(" Functions: {} \n Title:  {}\n".format(roles[0], roles[1]))

query = "SELECT client_id, _name, _company FROM clients"
cursor.execute(query)
client=cursor.fetchall()
print("-- DISPLAYING CLIENTS--")
for clients in client:
    print(" Client ID: {}\n Name: {} \n Company:  {}\n".format(clients[0], clients[1], clients[2])) 

query = "SELECT _value, _name, _code, transaction_id FROM transactions"
cursor.execute(query)
trans=cursor.fetchall()
print("-- DISPLAYING TRANSACTIONS--")
for transactions in trans:
    print(" Value: {}\n Name: {} \n Code:  {},\n Client ID:   {}\n".format(transactions[0], transactions[1], transactions[2],transactions[3]))

query = "SELECT asset_id,_name,_value FROM assets"
cursor.execute(query)
assetss=cursor.fetchall()
print("-- DISPLAYING ASSETS--")
for assets in assetss:
    print(" Client ID: {}\n Name: {} \n Value:  {}\n".format(assets[0], assets[1], assets[2]))     

cursor.close()
db.close()
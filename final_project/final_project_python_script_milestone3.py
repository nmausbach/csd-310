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

query = "SELECT _client_id, _name,_company, _dateJoined FROM clients WHERE _dateJoined > (DATE_SUB(curdate(), INTERVAL 6 MONTH)) ORDER BY _dateJoined desc"
cursor.execute(query)
businesses=cursor.fetchall()
print("------------------------------------------------------------\n  DISPLAYING CLIENTS THAT HAVE BEEN ADDED IN PAST 6 MONTHS \n------------------------------------------------------------")
for business in businesses:
    print(" Client ID: {}\n Name: {} \n Company: {}\n Date Joined: {}\n".format(business[0], business[1], business[2], business[3]))


query = "SELECT c._company, a._value FROM clients c LEFT JOIN assets a ON a._asset_id = c._client_id GROUP BY c._company;"
query2 = "SELECT ROUND(AVG(_value),2) AS Average FROM assets;"
cursor.execute(query)
company=cursor.fetchall()
cursor.execute(query2)
average=cursor.fetchall()
print("---------------------------------------------------------------------\n  AVERAGE AMOUNT OF ASSETS (IN CURRENCY) FOR THE ENTIRE CLIENT LIST \n---------------------------------------------------------------------")
for companies in company:
    print(" Company: {}\n Value: ${} \n".format(companies[0], companies[1]))
print("==========================")
for averages in average:
    print("Average Total: ${}\n".format(averages[0]));

query = "SELECT c._name, SUM(t._code) AS codes, t._date FROM clients c LEFT JOIN transactions t ON t._transaction_id = c._client_id WHERE c._client_id = 1 GROUP BY c._name HAVING  codes >= 10;"
cursor.execute(query)
transaction=cursor.fetchall()
print("---------------------------------------------------------------------\n  CLIENTS HAVING A HIGH NUMBER (MORE THAN 10 A MONTH) OF TRANSACTIONS \n---------------------------------------------------------------------")
for transactions in transaction:
    print(" Name: {}\n Number of Transactions: {} \n Date: {}\n".format(transactions[0], transactions[1], transactions[2],))
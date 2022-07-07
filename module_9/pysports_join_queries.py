import mysql.connector
from mysql.connector import errorcode

config = {
    "user": "root",
    "password": "fastBALL1!",
    "host": "127.0.0.1",
    "database": "pysports",
    "raise_on_warnings": True
}
db = mysql.connector.connect(**config)
cursor = db.cursor()

cursor.execute("SELECT player_id, first_name, last_name, team_name FROM pysports.player INNER JOIN team ON player.team_id = team.team_id")
team = cursor.fetchall()
print("-- DISPLAYING TEAM RECORDS --\n")
for teams in team:
     print("Player ID: {}\nFirst Name: {}\nLast Name: {}\nTeam Name: {}\n".format(teams[0], teams[1], teams[2], teams[3]))

input("\n\n Press any key to continue...")
db.close()
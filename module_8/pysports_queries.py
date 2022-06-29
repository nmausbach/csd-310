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

cursor.execute("SELECT team_id, team_name, mascot FROM pysports.team")
team = cursor.fetchall()
print("-- DISPLAYING TEAM RECORDS --\n")
for teams in team:
    print("Team ID: {}\nTeam Name: {}\nMascot: {}\n".format(teams[0], teams[1], teams[2]))

cursor.execute("SELECT player_id, first_name, last_name, team_id FROM pysports.player")
player = cursor.fetchall()
print("-- DISPLAYING PLAYER RECORDS --\n")
for players in player:
    print("Player ID: {}\nFirst Name: {}\nLast Name: {}\nTeam ID: {}\n".format(players[0], players[1], players[2], players[3]))
input("\n\n Press any key to continue...")
db.close()
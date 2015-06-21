import time
import datetime
import string
import sys
import psycopg2
from random import randint

ts = time.time()
#example string
#st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')

date = datetime.datetime.now()
date_orig = date

#args
intervallo = sys.argv[1]
numProg = sys.argv[2]

#db Parameters
id = 1
movie = 1
sala = 1

#db Connection
conn = psycopg2.connect("dbname=movies user=movies")
#cursor to perform database operations
cur = conn.cursor()

strtmp = ""

##### SHOW #####
for movie in range(1,31):
	for i in range(string.atoi(numProg)):
		strtmp = "insert into \"show\" (id, movie_id, theater_id, date_time) VALUES('"+str(id)+"', '"+str(movie)+"', '"+str(sala)+"', %s);"
		cur.execute(strtmp, (date.strftime("%Y-%m-%d %H:%M:%S"), ))
		date = date + datetime.timedelta(minutes = 5)
		id +=1

	if((sala+1)%5 == 0):
		sala = 1
		date = date + datetime.timedelta(minutes = 1)
		date_orig = date
	else:
		date = date_orig
		sala += 1
conn.commit()


#### RESERVATIONS ####
MAXSHOW = 30* string.atoi(numProg)

user = randint(1,15)

price = 1

show = 1
giro = 1
sala = 1
posto = randint(1,4)

while(1):
	posto = posto + randint(1,10)
	if(posto > 50 ):
		giro = 1
		show += 1
		if((sala+1)%5 == 0):
			sala = 1
		else:
			sala += 1
		if(show == MAXSHOW-1):
			break
		posto = randint(1,4)
		
	strtmp = "insert into \"reservation\" (user_id, show_id, price_id, seat_id) VALUES ('"+str(user)+"','"+str(show)+"','"+str(price)+"','"+str(posto)+"');\n"
	cur.execute(strtmp)
	user = randint(1,15)
	giro+=1
	if(giro == 10):
		giro == 1
		show += 1
		if( (sala+1)%5 == 0):
			sala = 1
		else:
			sala += 1
		if(show == MAXSHOW-1):
			break
		posto = randint(1,4)
	 
	
conn.commit()
cur.close()
conn.close()


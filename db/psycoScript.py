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

#query
strtmp = ""

##### SHOW #####
for movie in range(1,31):
	for i in range(string.atoi(numProg)):
		strtmp = "insert into \"show\" (id, movie_id, theater_id, date_time) VALUES('"+str(id)+"', '"+str(movie)+"', '"+str(sala)+"', %s);"
		cur.execute(strtmp, (date.strftime("%Y-%m-%d %H:%M:%S"), ))
		#adding interval
		date = date + datetime.timedelta(minutes = int(intervallo))
		#incrementing id
		id +=1
	#theater control
	if((sala+1)%5 == 0):
		sala = 1
		date = date + datetime.timedelta(minutes = 1)
		date_orig = date
	else:
		#refreshing date, different theaters can have a show at the same moment
		date = date_orig
		sala += 1
conn.commit()


#### RESERVATIONS ####
# numProg shows for each film
MAXSHOW = 30* string.atoi(numProg)

#choosing random user
user = randint(1,15)
#db parameters
price = 1
show = 1
sala = 1
posto = randint(1,4)
#number of reservations (10 in this case)
giro = 1
idposto = posto

while(1):
	#choosing seat
	posto = posto + randint(1,10)
	#max of 50 seats
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
	idposto = posto
	if(sala == 2):
		idposto = idposto + 50
	if(sala == 3):
		idposto = idposto + 106
	if(sala == 4):
		idposto = idposto + 159
	strtmp = "select exist from seat where id = "+str(idposto)
	cur.execute(strtmp)
	x = cur.fetchone()
	
	if(x[0] == True):
		strtmp = "insert into \"reservation\" (user_id, show_id, price_id, seat_id) VALUES ('"+str(user)+"','"+str(show)+"','"+str(price)+"','"+str(idposto)+"');\n"
		cur.execute(strtmp)
	user = randint(1,15)
	giro+=1
	#10 reservations? -> reset
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


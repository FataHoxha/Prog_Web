-- Query posti più gettonati
select seat_id,count(seat_id) AS numOfSeat from reservation group by seat_id order by numOfSeat desc;
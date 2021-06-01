/* AVG
COUNT
MIN
MAX
SUM
GROUP BY
SUM
ORDER BY */
Syntax: select AVG(columnname)
		from Tablename
		where something = something
		
/*output  the average  price of all books written between 1950 and 1960*/
select avg(price)
from book
where yearwritten between 1950 and 1960;

/*output average starrating  for 1998 and 1999*/
select avg(starrating)
from rating
where ratingdate between '01-JAN-1998' AND '31-DEC-1999';

/*Output the number of titles in the book table*/

select count (title)
from book

/* output number of eid is employee table */
select count (eid)
from editor

/*output number of affliates */
select count (AFFILIATION)
from editor

/* output max  and min book price */
select max (price)
from book

select min (price)
from book

/* out put the price of fallowing book codes 107,108,109,110 */
select sum (price) from book  /* this entire sum of that column*/


select sum (price)
from book 
where bookcode in (107,108,109,110);


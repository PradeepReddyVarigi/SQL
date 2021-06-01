select title,lastn,price,yearwritten from book where yearwritten between 1950 and 1970 and price between 150 and 200;
/* output the title and last name of all books where the lastname begins with "W" */
select title,lastn
from book
where lastn like 'W%';

select title,lastn
from book
where lastn like 'Wo%';

/* output title and lastname of all books where title contains 198*/
select title,lastn
from book
where title like '198%';

/* output editor lastname with last name with 'a' as the second  value of the last name*/
select * from editor;

select lastn
from editor 
where lastn like '_a%';

/* output the title, last name and price of the book written by authors whose last name begins with F and ends with d */
select title,lastn,price
from book
where lastn like 'F%d';

/*output the first,lastname of authors whose lastname contains the letters 's' as the fourth letter*/
select lastn,firstn from book where lastn like '___s%';

/*output firstn,lastn and title of all books that contains  the word man */
select firstn,lastn,title from book where title like '%Man%';

/*output firstn,lastname, and affliation of all editors  whose last name ends with y*/
select firstn,lastn, affiliation from editor where lastn like '%y';

/*output editor firstn,lastn and affiliation is the of editor whose affliation is newyork times or new york post with out using  either equal or*/4
select firstn,lastn ,affiliation from editor where affiliation in ('NYT','NYP');











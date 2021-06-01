REM   Script: All Code
REM   Table creation
/* Creating a book table */
CREATE TABLE Book ( 
bookCode NUMERIC (3) NOT NULL,  
title VARCHAR2 (30) NOT NULL,  
firstN VARCHAR2 (25) NOT NULL,  
lastN VARCHAR2 (30) NOT NULL, 
yearWritten SMALLINT NOT NULL CHECK (yearWritten >= 1000 and yearWritten <=2019),  
price NUMERIC (5,2) NOT NULL,  
CONSTRAINT Book_pk PRIMARY KEY (bookCode));

/*Inserting data in book table*/
INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(101, 'To Kill A Mocking Bird', 'Harper', 'Lee', 1960, 64.00);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(102, 'The Great Gatsby', 'Scott', 'Fitzgerald', 1925, 74.55);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(103, 'A Passage To India', 'E.M.', 'Foster', 1924, 230.00);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(104, 'Invisible Man', 'Ralph', 'Elison', 1952, 136.89);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(105, 'Mrs.Dalloway', 'Virginia', 'Wolf', 1925, 135.00);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(106, 'Things Fall Apart', 'Chinua', 'Achebe', 1958, 150.65);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(107, '1984', 'George', 'Orwell', 1945, 78.00);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(108, 'The Time Machine', 'H.G.', 'Wells', 1895, 467.00);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(109, 'The Old Man and The Sea', 'Ernest', 'Hemingway', 1952, 199.45);

INSERT INTO Book (bookCode, title, firstN, lastN, yearWritten, price) 
values(110, 'A Farewell To Arms', 'Ernest', 'Hemingway', 1928, 160.50);
/* Creating a editor table */

CREATE TABLE Editor ( 
eID NUMERIC (3) NOT NULL,  
firstN VARCHAR2 (25) NOT NULL, 
lastN VARCHAR2 (30) NOT NULL, 
affiliation VARCHAR2 (25), 
CONSTRAINT Editor_pk PRIMARY KEY (eID));
/*Inserting data in editor table*/

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (201, 'Jack', 'Collins', 'NYT');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (202, 'Anna', 'Matthews', 'WP');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (203, 'Tim', 'Stevens', 'Vogue');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (204, 'Barry', 'Shaw', null);

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (205, 'Chris', 'Richards', 'NYT');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (206, 'Linda', 'Thompson', 'Chronicle');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (207, 'Joe', 'Anderson', 'NYP');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (208, 'Harry', 'Freeman', 'NYT');

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (209, 'Ellen', 'Murray', null);

INSERT INTO Editor (eID, firstN, lastN, affiliation) 
values (210, 'Nancy', 'Thompson', 'NYP');
/* Creating a Rating table */
CREATE TABLE Rating( 
code CHAR(4) NOT NULL,  
eID NUMERIC(3) NOT NULL,  
bookCode NUMERIC(3) NOT NULL, 
starRating NUMERIC(1) CHECK (starRating <= 5) NOT NULL,  
ratingDate DATE, 
CONSTRAINT Rating_pk PRIMARY KEY (code), 
CONSTRAINT Rating_eID_fk FOREIGN KEY (eID) REFERENCES Editor(eID), 
CONSTRAINT Rating_bookCode_fk FOREIGN KEY(bookCode) REFERENCES Book(bookCode));

/*Inserting data in ranking table*/

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R1', 201, 101, 2, '13-NOV-92');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R2', 201, 101, 4, '15-JAN-94');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R3', 202, 106, 4, NULL);

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R4', 203, 103, 2, '01-FEB-98');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R5', 203, 108, 4, '01-MAR-01');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R6', 203, 108, 2, '30-JUN-05');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R7', 204, 101, 3, '23-OCT-99');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R8', 205, 103, 3, '16-FEB-04');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R9', 205, 104, 2, '16-FEB-04');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R10', 205, 108, 4, NULL);

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R11', 206, 107, 3, '02-JUL-99');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R12', 206, 106, 5, '21-DEC-97');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R13', 208, 104, 3, '30-JUN-05');

INSERT INTO Rating (code, eID, bookCode, starRating, ratingDate) 
values ('R14', 209, 104, 3, '30-JUN-05');


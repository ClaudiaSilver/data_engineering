CREATE DATABASE IF NOT EXISTS myLibrary;
USE myLibrary;
CREATE TABLE books (
ISBN varchar(13),
author_surname varchar(50),
author_first_name varchar(50),
title varchar(200),
year year);
ALTER TABLE books
ADD CONSTRAINT PK_book PRIMARY KEY (ISBN);
ALTER TABLE books
RENAME COLUMN year TO pub_year;
desc books;
insert into books
(ISBN, author_surname, author_first_name, title, pub_year)
values(0014939852, 'Atwood', 'Margaret', 'Alias Grace', 1990);
select *
from books;
INSERT INTO	books (
ISBN,
author_surname,
author_first_name,
title,
pub_year
)
VALUES
(
0014939837, 
'Fry',
'Stephen',
'Moab is my Washpot',
1997
),
(
0039939837, 
'Smith',
'Ali',
'Autumn',
2018
),

(
0039930137, 
'Smith',
'Ali',
'Winter',
2019
),
(
0088939837, 
'Smith',
'Ali',
'Spring',
2019
),
(
0039099837, 
'Smith',
'Ali',
'Summer',
2020
),
(
0004939837, 
'Carroll',
'Sean',
'Something Deeply Hidden',
2020
),
(
0039889837, 
'Morrison',
'Toni',
'Beloved',
2005
),
(
0011939837, 
'Barnes',
'Julian',
'Flaubert\'s Parrot',
1988
),
(
0039479837, 
'Hollinghurst',
'Alan',
'The Line of Beauty',
2004
);
SELECT *
FROM books;
UPDATE books
SET pub_year = 1989
WHERE ISBN = 14939852;
SELECT *
FROM books;
DELETE FROM books
WHERE pub_year = 1988;
SELECT *
FROM books;
CREATE TABLE book_sales(
Book_ISBN varchar(13) REFERENCES books(ISBN),
sold_copies int
);
desc book_sales
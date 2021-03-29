SELECT UPPERCASE(REVERSE('Why does my cat look at me with such hatred?'))

 
SELECT REPLACE(title, ' ', '->') AS Title FROM books;


SELECT
author_lname AS fordwards,
REVERSE(author_lname) AS 'backwards'
FROM books;



SELECT
UPPER
(
    CONCAT(author_fname, ' ', author_lname)
) AS 'full name in caps'
FROM books;



SELECT CONCAT
(
    title, ' was released in ', released_year
) AS 'blurb'
FROM books;



SELECT 
title AS Title,
CHAR_LENGTH(title) AS 'character count'
FROM books;




SELECT
CONCAT( SUBSTRING(title, 1, 10), '...' ) AS 'short title',
CONCAT( author_lname, ',', author_fname) AS 'author',
CONCAT( stock_quantity, ' in stock' ) AS 'quantity'
FROM books
WHERE title='American Gods' || title='A Heartbreaking Work of Staggering Genius';
 
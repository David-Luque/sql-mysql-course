-- SELECT title, released_year FROM books WHERE released_year != 2017;
-- SELECT author_lname, title FROM books WHERE author_lname != 'Harris';



-- SELECT title FROM books WHERE title NOT LIKE 'W%';



-- SELECT title, released_year FROM books WHERE released_year > 2000 ORDER BY released_year;
-- SELECT title, released_year FROM books WHERE released_year >= 2000 ORDER BY released_year;
-- SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100 ORDER BY stock_quantity DESC;
-- SELECT 99 > 1;
-- SELECT 99 > 546;
-- SELECT 'A' >= 'a'; -- -> This means that lowercase and uppercase are equivalent in mysql
-- SELECT 'A' > 'a';
-- SELECT 'a' < 'b'; 
-- SELECT 'a' >= 'b';



-- SELECT title, released_year FROM books WHERE released_year < 2000 ORDER BY released_year;
-- SELECT title, released_year FROM books WHERE released_year <= 2000 ORDER BY released_year;
-- SELECT 3 < -10; -- 0
-- SELECT -10 < -9; -- 1
-- SELECT 42 <= 42; -- 1
-- SELECT 'h' < 'p'; -- 1
-- SELECT 'Q' <= 'q'; -- 1



-- SELECT title, author_lname, released_year
-- FROM books
-- WHERE author_lname = 'Eggers' AND released_year > 2010
-- ORDER BY released_year DESC;
-- SELECT * FROM products WHERE brand = 'lego' && in_stock = 'true';
-- SELECT 1 < 5 && 7 = 9; -- false
-- SELECT -10 > -20 && 0 <= 0; -- true
-- SELECT -40 <= 0 AND 10 > 40; --false
-- SELECT 54 <= 54 && 'a' = 'A'; -- true
-- SELECT title, author_lname, released_year
-- FROM books
-- WHERE
--     author_lname = 'Eggers' AND
--     released_year > 2010 &&
--     title LIKE '%novel%'
-- ORDER BY released_year DESC;



-- SELECT title, author_lname, released_year
-- FROM books
-- WHERE author_lname = 'Eggers' || released_year > 2010;
-- SELECT 40 <= 100 || -2 > 0; -- true
-- SELECT 10 > 5 || 5 = 5; -- true
-- SELECT 'a' = 5 || 3000 > 2000; -- true
-- SELECT title, author_lname, released_year, stock_quantity
-- FROM books
-- WHERE
--     author_lname = 'Eggers' OR
--     released_year > 2010 ||
--     stock_quantity > 100
-- ;



-- SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;
-- SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year DESC;

-- SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';
-- IT WORKS BUT BETTER DO THE FOLLOWING:
-- SELECT name, birthdt FROM people
-- WHERE birthdt 
-- BETWEEN 
--     CAST('1980-01-01' AS DATETIME) 
--     AND CAST('2000-01-01' AS DATETIME);



-- SELECT author_lname, title FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- SELECT author_lname, released_year FROM books WHERE released_year IN (2017, 1985);
-- SELECT title, released_year FROM books
-- WHERE released_year NOT IN 
--     (2000, 2002, 2004, 2006, 2008, 2010, 2016, 2018, 2020);
-- SELECT title, released_year FROM books
-- WHERE released_year >= 2000 AND released_year NOT IN 
--     (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016, 2018, 2020)
-- ORDER BY released_year;
-- SELECT title, released_year FROM books
-- WHERE released_year >= 2000 AND released_year % 2 != 0
-- ORDER BY released_year;



-- SELECT  title, 
--         released_year,
--         CASE
--             WHEN released_year >= 2000 THEN 'Modern literature' 
--             ELSE '20th century literature'
--         END AS 'GENRE'
-- FROM books;

-- ITS NO NECESSARY TO SELECT THE INPUT WITHIN THE CASE STATEMENT, LIKE "stock_quantity" IN EXAMPLE BELOW
-- SELECT  title, 
--         CASE
--             WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
--             WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
--             ELSE '***'
--         END AS 'STOCK LEVEL'
-- FROM books;

-- WE CAN ALSO REDUCE A BIT MORE OUR CODE LIKE THIS:
-- SELECT  title, 
 --        CASE
--             WHEN stock_quantity <= 50 THEN '*'
--             WHEN stock_quantity <= 100 THEN '**'
--             WHEN stock_quantity <= 150 THEN '***'
--             ELSE '****'
--         END AS 'STOCK LEVEL'
-- FROM books;














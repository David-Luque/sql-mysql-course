-- SELECT COUNT(*) FROM books;

-- SELECT COUNT(author_fname) FROM books;

-- SELECT COUNT(DISTINCT(author_fname)) FROM books;

-- SELECT COUNT( DISTINCT author_lname, author_fname ) FROM books;

-- SELECT COUNT(*) FROM books WHERE title LIKE '%the%';



-- SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' ', 'book(s) released') AS 'data releases'  
-- FROM books GROUP BY released_year;



-- SELECT MIN(released_year) FROM books;

-- SELECT MIN(pages) FROM books;

-- SELECT MAX(pages) from BOOKS;

-- SELECT MAX(pages) FROM books;

-- The second query is more faster and effective; both will give the same results but the first one
-- involves 2 querys, so it's lower than second one.
-- SELECT title, pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);
-- SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;
-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;



-- SELECT author_fname, author_lname, MIN(released_year) 
-- FROM books 
-- GROUP BY author_lname, author_fname;

-- SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

-- SELECT
--     CONCAT(author_fname, ' ', author_lname) AS 'author',
--     MAX(pages) AS 'longest book'
-- FROM books
-- GROUP BY author_lname, author_fname;



-- SELECT SUM(pages) FROM books;

-- SELECT author_lname, author_fname, SUM(pages)
-- FROM books 
-- GROUP BY author_lname, author_fname
-- ORDER BY SUM(pages) DESC;



-- SELECT AVG(pages) AS average FROM books;

-- SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;












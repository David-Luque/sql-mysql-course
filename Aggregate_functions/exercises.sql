-- SELECT COUNT(*) AS 'total books' FROM books;

-- SELECT released_year, COUNT(*) AS 'released books' FROM books GROUP BY released_year;

-- SELECT SUM(stock_quantity) 'Total books in stock' FROM books;

-- S ELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT 
     CONCAT(author_fname, ' ', author_lname) AS author,
     pages
 FROM books 
 ORDER BY pages DESC LIMIT 1

-- WRONG CODE:
-- SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) FROM books GROUP BY author_lname, author_fname LIMIT 1;


-- SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;



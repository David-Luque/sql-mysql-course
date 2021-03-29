-- SELECT title, released_year FROM books WHERE released_year < 1980 ORDER BY released_year DESC;

-- SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers', 'Chabon');

-- SELECT title, released_year FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

-- SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';
-- SELECT title, author_lname 
-- FROM books 
-- WHERE SUBSTR(author_lname,1,1) = 'C' OR SUBSTR(author_lname,1,1) = 'S';
-- SELECT title, author_lname FROM books WHERE SUBSTR(author_lname,1,1) IN ('C', 'S');

-- SELECT 
--     title,
--     author_lname,
--     CASE
--         WHEN title LIKE '%stories%' THEN 'Short stories'
--         WHEN title = 'Just kids' OR title LIKE '%Heartbreaking work%' THEN 'Memoir'
--         ELSE 'Novel'
--     END AS 'TYPE'
-- FROM books;

 SELECT
     author_fname,
     author_lname,
     CASE
         WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
         ELSE CONCAT(COUNT(*), ' books')
     END AS 'COUNT'
 FROM books
 GROUP BY author_lname, author_fname;

-- SELECT COUNT(*) FROM books GROUP BY author_lname, author_fname;








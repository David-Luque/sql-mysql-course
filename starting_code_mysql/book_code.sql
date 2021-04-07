-- SELECT 
--    CONCAT
  --  (
    --    SUBSTRING(title, 1, 10),
     --   '...'
    -- ) AS 'SHORT TITLE'
-- FROM books;

-- SELECT
   -- SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
-- FROM books;

SELECT CONCAT(author_fname, REVERSE(author_lname)) FROM books;

SELECT author_lname, CHAR_LENGTH(author_lname) FROM books;

SELECT CONCAT
(
    author_fname, 
    ' is ', 
    CHAR_LENGTH(author_fname),
    ' characters long'
) AS 'long data names'
FROM books 
WHERE author_fname='Dave';



SELECT
CONCAT
(
    'mY favourite book is not ',
    LOWER(title)
) as message
FROM books;


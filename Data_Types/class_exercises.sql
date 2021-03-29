-- CREATE TABLE items( price DECIMAL(5,2) );

-- INSERT INTO items (price)
-- VALUES (7);

-- INSERT INTO items (price)
-- VALUES (7985945);

-- INSERT INTO items (price)
-- VALUES (34.88);

-- VALUES (289.9999);

-- INSERT INTO items (price)
-- VALUES (1.9999);



-- CREATE TABLE thingies
-- (
--     price FLOAT
-- );

-- insert into thingies (price)
-- VALUES (88.45);

-- insert into thingies (price)
-- VALUES (8877665544.45);



-- CREATE TABLE people
--     (
--         name VARCHAR(100),
--         birthdate DATE,
--         birthtime TIME,
--         birthdt DATETIME
--     );

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES 
--     ('Mariano', '1965-03-23', '23:09:45', '1965-03-23 23:09:45'),
--     ('Anne', '1995-06-13', '14:34:00', '1995-06-13 14:34:00');

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('George', CURDATE(), CURTIME(), NOW());



-- SELECT name, DAY(birthdate) FROM people;
-- SELECT name, DAYNAME(birthdate) FROM people;
-- SELECT name, DAYOFWEEK(birthdate) FROM people;
-- SELECT name, DAYOFYEAR(birthdate) FROM people;

-- SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
-- SELECT name, birthdt, MONTHNAME(birthdt) FROM people;

-- SELECT name, birthtime, HOUR(birthtime), MINUTE(birthtime) FROM people;

-- SELECT 
--     CONCAT
--     (
--         MONTHNAME(birthdt), ' ', DAY(birthdt), ' ', YEAR(birthdt)
--     ) AS 'date'
-- FROM people;

-- SELECT date_format(birthdt, '%W') FROM people;
-- SELECT date_format(birthdt, 'waas born on a %W') FROM people;
-- SELECT DATE_FORMAT(birthdt, '%M/%D/%Y') FROM people;
-- SELECT DATE_FORMAT(birthdt, '%m/%d/%y') FROM people;

-- SELECT birthdt, DATE_FORMAT(birthdt, '%M/%D/%Y at %h:%i') AS 'date' FROM people;



-- SELECT name, birthdate, DATEDIFF(NOW(), birthdate) AS 'days old' FROM people;
-- SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
-- SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;

-- SELECT birthdt, birthdt + INTERVAL 2 DAY FROM people;
-- SELECT birthdt, birthdt - INTERVAL 2 QUARTER FROM people;

-- SELECT birthdt, birthdt - INTERVAL 2 QUARTER + INTERVAL 2 HOUR FROM people;



-- CREATE TABLE commets
--     (
--         content VARCHAR(100),
--         created_at TIMESTAMP DEFAULT NOW()
--     );
-- INSERT INTO commets(content) VALUES('what a funiest commment nen');
-- INSERT INTO commets(content) VALUES('lol it\'s impossible');

-- CREATE TABLE comments2 (
--     content VARCHAR(100),
--     changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
        -- NOTE: in this case, we can use CURRENT_TIMESTAMP or NOW()
-- );


-- INSERT INTO comments2(content) VALUES('lol it\'s another table new');
-- INSERT INTO comments2(content) VALUES('lolololololololololo');
-- INSERT INTO comments2(content) VALUES('i like cats and dogs');

UPDATE comments2 SET content='lol it\'s another new new tablrelr' WHERE content='lol it\'s another table new';











CREATE DATABASE ig_clone;

USE ig_clone;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)
);

-- In this table there are no IDs because we are not going to be referring to 'like' anywhere else
CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
    -- what this above will do is not allow to insert another like in the same photo
    -- by declaring unique combinations of user_id and photo_id
);

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);


CREATE TABLE tags (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE NOT NULL, 
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
); 



-- CHALLENGE 1
SELECT 
    username, 
    created_at
FROM users 
ORDER BY created_at 
LIMIT 5;

-- CHALLENGE 2
SELECT
    COUNT(*) AS 'Total',
    DAYNAME(created_at) AS 'Day of week'
FROM users
GROUP BY DAYNAME(created_at)
ORDER BY COUNT(created_at) DESC
LIMIT 1;


-- CHALLENGE 3
SELECT
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;
-- in 'WHERE' we can use any of column from 'photos' table whith value equal to 'NULL'


-- CHALLENGE 4

SELECT
    username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total_likes
FROM users
JOIN photos
    ON users.id = photos.user_id
JOIN likes 
    ON photos.id = likes.photo_id
GROUP BY photos.id
ORDER BY total_likes DESC
LIMIT 1;


-- CHALLENGE 5

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;


-- CHALLENGE 6
SELECT 
    tag_name,
    COUNT(*) AS total_mentions
FROM tags
INNER JOIN photo_tags
    ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total_mentions DESC
LIMIT 5;


-- CHALLENGE 7

SELECT
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
-- we can not use 'WHERE' clause because this  MUST be BEFORE 'GROUP BY', 
-- telling it what the data we like to select to group
-- NOT what we like to select FROM the group's data; for that we use 'HAVING'
















DELIMITER $$

CREATE TRIGGER example_cannot_follow_self
     BEFORE INSERT ON follows FOR EACH ROW
     BEGIN
          IF NEW.follower_id = NEW.followee_id
          THEN
               SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Cannot follow yourself, silly';
          END IF;
     END;
$$

DELIMITER ;

-- CREATE TABLE unfollows (
    -- follower_id INT NOT NULL,
    -- followee_id INT NOT NULL,
    -- created_at TIMESTAMP DEFAULT NOW(),
    -- FOREIGN KEY (follower_id) REFERENCES users(id),
    -- FOREIGN KEY (follower_id) REFERENCES users(id),
    -- PRIMARY KEY (follower_id, followee_id)
-- );







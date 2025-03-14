-- Alter table operations
ALTER TABLE Reviews
ALTER COLUMN Rating DECIMAL(2,1) NOT NULL;

ALTER TABLE Resources
ALTER COLUMN age INT NOT NULL;

ALTER TABLE Resources
ALTER COLUMN Gender VARCHAR(50)NOT NULL;

-- Update table operations
UPDATE Users
SET Email = 'john.doe2@example.com'
WHERE user_ID = 1;

UPDATE Users
SET Password = 'password4567'
WHERE user_ID = 2;

UPDATE Users
SET Subscription_type = 'Basic'
WHERE user_ID = 3;

-- Delete from table operations
DELETE FROM Reviews
WHERE review_ID = 1;

DELETE FROM Reviews
WHERE Rating < 4.0;

DELETE FROM Reviews
WHERE Review_Date < '2021-01-03';

-- Verify changes
SELECT * FROM Movies;
SELECT * FROM Users;
SELECT * FROM Reviews;
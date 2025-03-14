---Natural join--
SELECT User_Name, Title, Rating
FROM Users
JOIN Reviews ON Users.User_ID = Reviews.User_ID
JOIN Movies ON Reviews.Movie_ID = Movies.Movie_ID
WHERE Reviews.Review_Date = '2021-01-01';


------Self join------
SELECT U1.User_Name AS Reviewer1, U2.User_Name AS Reviewer2, M.Title
FROM Reviews R1
JOIN Reviews R2 ON R1.Movie_ID = R2.Movie_ID AND R1.User_ID < R2.User_ID
JOIN Users U1 ON R1.User_ID = U1.User_ID
JOIN Users U2 ON R2.User_ID = U2.User_ID
JOIN Movies M ON R1.Movie_ID = M.Movie_ID;


------Inner join------
SELECT U.User_Name, M.Title, R.Rating
FROM Reviews R
JOIN Users U ON R.User_ID = U.User_ID
JOIN Movies M ON R.Movie_ID = M.Movie_ID
WHERE R.Review_Date = '2021-01-01';


------Left join------
SELECT M.Title, R.Rating
FROM Movies M
LEFT JOIN Reviews R ON M.Movie_ID = R.Movie_ID;


------Right join------
SELECT U.User_Name, M.Title, R.Rating
FROM Users U
RIGHT JOIN Reviews R ON U.User_ID = R.User_ID
RIGHT JOIN Movies M ON R.Movie_ID = M.Movie_ID;


------Full Outer join------
SELECT M.Title, R.Rating
FROM Movies M
LEFT JOIN Reviews R ON M.Movie_ID = R.Movie_ID
UNION
SELECT M.Title, R.Rating
FROM Movies M
RIGHT JOIN Reviews R ON M.Movie_ID = R.Movie_ID;



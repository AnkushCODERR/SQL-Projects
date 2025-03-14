SELECT MAX(Rating) AS Max_Rating FROM Reviews;


SELECT MIN(Amount) AS Min_Contract_Amount FROM Contracts;


SELECT AVG(Rating) AS Average_Rating FROM Reviews;


SELECT COUNT(*) AS Total_Reviews FROM Reviews;


----------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
    MAX(Amount) AS Highest_Paid_Contract,
    MIN(Amount) AS Lowest_Paid_Contract
FROM Contracts;


SELECT AVG(Age) AS Average_Age FROM Resources WHERE Type = 'Actor';


SELECT Genre, COUNT(*) AS Number_of_Movies 
FROM Movies 
GROUP BY Genre;


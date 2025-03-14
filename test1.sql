select* from Movies;
INSERT INTO Movies values(1,'The Shawshank Redemption','Drama','1994-10-14'),
(2,'The Godfather','Crime','1972-03-24'),
(3,'The Dark Knight','Action','2008-07-18');

select * from Users;
insert into Users values(1, 'John Doe', 'john.doe@example.com', 'password123', 'Premium'),
(2, 'Jane Doe', 'jane.doe@example.com', 'password456', 'Basic'),
(3, 'Alice', 'alice@example.com', 'password789', 'Premium');


select* from Reviews;
insert into Reviews values(1, 1, 1, 5.0, '2021-01-01'),
(2, 2, 1, 4.0, '2021-01-02'),
(3, 3, 3, 4.5, '2021-01-03');

select * from Resources;  
INSERT INTO Resources (Resource_ID, Type, Name, Age, Gender, Movie_ID)
VALUES
(1, 'Actor', 'Tom Hanks', 45, 'Male', 1),
(2, 'Director', 'Steven Spielberg', 55, 'Male', 1),
(3, 'Producer', 'Kathleen Kennedy', 48, 'Female', 1);


select * from Contracts;
INSERT INTO Contracts VALUES(1, 1, 1, 1000.0, '1994-10-14', 6),
(2, 1, 2, 800.0, '1994-10-14', 12),
(3, 1, 3, 1200.0, '1994-10-14', 24);




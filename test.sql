CREATE DATABASE Movie_Review_System;
CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    Release_Date DATE NOT NULL,
    CONSTRAINT chk_release_date CHECK (Release_Date <= GETDATE()),
);

CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Subscription_Type VARCHAR(100) NOT NULL,
    CONSTRAINT chk_email_format CHECK (Email LIKE '%@%.%')
);

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY,
    User_ID INT NOT NULL,
    Movie_ID INT NOT NULL,
    Rating DECIMAL(2,1) CHECK (Rating BETWEEN 1 AND 5),
    Review_Date DATE NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Resources (
    Resource_ID INT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Age INT CHECK (Age >= 18),
    Gender VARCHAR(50),
    Movie_ID INT NOT NULL,
    CONSTRAINT chk_resource_type CHECK (Type IN ('Actor', 'Director', 'Producer', 'Other')),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Contracts (
    Contract_ID INT PRIMARY KEY,
    Movie_ID INT NOT NULL,
    Resource_ID INT NOT NULL,
    Amount DECIMAL(10,2) CHECK (Amount >= 0),
    Date_of_Signing DATE NOT NULL,
    Duration INT CHECK (Duration > 0), -- Contract duration must be positive
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Resource_ID) REFERENCES Resources(Resource_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

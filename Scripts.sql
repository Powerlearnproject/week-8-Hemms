-- CREATE DATABASE good_health;
-- USE good_health; 
-- Create the Community table
CREATE TABLE Community (
    CommunityID INT PRIMARY KEY AUTO_INCREMENT,
    CommunityName VARCHAR(100) NOT NULL,
    population INT(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Create the facility table
CREATE TABLE facility (
    facilityID INT PRIMARY KEY AUTO_INCREMENT,
    facilityName VARCHAR(100) NOT NULL,
    CommunityID INT,
    Address VARCHAR(150),
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID)
);

-- Create the immunization table
CREATE TABLE immunization (
    immunizationID INT PRIMARY KEY AUTO_INCREMENT,
    immunizationName VARCHAR(100) NOT NULL,
    immunizationdisease VARCHAR(100),
    immunizationschedule date
);

-- Create the Individual table
CREATE TABLE Individual (
    IndividualID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender VARCHAR(10),
    CommunityID INT,
    address VARCHAR(150),
    contactnumber INT,
    FOREIGN KEY (CommunityID) REFERENCES Community(CommunityID)
);

-- Create the disease table
DROP TABLE disease;
CREATE TABLE disease (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    Individual TEXT,
    disease TEXT,
    Name TEXT,
    Dateschedule DATE
);
SELECT * FROM community;    

 
INSERT INTO Community (CommunityName, population, Location) VALUES
('Greenfield', '1000', 'North District'),
('Blueville', '500', 'East District'),
('Sunset Town', '2000', 'West District'),
('Sunrise City', '10000', 'Northwest District'),
('Leasure Golf', '5000', 'South District'),
('Resort Golf', '200', 'Eastern'),
('Diamond Golf', '400', 'Northern'),
('Villa[ark', '700', 'Southern'),
('naivilla', '800', 'eastern'),
('mombavilla', '900', 'western'),
('kisumu', '259','Northern'),
('neptune', '600', 'western');
SELECT * FROM community;


SELECT * FROM disease;
INSERT INTO disease (RecordID, Individual, disease, Name, Dateschedule) VALUES
-- (1, 1, 'COVID_Vaccine', 'John Doe', '2024-09-01'),
-- (2, 2, 'Influenza_Vaccine', 'Jane Smith', '2024-09-01'),
-- (3, 3, 'MMR_Vaccine', 'Valline Akoth', '2024-09-01'),
(4, 4, 'chorela_Vaccine', 'Marion Atieno', '2024-09-01'),
(5,5, 'typhoid_Vaccine', 'Hemstone Smith', '2024-08-29'),
(6,6, 'Malaria_Vaccine', 'Violet Adhiambo', '2024-08-28'),
(7,7, 'HIV_Vaccine', 'Faith Opiyo', '2024-08-20'),
(8,8, 'AIDS_Vaccine', 'Zennah Auma', '2024-08-10'),
(9,9, 'Hebabatis_Vaccine', 'Brenda Opiyo', '2024-08-5'),
(10,10, 'Syphlis_Vaccine', 'Jane Awino', '2024-08-01');

SELECT * FROM Individual;
INSERT INTO Individual (Name, DOB, Gender, CommunityID, Address, Contactnumber) VALUES
('John Doe', '1985-02-15', 'Male', 1, 'mombasa', 0711206100),
('Jane Smith', '1990-07-08', 'Female', 2, 'nairobi', 0707579873),
('Emily Johnson', '2005-11-22', 'Female', 3, 'kisumu', 0720086419),
('Emily Smith', '1999-12-19', 'Female', 4, 'eldoret', 0707088900),
('Opiyo Doe', '2004-03-09', 'Male', 5, 'nakuru', '0709098765'),
('Janet Juma', '1890-09-09', 'Femalre', 'kericho', '0711206300'),
('Peter Ondiek', '1789-07-08', 'Male', 'homabay', '0745454545'),
('Yusuf Peter', '1890-04-04', 'Male', 'Turkana', '0708201094'),
('Ondiek Chamo', '2003-01-01', 'Female' 'nairobi', '0707461589'),
('Maryanne Aketch', '2006-03-04', 'Female', 'kisii', 0780809043);

SELECT * FROM Immunization;
INSERT INTO immunization (immunizationID, immunizationname, immunizationdisease, immunizationschedule) VALUES

-- (4, 'mosquito', 'hub', '2023-05-30'),
-- (5, 'Rubbela', 'bela', '2024-04-05'),
-- (6, 'Tetanus', 'tanus', '2024-09-09'), 
-- (7, 'tuberclosis', 'closis', '2024-09-09'),
-- (8, 'varicella', 'cella', '2024-08-09'),
-- (9, 'yellow', 'llow', '2024-09-08'),
-- (10, 'rotavirus', 'tavirus', '2024-09-08'),
(11, 'corona', 'rona', '2024-08-07'),
(12, 'kisse', 'kiss', '2024-09-01'),
(13, 'herps', 'herpe', '2024-07-04'),
(14, 'chlorine', 'lorine', '2024-09-04'),
(15, 'chloropyll', 'pyill', '2024-09-05'),
(16, 'nestaphill', 'phill', '2024-03-02'),
(17, 'spinalcord', 'spinal', '2024-01-04'),
(18, 'pelvic', 'vic', '2024-02-09'),
(19, 'sexism', 'xims', '2024-08-4'),
(20, 'demugly', 'demu', '2024-09-09');

SELECT * FROM community;

SELECT * 
FROM immunization 
WHERE immunizationID = 2 
  AND immunizationname = 'measles';


SELECT * FROM disease;












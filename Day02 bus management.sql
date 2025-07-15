-- Step 1: Drop the database if it already exists
DROP DATABASE IF EXISTS BusManagement;

-- Step 2: Create the database
CREATE DATABASE BusManagement;

-- Step 3: Use the database
USE BusManagement;

-- Step 4: Create the BusDetails table
CREATE TABLE BusDetails (
    BusID INT PRIMARY KEY,
    BusNumber VARCHAR(20) NOT NULL,
    OperatorName VARCHAR(100),
    SourceCity VARCHAR(50),
    DestinationCity VARCHAR(50),
    DepartureTime TIME,
    ArrivalTime TIME,
    Fare DECIMAL(8,2),
    BusType VARCHAR(20) -- e.g., AC, Non-AC, Sleeper, etc.
);

-- Insert 20 records into BusDetails
INSERT INTO BusDetails (BusID, BusNumber, OperatorName, SourceCity, DestinationCity, DepartureTime, ArrivalTime, Fare, BusType)
VALUES
(1, 'MH12AB1234', 'Neeta Travels', 'Pune', 'Mumbai', '06:00:00', '09:30:00', 450.00, 'AC'),
(2, 'MH14CD5678', 'VRL Travels', 'Pune', 'Goa', '21:00:00', '07:00:00', 850.00, 'Sleeper'),
(3, 'MH13EF9101', 'MSRTC', 'Mumbai', 'Nashik', '05:30:00', '09:00:00', 350.00, 'Non-AC'),
(4, 'MH15GH2345', 'Konduskar', 'Kolhapur', 'Pune', '07:15:00', '11:30:00', 400.00, 'AC'),
(5, 'MH12IJ6789', 'Purple', 'Mumbai', 'Pune', '17:00:00', '20:30:00', 420.00, 'Sleeper'),
(6, 'MH16KL1122', 'MSRTC', 'Nashik', 'Aurangabad', '08:00:00', '12:00:00', 320.00, 'Non-AC'),
(7, 'MH17MN3344', 'Neeta Travels', 'Pune', 'Nagpur', '20:00:00', '08:00:00', 1200.00, 'AC'),
(8, 'MH18OP5566', 'VRL Travels', 'Mumbai', 'Goa', '22:00:00', '09:00:00', 900.00, 'Sleeper'),
(9, 'MH19QR7788', 'MSRTC', 'Aurangabad', 'Nanded', '06:45:00', '11:15:00', 375.00, 'Non-AC'),
(10, 'MH20ST9900', 'Konduskar', 'Pune', 'Belgaum', '10:30:00', '15:00:00', 550.00, 'AC'),
(11, 'MH21UV1123', 'Purple', 'Nagpur', 'Pune', '18:00:00', '07:00:00', 1300.00, 'Sleeper'),
(12, 'MH22WX2345', 'Neeta Travels', 'Goa', 'Pune', '19:00:00', '06:00:00', 880.00, 'AC'),
(13, 'MH23YZ3456', 'MSRTC', 'Mumbai', 'Thane', '06:00:00', '07:00:00', 120.00, 'Non-AC'),
(14, 'MH24AB4567', 'VRL Travels', 'Nashik', 'Mumbai', '05:45:00', '09:15:00', 370.00, 'AC'),
(15, 'MH25CD5678', 'Purple', 'Pune', 'Hyderabad', '19:30:00', '07:30:00', 950.00, 'Sleeper'),
(16, 'MH26EF6789', 'Neeta Travels', 'Pune', 'Ahmednagar', '09:00:00', '11:00:00', 280.00, 'Non-AC'),
(17, 'MH27GH7890', 'MSRTC', 'Solapur', 'Pune', '13:00:00', '17:30:00', 370.00, 'AC'),
(18, 'MH28IJ8901', 'Konduskar', 'Mumbai', 'Kolhapur', '21:00:00', '06:00:00', 780.00, 'Sleeper'),
(19, 'MH29KL9012', 'Purple', 'Pune', 'Satara', '07:00:00', '09:30:00', 250.00, 'Non-AC'),
(20, 'MH30MN0123', 'VRL Travels', 'Aurangabad', 'Mumbai', '14:00:00', '20:00:00', 600.00, 'AC');

-- 1.	List every column for buses operated by Neeta Travels.
select * from BusDetails
where OperatorName = "neeta travels";

-- 2.	Display BusID, BusNumber, and Fare for all buses whose fare is greater than ₹600.
select  BusID, BusNumber, Fare from BusDetails
where fare > 600 ;

-- 3.	Return the details of buses that travel from Pune to Mumbai.
select * from BusDetails
where SourceCity = "pune" and
DestinationCity = "mumbai";

-- 4.	Show BusNumber and DepartureTime for buses departing after 20:00 (8 p.m.).
select BusNumber, DepartureTime from BusDetails
where DepartureTime > "08:00:00";

-- 5.	Fetch all columns for buses whose BusType is either AC or Sleeper.
select * from BusDetails
where BusType = "ac"
or BusType = "Sleeper";

-- 6.	Retrieve BusID, OperatorName, and Fare for buses with fares between ₹350 and ₹600 (inclusive).
select BusID, OperatorName,Fare from  BusDetails
where Fare >= 350 and Fare <= 600 ;

-- 7.	List the BusNumbers containing the substring MH12 anywhere in the plate.
SELECT BusNumber
FROM BusDetails
WHERE BusNumber LIKE '%MH12%';

-- 8.	Show every bus that arrives before 09:00.
select ArrivalTime from BusDetails
where ArrivalTime < "09:00:00";

-- 9.	Get BusID, SourceCity, DestinationCity, and Fare for buses where the source city is not Pune.
SELECT BusID, SourceCity, DestinationCity, Fare
FROM BusDetails
WHERE SourceCity != 'Pune';

-- 10.	Display the five cheapest buses (all columns), ordered by Fare ascending and limited to 5 rows.
SELECT *
FROM BusDetails
ORDER BY Fare ASC
LIMIT 5;

-- 11.	Return BusNumber and OperatorName for buses whose destination city is in (Goa, Nagpur, Hyderabad).
SELECT BusNumber, OperatorName
FROM BusDetails
WHERE DestinationCity IN ('Goa', 'Nagpur', 'Hyderabad');

-- 12.	List buses whose DepartureTime is exactly 06:00:00.
select * from BusDetails
where DepartureTime = "06:00:00";

-- 13.	Fetch details of buses whose BusType is Non-AC and whose fare is less than ₹400.
select*from busdetails
where BusType = "Non-AC" 
and fare < 400;

-- 14.	Show BusID, BusNumber, Fare for buses travelling from Mumbai and having Fare ≥ ₹500.
select BusID, BusNumber, Fare from busdetails 
where sourcecity = "mumbai" 
and fare >= 500;

-- 15.	Retrieve all buses ordered by DepartureTime descending (latest departures first).
select * from busdetails
order by departuretime asc;

-- 16.	Select BusNumber, SourceCity, DestinationCity where the destination city name ends with the letter e.
select BusNumber, SourceCity, DestinationCity from busdetails
where DestinationCity like "%e" ;

-- 17.	List buses operated by MSRTC excluding those that start from Mumbai.
select * from busdetails
where operatorname = "MSRTC" 
and sourcecity != "mumbai";

-- 18.	Get the first three rows (any order) from BusDetails to check the table structure.
select * from busdetails
limit 3;

-- 19.	Display BusID, BusType for buses whose BusType is Sleeper and arrival is after 06:00.
select BusID, BusType from BusDetails
where DepartureTime > "06:00:00" 
and  BusType = "Sleeper" ;

-- 20.	Return all buses where Fare is not equal to ₹450.
select * from  BusDetails
where Fare != 450;
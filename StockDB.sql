USE master;
GO
IF DB_ID('StockDB') IS NOT NULL
DROP DATABASE StockDB;

GO

CREATE DATABASE StockDB 

--ON 
--(
--NAME		= Stoke_data,
--FILENAME	= 'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Stock_data.mdf',
--SIZE		= 10 MB,
--MAXSIZE		= 50 MB, 
--FILEGROWTH	= 5  MB 
--)

--LOG ON 
--(
--NAME		= Stoke_log,
--FILENAME	= 'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Stoke_log.ldf',
--SIZE		= 5  MB,
--MAXSIZE		= 25 MB, 
--FILEGROWTH	= 10 MB
--);

GO

USE StockDB;

GO

---------------------------------------Customers Table
CREATE TABLE Customers 
(
 CustomerID			INT	IDENTITY PRIMARY KEY,
 CustomName			VARCHAR(100),
 CustomContact		INT 	 							
);
Go
INSERT INTO Customers (CustomName, CustomContact) VALUES 

('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 
('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Jwel', 02215486),		('Rana', 02215486),		('Alien', 02211432),		('Hridoy', 02214561),	('Jahid', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 

('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 
('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 

('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 

('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 

('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 

('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 

('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562),
('Henry', 02215486),	('Tess', 02215486),		('Alein', 02211432),		('Herry', 02214561),	('John', 02214156), 
('Sharp',02214512),		('Hadson',02217854),	('Willam',02213246),		('Kits',02214125),		('Jane',02217921), 
('Robart',02212154),	('Ayre',02214561),		('Habart',02217834),		('Scort',02214895),		('Walkin',02217837), 
('Seeny',02214892),		('Bubil',02214756),		('Sharp',02214561),			('Herojin',02214586),	('Robart',02211475),
('Brust',02214256),		('Addison',02214561),	('Bilton',02214289),		('Obama',0221864),		('Clinton',02211431), 
('Merry',02214589),		('Liza',02214561),		('Justin',02214562),		('Roman',02214152),		('Deela',02214562);

GO

----------------------------------------Category Table

CREATE TABLE Category
(
CategoryID		INT		IDENTITY PRIMARY KEY,
CategoryName	VARCHAR(100)
);

GO

INSERT INTO Category VALUES 
('Food & Veberage'),	('Mens Shirts'),			('Parts'),					('Meat and Fish‎'),			('Cooking'),			('Home'),				('Cleaning'),		
('Pest Control'),		('Office Products'),		('Bread/Bakery'),			('Dairy'),					('Dry/Baking Goods'),	('Frozen Foods'),		('Scientific Instruments'),
('Footwear‎'),			('Furniture'),				('Road Bicycle‎'),			('Paper Goods'),			('Personal Care'),		('Education'),			('Baby Item'),		
('Electronic'),			('Ceramics'),				('Consumer'),				('Cosmetics'),				('Baby Cosmetics'),		('Fabrics'),			('Sea Food'),
('Pharmacy'),			('Trucks‎'),					('Jackets'),				('Fashion'),				('Jewelry'),			('Stationery'),			('Chemical'),	
('Computer'),			('Internet'),				('Construction Equipment'),	('Electrical Equipment'),	('Garments'),			('Hardware & Metal'),	('Leather Goods'),				
('Appliances');


GO


-----------------------------------------Seles Table

CREATE TABLE Seles 
( 
SelesID			INT	IDENTITY PRIMARY KEY,
CustomerID		INT	REFERENCES Customers (CustomerID),
LastSelesDate	DATE
 
);

GO
INSERT INTO Seles VALUES 

(1,'2015-02-05'),		(1,'2015-06-04'),		(2,'2020-06-08'),		(3,'2015-03-05'),		(4,'2015-04-09'),
(4,'2016-05-04'),		(5,'2016-06-12'),		(6,'2016-06-20'),		(7,'2016-05-10'),		(8,'2016-08-07'),		(9,'2016-04-09'),
(9,'2018-07-02'),		(10,'2019-04-25'),		(11,'2016-07-06'),		(12,'2019-02-15'),		(13,'2016-07-25'),		(14,'2016-09-21'),
(15,'2020-02-06'),		(16,'2017-07-08'),		(17,'2017-04-11'),		(18,'2018-04-13'),		(19,'2017-07-19'),		(20,'2019-07-26'),
(21,'2018-03-16'),		(22,'2018-03-12'),		(23,'2018-03-17'),		(24,'2018-05-16'),		(25,'2018-05-10'),		(25,'2018-06-15'),
(25,'2018-06-11'),		(26,'2020-07-16'),		(27,'2018-07-19'),		(28,'2020-08-22'),      (1,'2015-02-12'),		(1,'2020-02-04'),		
(4,'2016-04-10'),		(5,'2016-05-12'),		(6,'2016-06-27'),		(7,'2016-05-18'),		(8,'2020-08-07'),		(9,'2016-04-09'),
(9,'2016-09-01'),		(10,'2016-04-25'),		(11,'2019-08-06'),		(12,'2016-07-15'),		(13,'2016-07-25'),		(14,'2019-09-21'),
(15,'2017-02-06'),		(16,'2017-06-08'),		(17,'2017-06-11'),		(18,'2020-04-13'),		(19,'2017-07-16'),		(20,'2017-07-26'),
(21,'2018-03-06'),		(22,'2020-03-12'),		(23,'2018-03-07'),		(24,'2017-05-16'),		(25,'2018-05-18'),		(25,'2018-06-18'),
(25,'2018-06-17'),		(26,'2018-07-20'),		(27,'2018-07-19'),		(28,'2020-06-22'),		(2,'2015-10-08'),		(3,'2015-03-04'),
		
(1,'2015-08-05'),		(1,'2015-03-04'),		(2,'2015-08-08'),		(3,'2015-07-05'),		(4,'2019-04-09'),		(4,'2015-04-11'),
(4,'2020-06-04'),		(5,'2019-06-12'),		(6,'2016-06-21'),		(7,'2016-05-19'),		(8,'2016-08-17'),		(9,'2016-04-19'),
(9,'2016-04-01'),		(10,'2019-04-20'),		(11,'2016-05-06'),		(12,'2020-04-15'),		(13,'2016-07-21'),		(14,'2016-09-05'),
(15,'2019-02-06'),		(16,'2017-02-08'),		(17,'2019-04-11'),		(18,'2019-04-13'),		(19,'2017-04-04'),		(20,'2017-07-21'),
(21,'2019-03-06'),		(22,'2017-03-12'),		(23,'2018-03-07'),		(24,'2018-05-22'),		(25,'2018-05-14'),		(25,'2020-06-14'),
(25,'2018-06-21'),		(26,'2018-07-17'),		(27,'2018-07-24'),		(28,'2018-08-12'),      (1,'2012-02-17'),		(1,'2015-05-08'),		
(4,'2016-07-04'),		(5,'2016-06-22'),		(6,'2016-06-12'),		(7,'2016-05-14'),		(8,'2016-08-07'),		(9,'2016-04-19'),
(9,'2016-07-08'),		(10,'2016-04-25'),		(11,'2019-01-06'),		(12,'2019-07-15'),		(13,'2016-07-19'),		(14,'2016-09-21'),
(15,'2017-08-06'),		(16,'2019-11-08'),		(17,'2017-08-11'),		(18,'2017-04-13'),		(19,'2017-07-12'),		(20,'2019-07-22'),
(21,'2018-03-12'),		(22,'2020-04-12'),		(23,'2019-03-07'),		(24,'2015-05-16'),		(25,'2020-05-18'),		(25,'2018-06-14'),
(25,'2018-06-01'),		(26,'2018-07-12'),		(27,'2018-07-11'),		(28,'2018-04-12'),		(2,'2015-06-09'),		(3,'2020-03-05'),		
(4,'2015-04-01');		


GO
------------------------------------------Products Table
CREATE TABLE Products

(
ProductID		INT	IDENTITY PRIMARY KEY,
CategoryID		INT	REFERENCES Category (CategoryID),
ProductName		VARCHAR(100),
UnitPrice		MONEY	DEFAULT 0 
);

GO

INSERT INTO Products (CategoryID, ProductName, UnitPrice) VALUES 

(1, 'Kit Kat',200),				(1, 'Biscuits',150),				(1, 'Breads',310),						(1, 'Soft Drink',600),				(1, 'Tea and Coffee',500),
(2, 'Button-Down Shirt',300),	(2, 'Dress Shirt',140),				(2, 'Over shirt',142),					(3, 'Wave Bike Lock',550),			(3, 'Oil Caps',900),
(3, 'Bike Brake',100),			(4, 'Boat Shoe',600),				(4, 'Brogue Shoe',800),					(4, 'Chelsea Boot',420),			(5, 'Work tables',400),
(5, 'Office work chair',320),	(5, 'Revolving office chair',500),	(5, 'Bunk beds',400),					(5, 'High beds',450),				(5, 'Book Self',500),
(6, 'Race bicycle',120),		(6, 'Vitus Bicycle',200),			(6, 'Rider Bicycle',500),				(7, 'Toyota Truck',600),			(7, 'Dodge Ram Truck',410),
(8, 'Bomber Jackets',400),		(8, 'Biker Jacket',100),			(9, 'Microwave oven',700),				(9, 'Air Conditioner',410),			(9, 'Light',900),
(43,'Air Conditioning', 45000), (43,'Oven', 5600),					(43,'Electric Water Boiler', 3200),		(43,'Electric Water Boiler', 4500),	(43,'Refrigerator', 5400),

(43,'Hand-Held Blender', 5422),	(43,'Coffee Maker', 566),			(43,'Toaster',5477),					(43,'Rice Cooker', 5422),			(26,'Baby Shampoos', 210),
(26,'Baby Lotions', 360),		(26,'Baby Oils', 211),				(26,'Baby Powders', 200),				(26,'Baby Creams', 300),			(10,'Bagels',50),
(10,'Rolls', 60),				(10,'Cookies', 90),					(10,'Cheesecake', 340),					(10,'Pizza', 400),					(10,'Snack', 621),
(10,'Sweet', 600),				(10,'Doughnuts', 200),				(10,'Cakes', 100),						(10,'Danish', 50),					(10,'Sweet Roll', 120),
(10,'Coffee Cake',320),			(10,'Torillas', 210),				(23,'pipes', 500),						(23,'roof tiles', 2512),			(23,'kiln linings', 2153),
(23,'gas fire radiants', 5462),	(10,'steel', 3265),					(10,'glass making crucibles', 52484),	(10,'Whitewares', 54875),			(10,'tableware', 12475),
(10,'cookware', 3254),			(10,'pottery', 2147),				(10,'sanitary ware', 14544),			(10,'Terra-Cotta', 14542),			(10,'Buns', 20);


GO
-------------------------------------SelesLineItems Table
CREATE TABLE SelesLineItems

(
SelesID		INT				REFERENCES Seles (SelesID),
ProductID	INT				REFERENCES Products (ProductID),
SelesQty	INT,		
PRIMARY KEY							   (SelesID, ProductID)
);

GO

INSERT INTO SelesLineItems VALUES 
(1, 1, 3),		(2, 1, 5),		(3, 2, 8),		(4, 3, 2),		(5, 3, 4),		(6, 6, 3),		(7, 5, 5),
(8, 6, 1),	    (9, 6, 6),		(10, 7, 3),		(11, 7, 4),		(12, 8, 5),		(13, 8, 2),		(14, 8, 4),
(15, 9, 7),		(16, 10, 7),	(17, 10, 5),	(18, 11, 6),	(19, 12, 1),	(20, 13, 3),	(21, 14, 2),
(22, 15, 1),	(23, 15, 5),	(24, 16, 2),	(25, 17, 1),	(26, 17, 4),	(27, 17, 2),	(28, 18, 4),
(29, 19, 2),	(30, 19, 2),	(31, 20, 4),	(32, 21, 2),

(33, 1, 3),		(34, 1, 5),		(35, 2, 8),		(36, 3, 2),		(65, 3, 4),		(37, 6, 3),		(38, 5, 5),
(39, 6, 1),	    (40, 6, 6),		(41, 7, 3),		(42, 7, 4),		(43, 8, 5),		(45, 8, 2),		(46, 8, 4),
(47, 9, 7),		(48, 10, 7),	(49, 10, 5),	(50, 11, 6),	(51, 12, 1),	(52, 13, 3),	(53, 14, 2),
(54, 15, 1),	(55, 15, 5),	(56, 16, 2),	(57, 17, 1),	(58, 17, 4),	(59, 17, 2),	(60, 18, 4),
(61, 19, 2),	(62, 19, 2),	(63, 20, 4),	(64, 21, 2),

(65, 1, 3),		(66, 1, 5),		(67, 2, 8),		(68, 3, 2),		(69, 3, 4),		(70, 6, 3),		(71, 5, 5),
(72, 6, 1),	    (73, 6, 6),		(74, 7, 3),		(75, 7, 4),		(76, 8, 5),		(77, 8, 2),		(78, 8, 4),
(79, 9, 7),		(80, 10, 7),	(81, 10, 5),	(82, 11, 6),	(83, 12, 1),	(84, 13, 3),	(85, 14, 2),
(86, 15, 1),	(87, 15, 5),	(88, 16, 2),	(89, 17, 1),	(90, 17, 4),	(91, 17, 2),	(92, 18, 4),
(93, 19, 2),	(94, 19, 2),	(95, 20, 4),	(96, 21, 2);


GO

-- Add a Colunm in Customers Table

ALTER TABLE Customers
ADD CusAddress VARCHAR(30);

GO
-- Delete a Column in Customers Table

ALTER TABLE Customers
DROP COLUMN CusAddress;

GO

-- Create a Index in Customers Table

 CREATE INDEX XI_Category
ON Category (CategoryName);

GO
 
---Create non clustered index

CREATE INDEX IX_Customer ON Customers(CustomName);
CREATE INDEX IX_Category ON Category (CategoryName);


GO
-- Join Products and SelesLineItems Table

SELECT ProductName, Products.UnitPrice, SelesLineItems.SelesQty
FROM Products
JOIN SelesLineItems
ON Products.ProductID = SelesLineItems.ProductID
WHERE SelesLineItems.ProductID > 15
ORDER BY ProductName;

GO

-- A Join Query 


SELECT Customers.CustomerID, CustomName, Category.CategoryName, ProductName, SelesQty, UnitPrice, LastSelesDate
FROM Customers
JOIN Seles
ON Customers.CustomerID = Seles.CustomerID
JOIN
SelesLineItems
ON Seles.SelesID = SelesLineItems.SelesID
JOIN Products
ON SelesLineItems.ProductID = Products.CategoryID
JOIN Category
ON Products.CategoryID = Category.CategoryID
WHERE SelesQty >= 2
ORDER BY CustomerID ;

GO

-- Add Constrain in a Table

--ALTER TABLE Products 
--ADD  CONSTRAINT DF_Products_UnitPrice  DEFAULT (0) FOR UnitPrice;

GO
-- Create a view 

CREATE VIEW CustomersMin 
WITH ENCRYPTION
AS
SELECT Customers.CustomName AS [Customer Name], COUNT (*) AS [Number of Orders] FROM Customers
JOIN Seles ON Seles.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomName;

--SELECT * FROM CustomersMin;

GO
-- Create a Store Procedure 

CREATE  PROCEDURE sp_CutomerByProducts 
@CategoryName VARCHAR (50)
AS
SELECT CategoryName AS [Category Name], ProductName AS [Product Name], UnitPrice AS [Unit Price] 
FROM Category
JOIN Products
ON Category.CategoryID = Products.CategoryID
WHERE CategoryName = @CategoryName
ORDER BY CategoryName;

EXEC sp_CutomerByProducts;

GO

-- USE TOP Clause

SELECT TOP 10 CustomerID, CustomName
FROM Customers
ORDER BY CustomName DESC;

GO

-- Use IN Phrase

SELECT ProductID, ProductName
FROM Products
WHERE ProductID IN (1,3,5,7,9,11,13,15,17,19)
ORDER BY ProductID;

-- Use BETWEEN Phrase

SELECT CustomerID, CustomName
FROM Customers
WHERE CustomerID BETWEEN '15' AND '25'
ORDER BY CustomerID;

GO

-- Use OFFSET & FETCH 

SELECT ProductID, ProductName
FROM Products
ORDER BY ProductName
		OFFSET 10 ROWS
		FETCH NEXT 15 ROWS ONLY;

GO
-- Use MAX and MIN Function 

SELECT MAX (SelesQty) AS [Hight Of Seles],
	   MIN (SelesQty) AS [Low Of Seles]
FROM SelesLineItems;

GO

-- Use CAST Function

SELECT SelesID, LastSelesDate,
CAST (LastSelesDate AS VARCHAR) AS [Cast Varchar Date],
CONVERT (VARCHAR, LastSelesDate, 1) AS [Con Date of Var]
FROM Seles;

GO

-- Use LEFT, RIGHT, Function 

SELECT CustomerID, LEFT(CustomName, 4) AS [Name Left Four], RIGHT(CustomContact, 5) AS [Contact Right Five]
FROM Customers

ORDER BY CustomerID;

-- Use CASE Function 

SELECT ProductID, ProductName, 
		CASE ProductID
		WHEN 1 THEN 'No Stock'
		WHEN 2 THEN 'Stock in 2'
		WHEN 3 THEN 'Three Items Sold'
		WHEN 4 THEN	'Four Items Sold'
		WHEN 5 THEN 'All are Sold'
END AS [Stock Details]
FROM Products;

GO

-- Use IIF Function

SELECT SelesID, SUM (SelesQty) AS [Total Seles],
IIF (SUM(SelesQty)< 2, 'Low','High') AS [Seles Range]
FROM SelesLineItems
GROUP BY SelesID;

GO
-- Use CHOOSE Function 

SELECT ProductID, SelesQty,
		CHOOSE (ProductID, 'Good Product', 'Better Product', 'Best Product', 'Super Good Product', 'Super Better Product','Super Best Product', 'Current Product') AS [Quality Of Product ]
FROM SelesLineItems
WHERE ProductID < 8;

GO

-- Use Grouping Function with ROLLUP

SELECT 
	CASE 
		WHEN GROUPING (ProductName) = 1 THEN 'Available'
		ELSE ProductName

	END AS ProductName,
COUNT (*) AS [Total Products]
FROM Products
GROUP BY ProductName with ROLLUP
ORDER BY ProductName DESC;

GO

-- Use Row_Number Function

SELECT ROW_NUMBER () OVER (ORDER BY ProductName) AS [Row of Product], ProductName
FROM Products;


GO

-- Use PARTITION BY Clause

SELECT ROW_NUMBER () OVER (PARTITION BY ProductName ORDER BY ProductID) AS [Product Rows], UnitPrice
FROM Products;

GO

-- Use NTILE Function

SELECT CustomerID,
		NTILE (2) OVER (ORDER BY CustomerID) AS Tile2,
		NTILE (3) OVER (ORDER BY CustomerID) AS Tile3, 
		NTILE (4) OVER (ORDER BY CustomerID) AS Tile4,
		NTILE (5) OVER (ORDER BY CustomerID) AS Tile5
FROM Customers;

GO

-- Create a SEQUENCE

CREATE SEQUENCE Sequence2
AS INT 
START WITH 1 INCREMENT BY 2
MINVALUE 0 MAXVALUE 10000
CYCLE CACHE 2;

GO

--  Create a Trigger

CREATE TRIGGER trg_Customers
ON Customers 
AFTER INSERT 
AS
INSERT INTO Customers(	
	 CustomName, CustomContact)

SELECT CustomName, CustomContact 
		
FROM inserted 
WHERE CustomerID = @@IDENTITY;


GO


PRINT 'Congratulation !   Scripts Executed Successfully';






USE master;
GO

DROP DATABASE IF EXISTS ShopManagementDB;
GO

CREATE DATABASE ShopManagementDB;
GO

USE ShopManagementDB;
GO

CREATE TABLE Branch
(
Bra_Id		INT PRIMARY KEY, 
Location	VARCHAR(50), 
Phone		CHAR(11) 
);
GO

INSERT INTO Branch VALUES 
(1, 'Uttora', 12458456544),		(2,'Bonani',12458456544),		(3,'Airport',12458456544),		(4,'Badda',12458456544),
(5,'Nikunjo',12458456544),		(6,'Khilkhet',12458456544),		(7,'Koril',12458456544),		(8,'Mohakhali',12458456544),
(9,'Gulshan1',12458456544),		(10,'Gulshan1',12458456544),	(11,'Gulshan2',12458456544),	(12,'Gulshan2',12458456544),
(13,'Mirpur1',12458456544),		(14,'Mirpur12',12458456544),	(15,'Mirpur13',12458456544),	(16,'Mirpur14',12458456544),
(17,'Samoli',12458456544),		(18,'Mohammadpur',12458456544),	(19,'New Market',12458456544),	(20,'Azimpur',12458456544),
(21,'Shahabug',12458456544),	(22,'Paltan',12458456544),		(23,'Kowran Bazar',12458456544),(24,'Farmgate',12458456544),
(25,'Banglamotor',12458456544),	(26,'Panthopoth',12458456544),	(27,'Motijil',12458456544),		(28,'Mowchak',12458456544),
(29,'Badda',12458456544),		(30,'Link Road',12458456544);


GO

CREATE TABLE MemberShip
(
Mem_Id				INT PRIMARY KEY, 
Product_Range_From	INT,
Product_Range_To	INT,
Discount_Rate		INT,
Type				VARCHAR(50)
);

GO
INSERT INTO MemberShip VALUES 
(1,2000,10000,5, 'Bronze'),
(2,10000,20000,10,'Silver'),
(3,20000,40000,20,'Gold'),
(4,40000, 100000,25, 'Platinum');

GO

CREATE TABLE Customer
(
Cus_Id	    INT PRIMARY KEY, 
Cus_Name	VARCHAR(50), 
Phone		CHAR(11),
Cus_Email   VARCHAR(50),
Mem_Id      INT REFERENCES MemberShip (Mem_Id)
);

GO
INSERT INTO Customer VALUES 
(1,'Alom',12457845412,'alom@gmail.com',1),		(2,'Hasan',12457845412,'hasan@gmail.com',2),		(3,'Mamun',12457845412,'mamun@gmail.com',4),
(4,'Rana',12457845412,'rana@gmail.com',1),		(5,'Jahid',12457845412,'jahid@gmail.com',2),		(6,'Kawser',12457845412,'kawser@gmail.com',3),
(7,'Tareq',12457845412,'tareq@gmail.com',1),	(8,'Tanvir',12457845412,'tanvir@gmail.com',2),		(9,'Robiul',12457845412,'robiul@gmail.com',4),
(10,'Naeem',12457845412,'naeem@gmail.com',2),	(11,'Iqram',12457845412,'iqram@gmail.com',3),		(12,'Alvi',12457845412,'alvi@gmail.com',4),
(13,'Rasel',12457845412,'rasel@gmail.com',1),	(14,'Pavel',12457845412,'pavel@gmail.com',2),		(15,'Parvej',12457845412,'parvej@gmail.com',3),
(16,'Mainu',12457845412,'mainu@gmail.com',2),	(17,'Momin',12457845412,'momin@gmail.com',3),		(18,'Nazim',12457845412,'nazim@gmail.com',4),
(19,'Nasir',12457845412,'nasir@gmail.com',2),	(20,'Arif',12457845412,'arif@gmail.com',3),			(21,'John',12457845412,'john@gmail.com',4),
(22,'Justin',12457845412,'justin@gmail.com',3),	(23,'Sowrob',12457845412,'sowrab@gmail.com',2),		(24,'Ahsan',12457845412,'ahsan@gmail.com',1),
(25,'Abir',12457845412,'abir@gmail.com',4),		(26,'Sobuj',12457845412,'sobuj@gmail.com',2),		(27,'Siam',12457845412,'siam@gmail.com',1),
(28,'Abdul',12457845412,'abdul@gmail.com',2),	(29,'Fahad',12457845412,'fahad@gmail.com',1),		(30,'Imran',12457845412,'imran@gmail.com',4),
(31,'Julo',12457845412,'julo@gmail.com',4),		(32,'Kito',12457845412,'kito@gmail.com',2),			(33,'Rola',12457845412,'rola@gmail.com',1),
(34,'Joaa',12457845412,'joaa@gmail.com',4),		(35,'Clan',12457845412,'clan@gmail.com',1),			(36,'Dove',12457845412,'dove@gmail.com',4),
(37,'Fring',12457845412,'fring@gmail.com',3),	(38,'Ting',12457845412,'ting@gmail.com',1),			(39,'Floop',12457845412,'floop@gmail.com',2),
(40,'Chap',12457845412,'chap@gmail.com',4),		(41,'Tom',12457845412,'tom@gmail.com',4),			(42,'Teen',12457845412,'teem@gmail.com',3),
(43,'Dere',12457845412,'dere@gmail.com',1),		(44,'Fine',12457845412,'fine@gmail.com',2),			(45,'Wale',12457845412,'wali@gmail.com',1),
(46,'Roon',12457845412,'Roon@gmail.com',2),		(47,'Weer',12457845412,'weer@gmail.com',1),			(48,'Dnn',12457845412,'dnn@gmail.com',1),
(49,'Goos',12457845412,'goos@gmail.com',2),		(50,'Rone',12457845412,'rone@gmail.com',2);

GO


CREATE TABLE Category
(
Ctg_Id	    INT PRIMARY KEY, 
Ctg_Name	VARCHAR(50)
);

GO
INSERT INTO Category VALUES 
(1,'Food & Veberage'),		(2,'Mens Shirts'),				(3,'Parts'),					(4,'Meat and Fish‎'),			(5,'Cooking'),				(6,'Home'),					(7,'Cleaning'),		
(8,'Pest Control'),			(9,'Office Products'),			(10,'Bread/Bakery'),			(11,'Dairy'),					(12,'Dry/Baking Goods'),	(13,'Frozen Foods'),		(14,'Scientific Instruments'),
(15,'Footwear‎'),			(16,'Furniture'),				(17,'Road Bicycle‎'),			(18,'Paper Goods'),				(19,'Personal Care'),		(20,'Education'),			(21,'Baby Item'),		
(22,'Electronic'),			(23,'Ceramics'),				(24,'Consumer'),				(25,'Cosmetics'),				(26,'Baby Cosmetics'),		(27,'Fabrics'),				(28,'Sea Food'),
(29,'Pharmacy'),			(30,'Trucks‎'),					(31,'Jackets'),					(32,'Fashion'),					(33,'Jewelry'),				(34,'Stationery'),			(35,'Chemical'),	
(36,'Computer'),			(37,'Internet'),				(38,'Construction Equipment'),	(39,'Electrical Equipment'),	(40,'Garments'),			(41,'Hardware & Metal'),	(42,'Leather Goods'),				
(43,'Appliances');

GO


CREATE TABLE Product
(
	Pro_Id			INT PRIMARY KEY,
	Ctg_Id			INT REFERENCES Category (Ctg_Id),
	Pro_Name		VARCHAR(50),
	Pro_Img			VARCHAR(100),
	Selling_Price	INT,
	
);
GO


INSERT INTO Product VALUES 
(1, 1, 'Kit Kat','~/Image/img1.jpg',200),				(2,1, 'Biscuits','~/Image/img2.jpg',150),					(3,1, 'Breads','~/Image/img3.jpg',310),				(4,1, 'Soft Drink','~/Image/img4.jpg',600),			(5,1, 'Tea and Coffee','~/Image/img5.jpg',500),
(6,2, 'Button-Down Shirt','~/Image/img6.jpg',300),		(7,2, 'Dress Shirt','~/Image/img7.jpg',140),				(8,2, 'Over shirt','~/Image/img8.jpg',142),			(9,3, 'Wave Bike Lock','~/Image/img9.jpg',550),		(10,3, 'Oil Caps','~/Image/img10.jpg',900),
(11,3, 'Bike Brake','~/Image/img11.jpg',100),			(12,4, 'Boat Shoe','~/Image/img12.jpg',600),				(13,4, 'Brogue Shoe','~/Image/img13.jpg',800),		(14,4, 'Chelsea Boot','~/Image/img14.jpg',420),		(15,5, 'Work tables','~/Image/img15.jpg',400),
(16,5, 'Office work chair','~/Image/img16.jpg',320),	(17,5, 'Revolving office chair','~/Image/img17.jpg',500),	(18,5, 'Bunk beds','~/Image/img18.jpg',400),		(19,5, 'High beds','~/Image/img19.jpg',450),		(20,5, 'Book Self','~/Image/img20.jpg',500),
(21,6, 'Race bicycle','~/Image/img21.jpg',120),			(22,6, 'Vitus Bicycle','~/Image/img22.jpg',200),			(23,6, 'Rider Bicycle','~/Image/img23.jpg',500),	(24,7, 'Toyota Truck','~/Image/img24.jpg',600),		(25,7, 'Dodge Ram Truck','~/Image/img25.jpg',410),
(26,8, 'Bomber Jackets','~/Image/img26.jpg',400),		(27,8, 'Biker Jacket','~/Image/img27.jpg',100),				(28,9, 'Microwave oven','~/Image/img28.jpg',700),	(29,9, 'Air Conditioner','~/Image/img29.jpg',410),	(30,9, 'Light','~/Image/img30.jpg',900);
GO



CREATE TABLE StoresIn
(
	Pro_Id			INT REFERENCES Product (Pro_Id),
	Pro_Quantity	INT,
	Bra_Id			INT REFERENCES Branch (Bra_Id),
	PRIMARY KEY (Pro_Id, Bra_Id)
);

GO


INSERT INTO StoresIn VALUES
(1, 2, 1),		(1, 5, 2),		(1, 6, 3),		(1, 4, 4),		(1, 5, 5),		(1, 6, 6),		(2, 5, 1),		(2, 6, 2),
(2, 4, 3),		(2, 5, 4),		(2, 4, 5),		(2, 4, 6),		(3, 5, 7),		(3, 3, 8),		(3, 4, 9),		(3, 5, 10),
(3, 6, 11),		(3, 7, 12),		(3, 8, 13),		(4, 1, 1),		(4, 2, 2),		(4, 3, 3),		(4, 4, 4),		(4, 5, 5),
(4, 8, 7),		(4, 5, 8),		(5, 1, 1),		(5, 7, 4),		(5, 4, 5),		(6, 5, 5),		(6, 5, 6),		(6, 4, 8),	
(7, 12, 12),	(8, 10, 15),	(11, 55, 23),	(14, 21, 5),	(14, 14, 6),	(14, 25, 8),	(14, 21, 11),	(7, 5, 4),
(14, 58, 12),	(14, 22, 14),	(14, 25, 30),	(15, 22, 21),	(15, 15, 23),	(18, 17, 17),	(19, 41, 17),	(25, 14, 25),
(19, 20, 25),	(19, 25, 29),	(20, 10, 10),	(20, 19, 24),	(22, 14, 15),	(24, 32, 22),	(25, 25, 18),	(27, 14, 25),	
(29, 25, 14);

GO


CREATE TABLE Transactions
(
	Tra_Id			INT PRIMARY KEY,
	Pro_Id			INT REFERENCES Product	(Pro_Id),
	Cus_Id			INT REFERENCES Customer (Cus_Id),
	Quantity		INT,
	Total_Price		INT,
	Selling_Date	date
);
GO

INSERT INTO Transactions VALUES

(1, 1, 1, 10,	5401,	'2020-02-10'),
(2, 1, 2, 2,	412,	'2020-02-11'),
(3, 2, 2, 1,	200,	'2020-02-13'),
(4, 3, 4, 2,	1000,	'2020-02-15'),
(5, 3, 5, 1,	300,	'2020-02-15'),
(6, 4, 5, 2,	500,	'2020-02-16'),
(7, 4, 6, 4,	1200,	'2020-02-16'),
(8, 5, 6, 5,	2100,	'2020-02-17'),
(9, 5, 7, 1,	200,	'2020-02-17'),
(10, 6, 8, 2,	100,	'2020-03-01'),
(11, 7, 9, 2,	400,	'2020-03-10');

GO









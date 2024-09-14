use nayan;
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description TEXT
);

INSERT INTO Categories (CategoryID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Seafood', 'Seaweed and fish');

select * from Categories;
-- (********************************************************************************************)
CREATE TABLE Customers (
    CustomerID VARCHAR(5) PRIMARY KEY,
    CompanyName VARCHAR(50),
    ContactName VARCHAR(50),
    ContactTitle VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(30),
    Fax VARCHAR(30)
);

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', '030-0074 321', '030-0076 545'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '5021', 'Mexico', '(5) 555-4729', '(5) 555-3745'),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 'Mataderos 2312', 'México D.F.', NULL, '5023', 'Mexico', '(5) 555-3932', NULL),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', NULL, 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750'),
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Berguvsvägen 8', 'Luleå', NULL, 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67');

select * from Customers;
-- (************************************************************************************************************************************************)
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(3, 2),
    PRIMARY KEY (OrderID, ProductID)
);

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(10248, 11, 14.00, 12, 0.00),
(10248, 42, 9.80, 10, 0.00),
(10248, 72, 34.80, 5, 0.00),
(10249, 14, 18.60, 9, 0.00),
(10249, 51, 42.40, 40, 0.00),
(10250, 41, 7.70, 10, 0.00),
(10250, 51, 42.40, 35, 0.15),
(10250, 65, 16.80, 15, 0.15),
(10251, 22, 16.80, 6, 0.05),
(10251, 57, 15.60, 15, 0.05);

select * from OrderDetails ;
-- (***********************************************************************************************************************************)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued BIT
);

INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.00, 39, 0, 10, 0),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00, 17, 40, 25, 0),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00, 13, 70, 25, 0),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 1),
(6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, 0),
(7, 'Uncle Bob''s Organic Dried Pears', 3, 4, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, 0),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, 1),
(10, 'Ikura', 4, 5, '12 - 200 ml jars', 31.00, 31, 0, 0, 0);
select * from  Products;
-- (*************************************************************************************************************************************************)
CREATE TABLE Suppliers1 (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(50),
    ContactName VARCHAR(50),
    ContactTitle VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(30),
    Fax VARCHAR(30)
);

INSERT INTO Suppliers1 (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL),
(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349'),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL),
(5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL),
(6, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91'),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'São Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL);

select * from Suppliers1;
-- (*************************************************************************************************************************************************)
-- (****************************************************** QUERIES **********************************************************************************)

-- ( 1. Create a report that shows the CategoryName and Description from the categories table sorted by CategoryName)
SELECT CategoryName, Description
FROM Categories
ORDER BY CategoryName;

-- (2. Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table sorted by Phone.)
SELECT ContactName, CompanyName, ContactTitle, Phone
FROM Customers
ORDER BY Phone;

-- (3. Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table.)
SELECT LOWER(CustomerID) AS ID
FROM Customers;

-- (4. Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the Country in descending order then by CompanyName in ascending order.)
SELECT CompanyName, Fax, Phone, Country
FROM Suppliers1
ORDER BY Country DESC, CompanyName ASC;

-- (5. Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only.)
SELECT CompanyName, ContactName
FROM Customers
WHERE City = 'Buenos Aires';

-- (6. Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.)
SELECT ProductName, UnitPrice, QuantityPerUnit
FROM Products
WHERE UnitsInStock = 0;

-- (7. Create a report showing all the ContactName, Address, City of all customers not from Germany,Mexico, Spain.)
SELECT ContactName, Address, City
FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'Spain');

-- (8. Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.)
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' OR City LIKE 'B%';

-- (9. Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for reorder.)
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM Products
WHERE UnitsInStock <= ReorderLevel;

-- 10. Create a report that shows the CompanyName, ContactName number of all customer that have no fax number.)
SELECT CompanyName, ContactName
FROM Customers
WHERE Fax IS NULL;

-- (11. Create a report that shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted by ContactName.)
SELECT CompanyName ,ContactName,Fax 
FROM Customers
WHERE Fax IS NULL
ORDER BY ContactName;

-- (12. Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name sorted by ContactName)
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE '%L%'
ORDER BY ContactName;

/*  13. Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by OrderID and sorted by NumberofOrders 
 in descending order. HINT: you will need to use a Groupby statement.  */
SELECT OrderID, COUNT(OrderID) AS NumberofOrders
FROM OrderDetails
GROUP BY OrderID
ORDER BY NumberofOrders DESC;

/*14. Create a report that shows the SupplierID, ProductName, CompanyName from all product Supplied by Exotic Liquids, Specialty Biscuits, 
 Ltd., Escargots Nouveaux sorted by the supplier ID.*/
SELECT Products.SupplierID, Products.ProductName, Suppliers.CompanyName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.CompanyName IN ('Exotic Liquids', 'Specialty Biscuits, Ltd.', 'Escargots Nouveaux')
ORDER BY Products.SupplierID;


 
-- (15. Create a report that shows the ContactName, ContactTitle, CompanyName of customers that the has no "Sales" in their ContactTitle.)
SELECT ContactName, ContactTitle, CompanyName
FROM Customers
WHERE ContactTitle NOT LIKE '%Sales%';

-- (16. Create a report that shows the CompanyName, ContactTitle, City, Country of all customers in any city in Mexico or other cities in Spain other than Madrid.
SELECT CompanyName, ContactTitle, City,Country
FROM Customers
WHERE (Country = 'Mexico') OR (Country = 'Spain' AND City != 'Madrid');

-- (17. Create a report that shows the ContactName of all customers that do not have letter A as the second alphabet in their Contactname.
SELECT ContactName
FROM Customers
WHERE SUBSTRING(ContactName, 2, 1) != 'A';

/*** 18. Create a report that shows the average UnitPrice rounded to the next whole number, total price of UnitsInStock and maximum number of orders
 from the products table. All saved as AveragePrice,TotalStock and MaxOrder respectively.*/
SELECT ROUND(AVG(UnitPrice)) AS AveragePrice,SUM(UnitPrice * UnitsInStock) AS TotalStock,MAX(UnitsOnOrder) AS MaxOrder 
FROM Products;
-- (19. Create a report that shows the SupplierID, CompanyName, CategoryName, ProductName and UnitPrice from the products, suppliers and categories table.
SELECT Products.SupplierID, Suppliers.CompanyName, Categories.CategoryName,Products.ProductName, Products.UnitPrice
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- (20. Create a report that shows the average, minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice and MaximumPrice respectively.
SELECT AVG(UnitPrice) AS AveragePrice, MIN(UnitPrice) AS MinimumPrice, MAX(UnitPrice) AS MaximumPrice
FROM Products;

/* (21. Create a view named ProductDetails that shows the ProductID, CompanyName, ProductName,CategoryName, Description, QuantityPerUnit,
 UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel,Discontinued from the supplier, products and categories tables. HINT: Create a View  */
 CREATE VIEW ProductDetails AS
SELECT Products.ProductID, Suppliers.CompanyName, Products.ProductName, Categories.CategoryName, Categories.Description, 
Products.QuantityPerUnit, Products.UnitPrice, Products.UnitsInStock, Products.UnitsOnOrder, Products.ReorderLevel, Products.Discontinued
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- (22. Create a report that fetch the first 5 character of categoryName from the category tables and renamed as ShortInfo.)
SELECT SUBSTRING(CategoryName, 1, 5) AS ShortInfo
FROM Categories;

-- (23. Create a report that shows the CompanyName and ProductName from all product in the Seafood category.)
SELECT Suppliers.CompanyName,Products.ProductName FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID WHERE Categories.CategoryName = 'Seafood';

-- (24. Create a report that shows the CategoryID, CompanyName and ProductName from all product in the categoryID 5.
SELECT Products.CategoryID, Suppliers.CompanyName, Products.ProductName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.CategoryID = 5;

-- 25. Create a select statement that outputs the following from the product table.
SELECT CONCAT(ProductName, ' weighs ', QuantityPerUnit, ' and costs $', UnitPrice) AS ProductInfo
FROM Products
WHERE ProductName IN ('Chai', 'Chang', 'Aniseed Syrup', 'Chef Anton''s Cajun Seasoning', 
                    'Chef Anton''s Gumbo Mix', 'Grandma''s Boysenberry Spread', 
                    'Uncle Bob''s Organic Dried Pears', 'Northwoods Cranberry Sauce', 
                    'Mishi Kobe Niku', 'Ikura');











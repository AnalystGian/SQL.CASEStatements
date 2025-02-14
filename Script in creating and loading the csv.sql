-- Create the customers table
CREATE TABLE customers
(
    Customer_ID CHAR(8) PRIMARY KEY,
	Bracket_cust_id CHAR(10),
    Customer_Name VARCHAR(255),
    Segment VARCHAR(255),
    Age INT,
	Country VARCHAR(255),
	City VARCHAR(255),
	State VARCHAR(255),
    Postal_Code INT,
	Region VARCHAR(255)
);

-- Create the sales table
CREATE TABLE sales
(
    Order_line INT,
	Order_ID VARCHAR(255),
	Order_Date DATE,
	Ship_Date DATE,
    Ship_Mode VARCHAR(255),
    Customer_ID CHAR(8),
	Product_ID VARCHAR(255),
	Sales DECIMAL(10,5),
	Quantity INT,
    Discount DECIMAL(4,2),
	Profit DECIMAL(10,5)
);

COPY customers
(Customer_ID,
	Bracket_cust_id,
    Customer_Name,
    Segment,
    Age,
	Country,
	City,
	State,
    Postal_Code,
	Region)
FROM 'D:\DATA ANALYSTS\PROJECTS\SQL\SQL_Case_Statements\Customers.csv'
DELIMITER ','
CSV HEADER;

SET datestyle = 'ISO, MDY';

COPY sales
(Order_line,
	Order_ID,
	Order_Date,
	Ship_Date,
    Ship_Mode,
    Customer_ID,
	Product_ID,
	Sales,
	Quantity,
    Discount,
	Profit)
FROM 'D:\DATA ANALYSTS\PROJECTS\SQL\SQL_Case_Statements\Sales.csv'
DELIMITER ','
CSV HEADER;

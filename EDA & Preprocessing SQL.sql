CREATE DATABASE project;

USE project;

SELECT * FROM project.dataset;

SELECT 

    Typeofsales, 

    COUNT(*) AS count

FROM 

    dataset

GROUP BY 

    Typeofsales;
    
SELECT 

    DrugName, 

    SUM(Quantity) AS total_sales

FROM 

    dataset

WHERE 

    Typeofsales = 'Sale'

GROUP BY 

    DrugName

ORDER BY 

    total_sales DESC;
    
    SELECT 

     Dept, 

    SUM(Quantity) AS total_sales

FROM 

    dataset

WHERE 

    Typeofsales = 'Sale'

GROUP BY 

	Dept

ORDER BY 

    total_sales DESC;
    
    SELECT 

    EXTRACT(MONTH FROM Dateofbill) AS month, 

    SUM(Quantity) AS total_sales

FROM 

    dataset

WHERE 

    Typeofsales = 'Sale'

GROUP BY 

    month

ORDER BY 

    month;
    
    SELECT 
    SubCat, 
    SUM(Final_Sales) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    SubCat
ORDER BY 
    total_sales DESC;
    
    SELECT 
    SubCat1, 
    SUM(Final_Sales) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    SubCat1
ORDER BY 
    total_sales DESC;
    
    ALTER TABLE Dataset
ADD COLUMN Dateofbill_datetime DATETIME;

SET SQL_SAFE_UPDATES = 0;

UPDATE dataset
SET Dateofbill_datetime = STR_TO_DATE(Dateofbill, '%m/%d/%Y');

SELECT * FROM PROJECT.DATASET;

UPDATE DATASET
SET formulation = 0
WHERE formulation IS NULL;

UPDATE dataset
SET DrugName = 0
WHERE DrugName IS NULL;

UPDATE dataset
SET SubCat = 0
WHERE SubCat IS NULL;

UPDATE dataset
SET SubCat1 = 0
WHERE SubCat1 IS NULL;

ALTER TABLE dataset
ADD COLUMN SalesAmount DECIMAL(10, 2);

UPDATE dataset
SET SalesAmount = Quantity * Final_Sales;

SELECT 
    Typeofsales, 
    COUNT(*) AS count
FROM 
    dataset
GROUP BY 
    Typeofsales;
    
    SELECT 
    DrugName, 
    SUM(SalesAmount) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    DrugName
ORDER BY 
    total_sales DESC;
    
    SELECT 
    Dept, 
    SUM(SalesAmount) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    Dept
ORDER BY 
    total_sales DESC;
    
    SELECT 
    SubCat, 
    SUM(SalesAmount) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    SubCat
ORDER BY 
    total_sales DESC;
    
    SELECT 
    SubCat1, 
    SUM(SalesAmount) AS total_sales
FROM 
    dataset
WHERE 
    Typeofsales = 'Sale'
GROUP BY 
    SubCat1
ORDER BY 
    total_sales DESC;
    
    
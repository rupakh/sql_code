 -- Query to find the user accessing the database
 SELECT user();
-- Query to find the version of the database 
 SELECT VERSION();
 -- Query to find the current date
 SELECT CURRENT_DATE;
 -- Query to find the current date-time 
 SELECT NOW();

-- Shows all the databases 
SHOW DATABASES;
 
  -- This will create a database named can_imm
CREATE DATABASE can_imm;
 
 -- USE sakila will access the can_imm database
USE can_imm;
 
-- This will show all the tables in the database 
SHOW TABLES;

-- This will show the table structure
DESCRIBE canada_data;

-- Create a table from existing table
create table canada_data_1 as
select * from canada_data where 1=0;

-- Load the table with CSV file
LOAD DATA LOCAL INFILE 'C:/Users/rupak/OneDrive/Desktop/sql_code/sql_code/Canada_Immigration_Queries/canadian_immigration_data.csv' INTO TABLE canada_data_1;

/*  Rank into the following error:
Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides	0.000 sec
*/

-- This will enable loading local data:
SET GLOBAL local_infile=1;

-- Try to load the file again:
LOAD DATA LOCAL INFILE 'C:/Users/rupak/OneDrive/Desktop/sql_code/sql_code/Canada_Immigration_Queries/canadian_immigration_data.csv' INTO TABLE can_imm.canada_data_1;

/* Another error, can be resolved with the following solution:

This restriction can be removed from MySQL Workbench 8.0 in the following way.
Edit the connection, on the Connection tab, go to the 'Advanced' sub-tab, and 
in the 'Others:' box add the line 'OPT_LOCAL_INFILE=1'.
*/

-- Load the file now:
LOAD DATA LOCAL INFILE 'C:/Users/rupak/OneDrive/Desktop/sql_code/sql_code/Canada_Immigration_Queries/canadian_immigration_data.csv' INTO TABLE can_imm.canada_data_1 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Check if data has been loaded:
SELECT * FROM can_imm.canada_data_1;
-- Data has been loaded

-- Delete data from table:
TRUNCATE TABLE can_imm.canada_data_1;
DELETE FROM can_imm.canada_data_1;

-- Updating table's data
 UPDATE can_imm.canada_data_1
 SET DevName = 'Developing Regions' 
 WHERE DevName = 'Developing regions';
 
 -- Selecting particular rows:
SELECT * FROM can_imm.canada_data_1
WHERE REGION='Southern Asia';


-- Selecting particular columns:
SELECT country FROM can_imm.canada_data_1
WHERE REGION='Northern Africa';

-- Selecting DISTINCT values of a column from a table:
SELECT distinct region
FROM can_imm.canada_data_1;
-- 23 distinct regions

-- Sorting data:
SELECT * FROM can_imm.canada_data_1
ORDER BY CONTINENT;

-- Sorting data in descending order
SELECT * FROM can_imm.canada_data_1
ORDER BY CONTINENT desc;

-- Sorting data using multiple columns
SELECT * FROM can_imm.canada_data_1
ORDER BY CONTINENT,REGION desc;

-- Retrieve data only for NOT NULL data
SELECT * FROM can_imm.canada_data_1
WHERE CONTINENT IS NOT NULL;

-- Retrieve data only for NULL data
SELECT * FROM can_imm.canada_data_1
WHERE CONTINENT IS NULL;

-- Using date functions
SELECT curdate(), YEAR(curdate()), MONTH(curdate()), DAYOFMONTH(curdate()), DAY(curdate());

SELECT curdate(), YEAR(curdate()), MONTH(curdate()), DAYOFMONTH(curdate()), DAY(curdate())
WHERE MONTH(curdate())=9;

-- DATE_ADD adds dates based on the interval - in this case, 1 month
SELECT curdate(), YEAR(curdate()), MONTH(curdate()), DAYOFMONTH(curdate()), DAY(curdate())
WHERE MONTH(curdate())+1 = MONTH(DATE_ADD(CURDATE(),INTERVAL 1 MONTH));

-- Add 1 day to the current day
SELECT curdate() + INTERVAL 1 DAY;

-- Working with NULL values
SELECT 1 IS NULL, 1 IS NOT NULL;

-- Pattern matching query
SELECT * FROM can_imm.canada_data_1
WHERE CONTINENT LIKE 'A%'
ORDER BY CONTINENT;

-- Find continents ending with 'ca'
SELECT * FROM can_imm.canada_data_1
WHERE CONTINENT LIKE '%ca'
ORDER BY CONTINENT;

-- Using REGEXP
SELECT * FROM can_imm.canada_data_1
WHERE REGEXP_LIKE(CONTINENT, '^a');



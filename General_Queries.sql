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
WHERE REGION='Southern Asia'





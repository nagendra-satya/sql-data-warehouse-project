/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

--Use Master
use master;
Go

--Drop and create the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases where name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
Go

--Create 'DataWarehouse'database
Create DataBase DataWarehouse;

USE DataWarehouse;

--Create schemas
Create SCHEMA bronze;
Go
Create SCHEMA silver;
Go
Create SCHEMA gold;


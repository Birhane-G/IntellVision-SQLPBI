--- DATA CONTROL LANGUAGE
-- 1 Create User Account 
----- A. LOGIN
CREATE LOGIN john WITH PASSWORD = '12345';
CREATE LOGIN jane WITH PASSWORD = '123456';
----- B. USER
CREATE USER finance FOR LOGIN john;
CREATE USER sales FOR LOGIN jane;
-- 2 Create Role
CREATE ROLE financeTeam;
CREATE ROLE salesTeam;
---3 Assign user to role
--- ALTER ROLE financeTeam ADD MEMEBR finance;
EXEC sp_addrolemember 'financeTeam', 'finance';
EXEC sp_addrolemember 'salesTeam', 'sales';
---4 GRANT and REVOKE 
--- GRANT PERMISSION TO USER 
-- GRANT PERMISSION ON TABLENAME TO USERNAME;
--- GRANT PERMISSION TO ROLE 
-- GRANT PERMISSION ON TABLENAME TO ROLENAME;
GRANT SELECT, DELETE ON Payment TO financeTeam;
GRANT SELECT, INSERT ON Product TO salesTeam;
---5 TEST
SELECT * FROM Customer;

EXECUTE AS USER = 'finance'
SELECT * FROM Payment;

REVERT;

EXECUTE AS USER = 'sales'
SELECT * FROM Product;

--- EXCERSICE
/* You are the database administrator for an e-commerce company. The company has decided to 
implement a new security policy that requires more granular control over user permissions. 
Your task is to create and manage database roles to control access to the e-commerce database. */
---1) Create THREE user accounts
------ A> Create LOGIN
------ A> Create USER
---2) Create THREE database roles AND GRANT PERMISSIONS To Roles
-------A> "CustomerService" with SELECT, INSERT, UPDATE permissions on the Customers table, and SELECT permissions on the Orders table.
-------B> "SalesManager" with SELECT, INSERT, UPDATE, DELETE permissions on the Orders table, and SELECT permissions on the Customers and Products tables.
-------C> "InventoryManager" with SELECT, INSERT, UPDATE permissions on the Products table.
---3) Assign user to the Roles
---4 TEST
use final_project;
DROP TABLE IF EXISTS business;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS assets;
DROP TABLE IF EXISTS roles;
-- create the team table 
CREATE TABLE business (
    _revenue     INT             NOT NULL,
    business_name   VARCHAR(75)     NOT NULL,
    _address      VARCHAR(75)     NOT NULL
); 

-- create the player table and set the foreign key
CREATE TABLE employee (
    employee_id   INT             NOT NULL        ,
    first_name  VARCHAR(75)     NOT NULL,
    last_name   VARCHAR(75)     NOT NULL,
    job_code    VARCHAR(75)     NOT NULL,
    _salary     INT             NOT NULL
);

CREATE TABLE roles (
    _functions  VARCHAR(75)     NOT NULL,
    _title   VARCHAR(75)     NOT NULL
);

CREATE TABLE clients (
    client_id   INT             NOT NULL        ,
    _name  VARCHAR(75)     NOT NULL,
    _company   VARCHAR(75)     NOT NULL
);

CREATE TABLE assets (
    asset_id   INT             NOT NULL,
    _name  VARCHAR(75)     NOT NULL,
    _value     INT             NOT NULL
);

CREATE TABLE transactions (
	transaction_id     INT             NOT NULL,
     _name  VARCHAR(75)     NOT NULL,
    _value   INT             NOT NULL,
    _code   INT     NOT NULL    
);


-- insert business records
INSERT INTO business(_revenue, business_name,_address)
    VALUES(2000, 'Wizards of the Coast Year 2000', '1100 Walaby way shelby');
INSERT INTO business(_revenue, business_name,_address)
    VALUES(2001, 'Wizards of the Coast Year 2001', '1100 Walaby way shelby');
INSERT INTO business(_revenue, business_name,_address)
    VALUES(2002, 'Wizards of the Coast Year 2002', '1100 Walaby way shelby');
INSERT INTO business(_revenue, business_name,_address)
    VALUES(2003, 'Wizards of the Coast Year 2003', '1100 Walaby way shelby');
INSERT INTO business(_revenue, business_name,_address)
    VALUES(2004, 'Wizards of the Coast Year 2004', '1100 Walaby way shelby');
    INSERT INTO business(_revenue, business_name,_address)
    VALUES(2005, 'Wizards of the Coast Year 2005', '1100 Walaby way shelby');


-- insert employee records 
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(001,'Bob', 'Burgers','owner',30000);
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(002,'Julius', 'Caesar', 'janitor',400);
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(003,'Bob', 'Burgers', 'secretary',4000);
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(004,'Bob', 'Burgers','accountant',2000);
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(005,'Bob', 'Burgers', 'support',2500);
INSERT INTO employee(employee_id,first_name, last_name, job_code,_salary) 
    VALUES(006,'Bob', 'Burgers', 'tech',15000);

 -- insert roles
INSERT INTO roles(_title,_functions)
	VALUES('owner','management');
INSERT INTO roles(_title,_functions)
	VALUES('secretary','record tracking');
 INSERT INTO roles(_title,_functions)
	VALUES('support','customers');
 INSERT INTO roles(_title,_functions)
	VALUES('tech','fix equipment');
 INSERT INTO roles(_title,_functions)
	VALUES('janitor','keep place clean');
 INSERT INTO roles(_title,_functions)
	VALUES('accountant','record for taxes');
    
-- insert clients
 INSERT INTO clients(client_id, _name,_company)
	VALUES(1, 'Bill','Tires for All');
 INSERT INTO clients(client_id, _name,_company)
	VALUES(2, 'Jim','Jims repair shop');
 INSERT INTO clients(client_id, _name,_company)
	VALUES(3, 'Clyde','Tires for Less');
 INSERT INTO clients(client_id, _name,_company)
	VALUES(4, 'Jill','Jills Bakery');
 INSERT INTO clients(client_id, _name,_company)
	VALUES(5, 'Becca','Cars for less');
 INSERT INTO clients(client_id, _name,_company)
	VALUES(6, 'Julie','Julies Accounting');
    
-- insert assets
 INSERT INTO assets(asset_id ,_name,_value)
	VALUES(1,'Raw Goods',1000);
INSERT INTO assets(asset_id,_name,_value)
	VALUES(2,'Tires',500);
INSERT INTO assets(asset_id,_name,_value)
	VALUES(3 ,'Liquid Assets',10000);
INSERT INTO assets(asset_id,_name,_value)
	VALUES(4 ,'Cars',40000);
INSERT INTO assets(asset_id,_name,_value)
	VALUES(5 ,'Tires',2500);
INSERT INTO assets(asset_id,_name,_value)
	VALUES(6 ,'Tools',250);    
    
    -- insert transactions
 INSERT INTO transactions(transaction_id, _name, _value, _code)
	VALUES(1, 'Accounts Recivable', 2000, 001);
INSERT INTO transactions(transaction_id,_name,_value, _code)
	VALUES(2, 'Accounts Payable', 250, 002);
INSERT INTO transactions(transaction_id,_name,_value, _code)
	VALUES(3,'Accounts Payable',3000,003);
INSERT INTO transactions(transaction_id,_name,_value, _code)
	VALUES(4,'Accounts Recivable',150,004);
INSERT INTO transactions(transaction_id,_name,_value, _code)
	VALUES(5,'Accounts Recivable',10000,005);
INSERT INTO transactions(transaction_id,_name,_value, _code)
	VALUES(6,'Accounts Payable',2500,006); 
    
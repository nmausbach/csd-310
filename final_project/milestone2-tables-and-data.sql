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
    _business_name   VARCHAR(75)     NOT NULL,
    _address      VARCHAR(75)     NOT NULL
); 

-- create the player table and set the foreign key
CREATE TABLE employee (
    _employee_id   INT             NOT NULL        ,
    _first_name  VARCHAR(75)     NOT NULL,
    _last_name   VARCHAR(75)     NOT NULL,
    _job_code    VARCHAR(75)     NOT NULL,
    _salary     INT             NOT NULL
);

CREATE TABLE roles (
    _functions  VARCHAR(75)     NOT NULL,
    _title   VARCHAR(75)     NOT NULL
);

CREATE TABLE clients (
    _client_id   INT             NOT NULL        ,
    _name  VARCHAR(75)     NOT NULL,
    _company   VARCHAR(75)     NOT NULL,
    _dateJoined DATE
);

CREATE TABLE assets (
    _asset_id   INT             NOT NULL,
    _name  VARCHAR(75)     NOT NULL,
    _value     DOUBLE             NOT NULL
);

CREATE TABLE transactions (
	_transaction_id     INT             NOT NULL,
     _name  VARCHAR(75)     NOT NULL,
    _value   INT             NOT NULL,
    _code   INT     NOT NULL   ,
    _date DATE
);

-- insert business records
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2000, 'Wizards of the Coast Year 2000', '1100 Walaby way shelby');
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2001, 'Wizards of the Coast Year 2001', '1100 Walaby way shelby');
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2002, 'Wizards of the Coast Year 2002', '1100 Walaby way shelby');
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2003, 'Wizards of the Coast Year 2003', '1100 Walaby way shelby');
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2004, 'Wizards of the Coast Year 2004', '1100 Walaby way shelby');
INSERT INTO business(_revenue, _business_name,_address)
    VALUES(2005, 'Wizards of the Coast Year 2005', '1100 Walaby way shelby');


-- insert employee records 
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
    VALUES(001,'Bob', 'Burgers','owner',30000);
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
    VALUES(002,'Julius', 'Caesar', 'janitor',400);
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
    VALUES(003,'Bob', 'Burgers', 'secretary',4000);
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
    VALUES(004,'Bob', 'Burgers','accountant',2000);
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
    VALUES(005,'Bob', 'Burgers', 'support',2500);
INSERT INTO employee(_employee_id,_first_name, _last_name, _job_code,_salary) 
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
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(1, 'Bill','Tires for All', '2022-06-01');
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(2, 'Jim','Jims repair shop', '2022-07-21');
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(3, 'Clyde','Tires for Less', '2022-02-01');
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(4, 'Jill','Jills Bakery', '2022-05-20');
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(5, 'Becca','Cars for less', '2021-09-15');
 INSERT INTO clients(_client_id, _name,_company, _dateJoined)
	VALUES(6, 'Julie','Julies Accounting', '2021-08-21');
    
-- insert assets
 INSERT INTO assets(_asset_id ,_name,_value)
	VALUES(1,'Raw Goods',1000.00);
INSERT INTO assets(_asset_id,_name,_value)
	VALUES(2,'Tires',500.00);
INSERT INTO assets(_asset_id,_name,_value)
	VALUES(3 ,'Liquid Assets',10000.00);
INSERT INTO assets(_asset_id,_name,_value)
	VALUES(4 ,'Cars',40000.00);
INSERT INTO assets(_asset_id,_name,_value)
	VALUES(5 ,'Tires',2500.00);
INSERT INTO assets(_asset_id,_name,_value)
	VALUES(6 ,'Tools',250.00);    
    
    -- insert transactions
 INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(1, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(2, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(3, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(4, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(5, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(6, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(7, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id, _name, _value, _code, _date)
	VALUES(8, 'Accounts Recivable', 2000, 001, '2022-05-20');
INSERT INTO transactions(_transaction_id,_name,_value, _code, _date)
	VALUES(9, 'Accounts Payable', 250, 002, '2022-05-20');
INSERT INTO transactions(_transaction_id,_name,_value, _code, _date)
	VALUES(10,'Accounts Payable',3000,003, '2022-05-20');
INSERT INTO transactions(_transaction_id,_name,_value, _code, _date)
	VALUES(11,'Accounts Recivable',150,004, '2022-04-20');
INSERT INTO transactions(_transaction_id,_name,_value, _code, _date)
	VALUES(12,'Accounts Recivable',10000,005, '2022-06-20');
INSERT INTO transactions(_transaction_id,_name,_value, _code, _date)
	VALUES(13,'Accounts Payable',2500,006, '2022-06-20'); 
SELECT _client_id, _name,_company, _dateJoined FROM clients WHERE _dateJoined > (DATE_SUB(curdate(), INTERVAL 6 MONTH)) ORDER BY _dateJoined desc
-- fragmentation
create Schema temp  -- for fragmentation


create table temp.Customer
(
	Customer_Id int primary key,
	Name varchar(50),
	ContactInfo varchar(100),
	DrivingLicenseNumber varchar(100)
)
--1 Horizontal Fragmentation

select * into temp.Customer
from dbo.Customer 
where dbo.Customer.Customer_Id between 1 and 3

--test
select *
from temp.Customer

-- Vertical Fragmentation
select Customer_Id , Name , DrivingLicenseNumber into temp.VerticalCustomerFrag 
from Customer
--test
select *
from temp.VerticalCustomerFrag 

-- hybrid Fragmentation
select Customer_Id , Name , DrivingLicenseNumber into temp.hybridfragmentation 
from Customer
where Customer_Id = 2
--test
select *
from temp.hybridfragmentation 



-- Replication 
-- Full Replication
create schema replica

CREATE TABLE replica.CustomerCopy
(
    Customer_Id INT,
    Name VARCHAR(50),
    ContactInfo VARCHAR(100),
    DrivingLicenseNumber VARCHAR(100)
);

INSERT INTO replica.CustomerCopy (Customer_Id, Name, ContactInfo, DrivingLicenseNumber)
SELECT *
FROM Customer;


-- testing
select *
from replica.CustomerCopy



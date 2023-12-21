DROP DATABASE IF EXISTS Motorcycles;
CREATE DATABASE Motorcycles;

USE Motorcycles;


CREATE TABLE suppliers
(
	id int auto_increment,
	SupOrderId int Null,
	name varchar(25),
    primary key(id)
);

CREATE TABLE personal
(
	id int auto_increment,
    primary key(id),
	FirstName varchar(20),
	LastName varchar(25),
    position varchar(10),
    SupOrderID int,
    FOREIGN Key(SupOrderID) REFERENCES suppliers (id)
);

CREATE TABLE customers
(
id int auto_increment,
primary key(id),
FirstName varchar(20),
LastName varchar(25),
OrderID int,
FOREIGN Key(OrderID) REFERENCES suppliers (id)
);

INSERT suppliers(SupOrderId, name)
VALUES
(4455, 'Yamaha'),
(2234, 'Honda'),
(7756, 'Kawasaki');

INSERT personal(FirstName, LastName, position)
VALUES
('George', 'Goodmans', 'manager'),
('Joseph', 'Richardson', 'manager'),
('George', 'Goodmans', 'manager');

INSERT customers (FirstName, LastName)
Values
('Viktor', 'Pinchuk'),
('Vasyl', 'Burban'),
('Volodimir', 'Gerasimchuk');


DROP DATABASE IF EXISTS ofice;
CREATE DATABASE ofice;

USE ofice;

CREATE TABLE typesOfPosts
(postId int,
NameOfPost varchar(15),
primary key(postId)
);

CREATE TABLE staff
(
postId int,
FirstName varchar(20),
LastName varchar(20),
startingDate date,
city varchar(20),
salaryAmount int,
FOREIGN KEY (postId) REFERENCES typesOfPosts(postId)
);

INSERT typesOfPosts (postId, NameOfPost)
VALUES
(1, 'Director');

INSERT staff (postId, FirstName, LastName, startingDate, city, salaryAmount)
VALUES
(1, 'John', 'Johnson', '1986-07-25', 'Dallas', 10000);

/*
https://www.w3schools.com/sql/sql_create_db.asp - table definition
https://www.w3schools.com/sql/sql_drop_db.asp - dropping db
https://www.w3schools.com/sql/sql_primarykey.asp - primary key
https://www.w3schools.com/sql/sql_foreignkey.asp foreign key
https://www.w3schools.com/sql/sql_constraints.asp - Constraints

*/





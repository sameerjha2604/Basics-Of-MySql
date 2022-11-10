# SQL is a standard language for storing, manipulating and retrieving data in databases.
#With our online SQL editor, you can edit the SQL statements, and click on a button to view the result.

select * from customers;

#SQL stands for Structured Query Language
#SQL lets you access and manipulate databases

#Some of The Most Important SQL Commands
#SELECT - extracts data from a database
#UPDATE - updates data in a database
#DELETE - deletes data from a database
#INSERT INTO - inserts new data into a database
#CREATE DATABASE - creates a new database
#ALTER DATABASE - modifies a database
#CREATE TABLE - creates a new table
#ALTER TABLE - modifies a table
#DROP TABLE - deletes a table
#CREATE INDEX - creates an index (search key)
#DROP INDEX - deletes an index

select last_name, first_name from customers;

#  The SELECT DISTINCT statement is used to return only distinct (different) values.

select country_region from customers;
select distinct country_region from customers; 

#SQL SELECT DISTINCT Statement
select count(*) as distinctcountries 
from (select distinct country_region from customers);

#WHERE Clause Example
select * from customers
where country_region = 'USA';

#Text Fields vs. Numeric Fields
select * from customers
where id = 1;

#The SQL AND, OR and NOT Operators
select * from customers
where city = 'Chicago' or city = 'Miami';

select * from customers
where country_region = 'USA' and city = 'Miami';

select * from customers
where not country_region = 'USA';

select * from customers
where country_region = 'USA' and (city = 'Chicago' or city = 'Miami');

select * from customers
where country_region = 'USA' and not city = 'chicago';

# The SQL ORDER BY Keyword

select * from customers 
order by city;

select * from customers
order by city asc , state_province desc;

# SQL NULL Values

select id, company, last_name
from customers
where last_name is not null;

#SQL UPDATE Statement
update customers
set last_name = 'Jha', first_name = 'Sameer'
where id = 3;


#SQL DELETE Example

delete from customers where id = 2;

delete from customers
order by id desc limit 1;
 
# SQL TOP, LIMIT, FETCH FIRST or ROWNUM

select * from customers
limit 3;

select * from customers
WHERE country_region='USA'
LIMIT 3;

#SQL MIN() and MAX() Functions
select * from products;

#The following SQL statement finds the price of the cheapest product:

select min(list_price) as smallestprice
from products;

select max(list_price) as MaximumPrice
from products;

#  SQL COUNT(), AVG() and SUM() Functions

select count(id) 
from products;

select avg(list_price)
from products;

select sum(list_price)
from products;

# SQL LIKE Operator

#The following SQL statement selects all customers with a CustomerName starting with "a":
select * from customers
where first_name like 'a%';

# The following SQL statement selects all customers with a CustomerName ending with "a":
select * from customers 
where first_name like '%a';

# The following SQL statement selects all customers with a CustomerName that have "or" in any position:
select * from customers
where first_name like '%or%' ;

# The following SQL statement selects all customers with a CustomerName that have "r" in the second position:
select * from customers
where first_name like '_a%' ;

#The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:
select * from customers
where first_name like 'a_%' ;

# The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "o":
select * from customers
where first_name like 'a%e';

# The following SQL statement selects all customers with a CustomerName that does NOT start with "a":
select * from customers 
where first_name not like 'a%';

#SQL Wildcards

#The following SQL statement selects all customers with a City starting with "ber":
select * from customers
where first_name like 'and%';

# The following SQL statement selects all customers with a City starting with "ch", followed by any character, followed by "ist", followed by any character, followed by "na":
select * from customers
where first_name like 'ch_ist_na';

#SQL IN Operator

#The following SQL statement selects all customers that are located in "New York", "Minneapolis" or "Milwaukee":
select * from customers
where city in ("New York", "Minneapolis", "Milwaukee");

#The following SQL statement selects all customers that are not located in "New York", "Minneapolis" or "Milwaukee":
select * from customers
where city not in ("New York", "Minneapolis", "Milwaukee");

#SQL BETWEEN Operator

#The following SQL statement selects all products with a price between 10 and 20:
select * from products
where list_price between 10 and 20;

#To display the products outside the range of the previous example, use NOT BETWEEN:
select * from products
where list_price not between 10 and 20;

#The following SQL statement selects all products with a ProductName between Carnarvon Tigers and Mozzarella di Giovanni
select * from products 
where product_name between 'Northwind Traders Chai' and 'Northwind Traders Olive Oil'
order by product_name;

#The following SQL statement selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:
select * from products 
where list_price between 10 and 20
and id not in (1,2,3);

#The following SQL statement selects all products with a ProductName between 'Northwind Traders Syrup' and 'Northwind Traders Walnuts'
select * from products
where product_name between 'Northwind Traders Syrup' and 'Northwind Traders Walnuts'
order by product_name;

#The following SQL statement selects all products with a ProductName not between 'Northwind Traders Syrup' and 'Northwind Traders Walnuts'
select * from products
where product_name not between 'Northwind Traders Syrup' and 'Northwind Traders Walnuts'
order by product_name;

select * from orders
where order_date between '2006-01-15 00:00:00' and '2006-01-30 00:00:00';

#SQL Aliases
#SQL aliases are used to give a table, or a column in a table, a temporary name.
select customer_id as id , ship_name as shipname
from orders;

#The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):
select * from customers;

select first_name, concat(address , ',' , city , ', ' , state_province , ',', country_region) as Address
from customers;
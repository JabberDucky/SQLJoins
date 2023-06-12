/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select categories.name, products.name
from categories
inner join products on categories.CategoryID = products.CategoryID
where categories.name = "computers";

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select reviews.Rating, products.Name, products.Price
from reviews
inner join products on reviews.ProductID = products.ProductID
where reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select sum(sales.Quantity), employees.EmployeeID, employees.FirstName
from sales
inner join employees on sales.EmployeeID = employees.EmployeeID
group by Employees.EmployeeID
order by sum(sales.Quantity) DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.name, categories.name
from departments
inner join categories on departments.DepartmentID = categories.DepartmentID
where categories.Name = "games" or categories.name = "appliances";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select products.name, sum(sales.Quantity), sum(sales.PricePerUnit*sales.Quantity)
 from products
 inner join sales on products.ProductID = sales.ProductID
 where products.productID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.name, reviews.Reviewer, reviews.rating, reviews.comment
from products
inner join reviews on products.ProductID = reviews.ProductID
where reviews.rating = 1 and products.name = "visio tv";


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
Select employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, sales.Quantity
from employees
inner join sales on employees.employeeID = sales.EmployeeID
inner join products on sales.ProductID = products.ProductID
order by employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, sales.Quantity;



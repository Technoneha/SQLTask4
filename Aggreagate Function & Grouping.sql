CREATE TABLE sales(
    sale_id serial primary key,
	Product_name varchar(100),
	Category varchar(100),
	Quantity integer,
	Price integer

);

select * from INSERT INTO sales (Product_name,Category,Quantity,Price)
values('pen','Stationery',20,5),
('pencil','Stationery',10,3),
('Notebook','Stationery', 15,22),
('Mango','Grocery',5,10),
('Appole','Grocery',5,15),
('Milk','Grocery',8,25);


--Sum ()
Select product_name,sum(Quantity)as Total_Quantity
from sales
Group By product_name;

--- Count()
SELECT product_name, COUNT(*) AS sale_count
FROM sales
GROUP BY product_name;

--AVG()
SELECT product_name, AVG(price) AS avg_price
FROM sales
GROUP BY product_name;


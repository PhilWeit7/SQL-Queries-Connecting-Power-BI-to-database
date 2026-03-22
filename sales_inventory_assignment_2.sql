-- CREATE schema assignment
CREATE SCHEMA assignment2;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment2.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment2.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment2.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment2.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment2.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment2.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment2.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment2.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment2.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment2.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment2.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment2.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment2.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment2.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment2.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment2.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment2.Inventory;


-- =====================================================
-- PART 2
-- =====================================================
-- =====================================================
-- SUBQUERY QUESTIONS
-- =====================================================

-- 51. Which customers have spent more than the average spending of all customers?
select concat(c.first_name,' ',c.last_name) as full_name
from assignment2.customers c
inner join assignment2.sales s 
on c.customer_id = s.customer_id 
where s.total_amount > (
select AVG(s.total_amount )
from assignment2.sales s
);

-- 52. Which products are priced higher than the average price of all products?
select p.product_name
from assignment2.products p 
where p.price > (
select AVG(p.price )
from assignment2.products p
);

-- 53. Which customers have never made a purchase?
select concat(c.first_name,' ',c.last_name) as full_name
from assignment2.customers c 
left join assignment2.sales s 
on c.customer_id =s.customer_id 
where s.total_amount is null;

-- 54. Which products have never been sold?
select p.product_name,SUM(s.quantity_sold ) as sales_by_product
from assignment2.products p 
left join assignment2.sales s 
on p.product_id =s.product_id 
where s.quantity_sold is null
group by p.product_name ;

-- 55. Which customer made the single most expensive purchase?
select concat(c.first_name,' ',c.last_name) as full_name,s.total_amount
from assignment2.customers c 
inner join assignment2.sales s 
on c.customer_id = s.customer_id 
where s.total_amount = (
select MAX(s.total_amount )
from assignment2.sales s
);
-- 56. Which products have total sales greater than the average total sales across all products?
select p.product_name,SUM(s.quantity_sold ) as sales_by_product
from assignment2.products p 
inner join assignment2.sales s 
on p.product_id =s.product_id 
where s.quantity_sold >
(
select AVG(s.quantity_sold)
from assignment2.sales s
)
group by p.product_name ;

-- 57. Which customers registered earlier than the average registration date?
select concat(c.first_name,' ',c.last_name) as full_name
from assignment2.customers c 
where c.registration_date <
(
select avg(c.registration_date::timestamp  )
from assignment2.customers c
)

-- 58. Which products have a price higher than the average price within their own category?
select p.product_name
from assignment2.products p 
where p.price > (
select AVG(p.price )
from assignment2.products p
)

-- 59. Which customers have spent more than the customer with ID = 10?
select concat(c.first_name,' ',c.last_name),c.customer_id 
from assignment2.customers c 
left join assignment2.sales s 
on c.customer_id = s.customer_id 
where s.total_amount > (
select s.total_amount 
from assignment2.sales s
where s.customer_id =10
)

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select p.product_name,s.quantity_sold
from assignment2.sales s 
left join assignment2.products p
on s.product_id = p.product_id
where s.quantity_sold  > (
select AVG(s.quantity_sold )
from assignment2.sales s
)

-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_spend as(
select concat(c.first_name,' ',c.last_name)as full_name,s.total_amount
from assignment2.customers c 
left join assignment2.sales s
on c.customer_id = s.customer_id 
)
select full_name ,total_amount
from customer_spend 
order by total_amount asc
limit 5;


-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with product_sales as(
select p.product_name,sum(s.quantity_sold) as qty_sold
from assignment2.products p 
inner join assignment2.sales s 
on p.product_id = s.product_id 
group by p.product_name

)
select * 
from product_sales 
order by qty_sold asc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with cat_sales as (
select p.category,sum(s.total_amount) as total_sales
from assignment2.products p
inner join assignment2.sales s
on p.product_id = s.product_id
group by p.category
)

select * from cat_sales
order by total_sales asc
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
select * from assignment2.sales s;
with no_of_purchase as (
select concat(c.first_name,' ',c.last_name) as full_names,s.quantity_sold 
from assignment2.sales s
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
)
select * from no_of_purchase 
where quantity_sold  >2;


-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with product_sales_qtys as (
select p.product_name,sum(s.quantity_sold) as qty_sold
from assignment2.sales s
inner join assignment2.products p
on s.product_id = p.product_id
group by p.product_name
)
select * 
from product_sales_qtys
where qty_sold >
(
select avg(qty_sold)
from product_sales_qtys
)

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with total_spending as (
select concat(c.first_name,' ',c.last_name), sum(s.total_amount) as total_spending
from assignment2.sales s
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by first_name , last_name
)
select *
from total_spending 
where  total_spending >
(
select avg(total_spending)
from total_spending 
)

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with total_revenue_productwise as(
select p.product_name,sum(s.total_amount) as total_spend
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
group by p.product_name
)
select * from total_revenue_productwise 
order by total_spend desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as (
select to_char(s.sale_date,'YYYY-MM') as month,sum(s.total_amount) as monthly_totals 
from assignment2.sales s 
group by s.sale_date
)
select * from monthly_sales 
order by monthly_totals
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
select * from assignment2.sales s ;
with number_of_sales as (
select p.product_name,count(*) as no_of_sales
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
group by p.product_name
)
select * from number_of_sales
where no_of_sales > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with product_sales_qtys as (
select p.product_name,sum(s.quantity_sold) as qty_sold
from assignment2.sales s
inner join assignment2.products p
on s.product_id = p.product_id
group by p.product_name
)
select * 
from product_sales_qtys
where qty_sold <
(
select avg(qty_sold)
from product_sales_qtys
)



-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select concat(c.first_name,' ',c.last_name) as full_name,sum(s.total_amount) as amount_spent,dense_rank() over (order by sum(s.total_amount) desc) as amount_rank
from assignment2.sales s
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.first_name , c.last_name



-- 72. Rank products based on total quantity sold.
select p.product_name,sum(s.quantity_sold) as qty_sold,dense_rank()over (order by sum(s.quantity_sold))
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
group by p.product_name 

-- 73. Identify the 3rd highest spending customer.
select concat(c.first_name,' ',c.last_name) as full_name,sum(s.total_amount) as amount_spent,dense_rank() over (order by sum(s.total_amount) desc) as amount_rank
from assignment2.sales s
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.first_name , c.last_name
order by amount_rank asc
limit 3;

-- 74. Identify the 2nd most expensive product.
select p.product_name,p.price, row_number()over(order by p.price asc) as price_rank
from assignment2.products p 
where row_number()over(order by p.price asc) = 2


-- 75. Show the ranking of products within each category based on price.
select p.product_name , p.price, p.category, row_number() over(partition by p.category  order by p.price desc) as rank_per_category
from assignment2.products p

-- 76. Show the ranking of customers based on the number of purchases they made.
select concat(c.first_name,' ',c.last_name) as full_name,sum(s.quantity_sold) as sales,row_number()over(order by sum(s.quantity_sold) desc )  as my_rank
from assignment2.customers c
inner join assignment2.sales s 
on c.customer_id = s.customer_id 
group by c.first_name ,  c.last_name


-- 77. Show the running total of sales amounts ordered by sale_date.
select s.sale_date,s.total_amount, SUM(s.total_amount)over(order by s.sale_date asc ) as running_totals
from assignment2.sales s 
group by  s.sale_date,s.total_amount

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select s.sale_date,s.total_amount,lag(s.total_amount,1,0) over(order by s.sale_date)
from assignment2.sales s 
group by s.sale_date,s.total_amount


-- 79. Show the next sale amount for each sale ordered by sale_date.
select s.sale_date,s.total_amount,lead(s.total_amount,1,0) over(order by s.sale_date)
from assignment2.sales s 
group by s.sale_date,s.total_amount

-- 80. Divide customers into 4 groups based on total spending.
select concat(c.first_name,' ',c.last_name) as full_name,sum(s.total_amount) as total_spending,ntile(4) over(order by sum(s.total_amount) asc )
from assignment2.sales s 
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.first_name,c.last_name


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
with category_sales as (
select s.customer_id,p.product_name,p.category
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
)
select concat(c.first_name,' ',c.last_name) as full_name,count(distinct cs.category) as no_of_cat
from assignment2.customers c 
inner join category_sales cs
on c.customer_id =cs.customer_id
group by c.first_name ,c.last_name
having count(distinct cs.category)>1;


-- 82. Which customers purchased products within 7 days of registering?
with dates_data as (
select concat(c.first_name,' ',c.last_name) as full_name,c.registration_date,s.sale_date, s.sale_date - c.registration_date as time_diff
from assignment2.sales s 
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.first_name ,c.last_name ,c.registration_date ,s.sale_date 
)
select * from dates_data 
where time_diff >=0 and time_diff <8;

-- 83. Which products have lower stock remaining than the average stock quantity?
select p.product_name,p.stock_quantity
from assignment2.products p 
inner join assignment2.inventory i 
on p.product_id = i.product_id 
where p.stock_quantity < (
select AVG(i.stock_quantity )
from assignment2.inventory i
)

-- 84. Which customers purchased the same product more than once?
select concat(c.first_name,' ',c.last_name) as full_name,s.product_id,count(*) as purchases_count
from assignment2.customers c 
inner join assignment2.sales s 
on c.customer_id = s.customer_id 
group by c.first_name,c.last_name,s.product_id
having count(*)>1;

-- 85. Which product categories generated the highest total revenue?
select p.category,SUM(s.total_amount) as revenue
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id  = p.product_id 
group by p.category 
order by revenue desc;

-- 86. Which products are among the top 3 most sold products?
select p.product_name,SUM(s.quantity_sold) as product_sales
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id  = p.product_id 
group by p.product_name 
order by product_sales desc
limit 3;

-- 87. Which customers purchased the most expensive product?
with my_table as(
select  s.customer_id ,p.product_name,p.price
from assignment2.sales s
inner join assignment2.products p 
on s.product_id = p.product_id 
where p.price = (select max(p.price) from assignment2.products p)
)
select  concat(c.first_name,' ',c.last_name) as full_name,mt.product_name,mt.price
from assignment2.customers c 
inner join my_table mt
on c.customer_id = mt.customer_id ;


-- 88. Which products were purchased by the highest number of unique customers?
select p.product_name,count(distinct s.customer_id) as unique_customers
from assignment2.products p 
inner join assignment2.sales s 
on p.product_id = s.product_id 
group by p.product_name
-- 89. Which customers made purchases above the average sale amount?
select  concat(c.first_name,' ',c.last_name) as full_name,sum(s.total_amount) as purchases
from assignment2.customers c
inner join assignment2.sales s
on c.customer_id = s.customer_id
group by c.first_name,c.last_name
having sum(s.total_amount) >(
select avg(s.total_amount) from assignment2.sales s
)


-- 90. Which customers purchased more products than the average quantity purchased per customer?
with purchase_per_cust as(
select concat(c.first_name,' ',c.last_name) as full_name,sum(s.quantity_sold) as sold_qty
from assignment2.sales s 
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.first_name,c.last_name
)
select * from purchase_per_cust 
where sold_qty > (
select AVG(sold_qty ) from purchase_per_cust 
)

-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?
select concat(c.first_name,' ',c.last_name) as full_name,SUM(S.TOTAL_AMOUNT),NTILE(10)OVER(order by SUM(S.TOTAL_AMOUNT) desc ) as tile
from assignment2.sales s
inner join assignment2.customers c
on s.customer_id = c.customer_id
group by c.first_name,c.last_name



-- 92. Which products contribute to the top 50% of total revenue?
with product_revenue as(
select p.product_name,sum(s.total_amount) as total_revenue
from assignment2.sales s
inner join assignment2.products p
on s.product_id = p.product_id
group by p.product_name
),
running_totals as (
select product_name ,total_revenue, sum(total_revenue) over(order by total_revenue desc) as running_total,sum(total_revenue) over() as overall_total
from product_revenue 
)

select *
from running_totals
where running_total <= 0.5* overall_total;

-- 93. Which customers made purchases in consecutive months?
WITH monthly_purchases AS (
    SELECT DISTINCT
        customer_id,
        DATE_TRUNC('month', s.sale_date) AS month
    FROM assignment2.sales s
),
with_lag AS (
    SELECT
        customer_id,
        month,
        LAG(month) OVER (
            PARTITION BY customer_id 
            ORDER BY month
        ) AS prev_month
    FROM monthly_purchases
)
SELECT DISTINCT customer_id
FROM with_lag
WHERE month = prev_month + INTERVAL '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
select p.product_name,p.stock_quantity-sum(s.quantity_sold) as Diference
from assignment2.products p
inner join assignment2.sales s
on p.product_id = s.product_id
group by p.product_name,p.stock_quantity 
order by diference desc
limit 1;

-- 95. Which customers have spending above the average spending of their membership tier?
with member_tier_avg as (
select c.membership_status, avg(s.total_amount) as avg_spending
from assignment2.sales s 
inner join assignment2.customers c 
on s.customer_id = c.customer_id 
group by c.membership_status
)
select concat(c.first_name,' ',c.last_name) as full_name,c.membership_status, sum(s.total_amount) as total_sales,mta.avg_spending as membesrship_tier_avg
from member_tier_avg  mta
inner join assignment2.customers c
on mta.membership_status = c.membership_status 
join assignment2.sales s 
on c.customer_id = s.customer_id 
group by c.last_name ,c.first_name ,c.membership_status,mta.avg_spending
having sum(s.total_amount)>mta.avg_spending;

-- 96. Which products have higher sales than the average sales within their category?
with cat_avgs as(
select p.category, avg(s.total_amount) as avg_sales
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
group by p.category 

)
select p.product_name ,p.category ,  sum(s.total_amount) as total_sales,ca.avg_sales as cat_avg
from assignment2.sales s 
inner join assignment2.products p 
on s.product_id = p.product_id 
join cat_avgs ca
on p.category = ca.category 
group by p.product_name,p.category ,ca.avg_sales
having ca.avg_sales<sum(s.total_amount)

-- 97. Which customer made the largest single purchase relative to their total spending?
with my_data as(
select c.customer_id,concat(c.first_name,' ',c.last_name) as full_name,max(s.total_amount) as largest_single_purchase
from assignment2.customers c 
inner join assignment2.sales s 
on c.customer_id = s.customer_id 
group by c.first_name,c.last_name ,c.customer_id
)
select md.full_name,sum(s.total_amount) as total_spending,md.largest_single_purchase,md.largest_single_purchase/sum(s.total_amount) as percentage_compare
from assignment2.sales s 
inner join my_data md
on s.customer_id = md.customer_id 
group by md.full_name ,md.largest_single_purchase
--each cust made one purchase so results will not show anything tangible.

-- 98. Which products rank among the top 3 most sold products within each category?
with product_cat as 
(select p.product_name, p.category,sum(s.quantity_sold) as sales,row_number() over (partition by p.category order by sum(s.quantity_sold) desc ) as ranks
from assignment2.sales s
inner join assignment2.products p 
on s.product_id  = p.product_id 
group  by p.product_name, p.category
)
select * from product_cat 
where ranks <=3;
-- 99. Which customers are tied for the highest total spending?
with my_ranks as
(
select concat(c.first_name,' ',c.last_name) as full_name, sum(s.total_amount) as spending,rank()over(order by sum(s.total_amount) desc) as rankings
from assignment2.customers c 
inner join assignment2.sales s 
on c.customer_id  = s.customer_id 
group by c.last_name,c.first_name
)
select * from my_ranks
where rankings = 1;

-- 100. Which products generated sales every year present in the dataset?
SELECT 
    p.product_name
FROM assignment2.sales s
JOIN assignment2.products p
    ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING COUNT(DISTINCT EXTRACT(YEAR FROM s.sale_date)) = (
    SELECT COUNT(DISTINCT EXTRACT(YEAR FROM sale_date))
    FROM assignment2.sales
);



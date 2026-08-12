select *
from pizza_sales
--KPI 1 — Total Revenue
select 
	sum(total_price) as total_revunue
from pizza_sales
--KPI 2 — Average Order Value
select 
	sum(total_price)/count(distinct order_id) as AOV
from pizza_sales
--KPI 3 — Total Pizzas Sold
select 
	sum(quantity) as Total_pizza
from pizza_sales
-- KPI 4 — Total Orders
select 
	count(distinct order_id) as total_order
from pizza_sales
-- KPI 5 — Average Pizzas Per Order
select 
	cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) 
from pizza_sales
---- Daily Trend for Total Orders
select 
	datename(WEEKDAY,order_date) as jours,
	count(distinct order_id) as nb_order
from pizza_sales
group by datename(WEEKDAY,order_date)

-- Monthly Trend for Total Orders
select 
	datename(month,order_date) as months,
	count(distinct order_id) as nb_order
from pizza_sales
group by datename(month,order_date)
order by count(distinct order_id) 

-- Percentage of Sales by Pizza Category
select 
    pizza_category,
	round(sum(total_price) *100 /(select sum(total_price) from pizza_sales),2) as percentag_by_category
from pizza_sales
group by pizza_category

-- Percentage of Sales by Pizza Category — January

select 
    pizza_category,
	round(sum(total_price) *100 /(select sum(total_price) from pizza_sales where month(order_date)=1),2) as percentag_by_category
from pizza_sales
where month(order_date)=1
group by pizza_category

-- Percentage of Sales by Pizza Size

select 
    pizza_size,
	round(sum(total_price) *100 / (select sum(total_price) from pizza_sales),2) as percentag_by_size
from pizza_sales
group by pizza_size
order by percentag_by_size desc

select * from pizza_sales

-- Total Number of Different Pizzas

select count(distinct pizza_name) from pizza_sales
-- Top 5 Best Sellers by Revenue

select top 5
    pizza_name,
	sum(total_price) as revenue_by_pizza,
	rank() over(order by sum(total_price) desc) as ranking
from pizza_sales
group by pizza_name

-- Top 5 Best Sellers by Total Quantity

select top 5
    pizza_name,
	sum(quantity) as qte_by_pizza,
	rank() over(order by sum(quantity) desc) as ranking
from pizza_sales
group by pizza_name
-- Top 5 Best Sellers by Total Orders
select top 5
    pizza_name,
	count(distinct order_id) as orders_by_pizza,
	rank() over(order by count(distinct order_id) desc) as ranking
from pizza_sales
group by pizza_name

-- Bottom 5 Best Sellers by Revenue
select top 5
    pizza_name,
	sum(total_price) as revenue_by_pizza,
	rank() over(order by sum(total_price) ) as ranking
from pizza_sales
group by pizza_name
-- Bottom 5 Best Sellers by Total Quantity
select top 5
    pizza_name,
	sum(quantity) as qte_by_pizza,
	rank() over(order by sum(quantity) ) as ranking
from pizza_sales
group by pizza_name

-- Bottom 5 Best Sellers by Total Orders

select top 5
    pizza_name,
	count(distinct order_id) as orders_by_pizza,
	rank() over(order by count(distinct order_id) ) as ranking
from pizza_sales
group by pizza_name
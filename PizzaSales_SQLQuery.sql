 select * from [Pizza DB].[dbo].[pizza_sales] as P
--TOTAL REVENUE GENERATED
-- SELECT SUM(total_price) as Total_Revenue FROM pizza_sales

--Average Order Value
--Select Sum(total_price)/ Count(DISTINCT order_id) as Aveg_Order_Value From [Pizza DB].[dbo].[pizza_sales]

--Total pizza Sold
--SELECT SUM(quantity) as Total_pizza_sold FROM  [Pizza DB].[dbo].[pizza_sales]

--Total no. of order
--SELECT COUNT(DISTINCT order_id) as Total_Order FROM  [Pizza DB].[dbo].[pizza_sales]

--Quantity per order
--SELECT CAST(SUM(quantity) AS DECIMAL(10,2))/ COUNT(DISTINCT order_id) as Avg_Pizza_per_Order FROM  [Pizza DB].[dbo].[pizza_sales]


--Daily trend for orders
--SELECT DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) as total_orders
--FROM [Pizza DB].[dbo].[pizza_sales]
----WHERE DATENAME(DW, order_date) = 'Sunday'
--GROUP BY  DATENAME(DW, order_date)

--Monthly trend for orders

--SELECT DATENAME(MONTH, order_date) as Month_name, COUNT(DISTINCT order_id) as total_orders
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY DATENAME(MONTH, order_date)
--ORDER BY total_orders DESC


-- Percentage of sales by pizza category
--1.
--SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
--CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [Pizza DB].[dbo].[pizza_sales]) AS DECIMAL(10,2)) AS PCT
--FROM [Pizza DB].[dbo].[pizza_sales]

--GROUP BY pizza_category

----2. for january
--SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
--CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from [Pizza DB].[dbo].[pizza_sales]) AS DECIMAL(10,2)) AS PCT
--FROM [Pizza DB].[dbo].[pizza_sales]
--WHERE MONTH(order_date)=1
--GROUP BY pizza_category

-- % of Sales by Pizza Size
--SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
--CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from  [Pizza DB].[dbo].[pizza_sales]) AS DECIMAL(10,2)) AS PCT
--FROM  [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_size
--ORDER BY pizza_size

--Total Pizzas Sold by Pizza Category
--SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
--FROM [Pizza DB].[dbo].[pizza_sales]
--WHERE MONTH(order_date) = 2
--GROUP BY pizza_category
--ORDER BY Total_Quantity_Sold DESC


--Top 5 Pizzas by Revenue
--SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Revenue DESC


--Bottom 5 Pizzas by Revenue
--SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Revenue ASC


--Top 5 Pizzas by Quantity
--SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Pizza_Sold DESC


--Bottom 5 Pizzas by Quantity
--SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Pizza_Sold ASC


----Top 5 Pizzas by Total Orders
--SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Orders DESC

--Borrom 5 Pizzas by Total Orders
--SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
--FROM [Pizza DB].[dbo].[pizza_sales]
--GROUP BY pizza_name
--ORDER BY Total_Orders ASC

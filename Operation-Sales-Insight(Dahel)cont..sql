--Questions on Operation date 
 
 --Question1
-- Average lead time
SELECT AVG(Lead_Time)AS Avg_leadtime
FROM [Operation_data[[Dahel]]];


-- Question2
-- Average production time
SELECT AVG(Production_Time)AS Avg_production_time
FROM [Operation_data[[Dahel]]];


--Question3  
--Number of employees
SELECT COUNT(*)AS num_of_employees
FROM [employees_data[Dahel]]];    


--Question4  
--Number of suppliers
SELECT COUNT(*)AS num_of_suppliers
FROM [supplier_data [Dahel]]]; 


--Questio 5
--Total quantity in stock  
SELECT SUM(Quantity_in_Stock)AS total_quantity_in_stock 
FROM [Operation_data[[Dahel]]];       


--Question 6
--Total downtime duration
SELECT SUM(Downtime_Duration)AS total_downtime
FROM [Operation_data[[Dahel]]];   


--Question 7
--Total production quantity
SELECT SUM(Production_Quantity)AS total_production_quantity
FROM [Operation_data[[Dahel]]]; 


 --Question 8
 --Number of entries in each unique maintenance type
 SELECT Maintenance_Type, COUNT(*)AS number_of_entry
 FROM [Operation_data[[Dahel]]]
 GROUP BY Maintenance_Type;
    
	      
--Question 9 
-- Number of entries in each downtime reason
SELECT Downtime_Reason, COUNT(*)AS number_of_entry
FROM [Operation_data[[Dahel]]]
GROUP BY Downtime_Reason;    


-- Question10
--Product quantity in stock (to get the inventory level of each product)
SELECT Product_ID, Quantity_in_Stock AS inventory_level
FROM [Operation_data[[Dahel]]];    


--Question11
--Average employees performance(employees rating by month)
SELECT Employee_ID, AVG(Employee_Rating)AS rating_by_month
FROM [Operation_data[[Dahel]]] 
GROUP BY Employee_ID
ORDER BY Employee_ID,rating_by_month;    


--Question12
--Average downtime(Downtime duration)by month
SELECT MONTH(Downtime_Duration)AS month,AVG(Downtime_Duration)AS avg_downtime_duration
FROM [Operation_data[[Dahel]]]
GROUP BY MONTH(Downtime_Duration)
ORDER BY month;   


--Question13
--Average leadtime by month
SELECT MONTH(Lead_Time)AS month, avg(Lead_Time)AS avg_leadtIme
FROM [Operation_data[[Dahel]]]
GROUP BY MONTH(Lead_Time)
ORDER BY month;  


--Question14
--Total production quantity by month
SELECT MONTH(Production_Date)AS month, SUM(Production_Quantity)AS total_production_quantity
FROM [Operation_data[[Dahel]]]
GROUP BY MONTH(Production_Date)
ORDER BY month;   

--Question15
--Quantity matrics by each production
SELECT Product_ID, SUM(Production_Quantity)AS total_quantity
FROM [Operation_data[[Dahel]]]
Group by Product_ID
ORDER BY total_quantity DESC;


--Question16  
--Top in stock product and least in stock product
SELECT Product_ID,Quantity_in_Stock
FROM [Operation_data[[Dahel]]]
ORDER BY Quantity_in_Stock DESC
LIMIT 1; 

--Least in stock product
SELECT *
FROM [Operation_data[[Dahel]]]
ORDER BY Quantity_in_Stock ASC
LIMIT 1;   


--Question17 
--Product with the top avg production time 
SELECT Product_ID, AVG(Production_Time)AS avg_production_time
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID
ORDER BY avg_production_time DESC
LIMIT 1;     


--Question18
--Product with the least avg production
SELECT Product_ID,  AVG(Production_Time)AS avg_production_Time
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID
ORDER BY avg_Time ASC
LIMIT 1;     
   

--Question 19
-- Most product produced and least product produced

-- most product produced
SELECT Product_ID, SUM(Production_Quantity)AS total_production
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID
ORDER BY total_production DESC
LIMIT 1;  

-- Least product produced
SELECT Product_ID, SUM(Production_Quantity)AS total_production
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID
ORDER BY total_production ASC
LIMIT 1;   


--Question20
--Show each quality metrics by month
SELECT Quality_Metrics, MONTH(Production_Date)AS month, SUM(Production_Quantity)AS total_quantity
FROM [Operation_data[[Dahel]]]
Group by Quality_Metrics,MONTH(Production_Date)
ORDER BY month;


--Question21
--Most produced product and sold employee(pro qty and qty sold)
-- Most produced product
SELECT Product_ID, SUM(Production_Quantity)AS total_production
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID
ORDER BY total_production DESC
LIMIT 1;

--Most produced employee
SELECT Employee_ID, SUM(Quantity_Sold)As total_sold
FROM [Operation_data[[Dahel]]]
GROUP BY Employee_ID
ORDER BY total_sold DESC
LIMIT 1;  



--Question22 
--Number of employee by each rating
SELECT Employee_Rating, COUNT(*)As number_of_employees
FROM [Operation_data[[Dahel]]]
GROUP BY Employee_Rating
ORDER BY Employee_Rating DESC;
 


--Question23
--Most performing employee(sum of rating)
SELECT Employee_ID, SUM(Employee_Rating)As total_rating
FROM [Operation_data[[Dahel]]]
GROUP BY Employee_ID
ORDER BY total_rating DESC
LIMIT 1;     


--Question24
--Least performing employee
SELECT Employee_ID, SUM(Employee_Rating)As total_rating
FROM [Operation_data[[Dahel]]]
GROUP BY Employee_ID
ORDER BY total_rating ASC
LIMIT 1;      


--Question25
--Most active employee
SELECT Employee_ID, COUNT(Employee_Rating)As total_rating
FROM [Operation_data[[Dahel]]]
GROUP BY Employee_ID
ORDER BY total_rating DESC
LIMIT 1;
      
	  
--Question26
--Avg lead time by supppliers
SELECT Supplier_ID, AVG(Lead_Time)AS avg_lead_time
FROM [Operation_data[[Dahel]]]
GROUP BY Supplier_ID;
    
	
--Question27
--Avg lead time by product name 
--comment, lead _time not in product table and product name not in Operation table
SELECT Product_ID, AVG(Lead_Time)AS avg_lead_time
FROM [Operation_data[[Dahel]]]
GROUP BY Product_ID;
    




















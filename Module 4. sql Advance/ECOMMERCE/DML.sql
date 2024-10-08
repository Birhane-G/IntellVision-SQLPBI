--- 2.	Update the quantity of an existing product
UPDATE Product
SET quantity = quantity + 10
WHERE product_id = 1;


---calculate the average, min, max  price of all products
SELECT AVG(price) AS AvergaePrice, MIN(price) AS minPrice, MAX(price) AS maxPrice
FROM Product;

-- 8.	Update the order status of an existing order 
UPDATE orders 
SET Order_status = 'cancelled'
WHERE order_id = 1;

SELECT * FROM orders;
-- 13.	Count Orders by Status
SELECT Order_status, COUNT(*) AS orderCount
FROM orders GROUP BY Order_status;

--- 21.	Retrieve the customer's billing and shipping addresses for each customer
SELECT C.firstName + ' ' + C.lastName AS FullName, Ca.country, Ca.address_line1
FROM Customer AS C 
LEFT JOIN Customer_Addresse Ca ON C.customer_id = Ca.customer_id
WHERE Ca.address_type = 'billing';

--- Get the list of customers who have placed at least one order
-- DISTINCT -> 
SELECT DISTINCT C.customer_id, C.firstname 
FROM Customer C JOIN orders O ON C.customer_id = O.customer_id;
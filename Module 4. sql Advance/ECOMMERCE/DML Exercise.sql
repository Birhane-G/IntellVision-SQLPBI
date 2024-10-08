USE ecommerce;

INSERT INTO Product (name, description, quantity, price, category, brand, in_stock, created_at)
VALUES
('Dell Inspiron 15 3000', 'A reliable and affordable laptop for everyday use', 25, 499.99, 'Laptop', 'Dell', 1, '2023-01-15 10:30:00'),
('iPhone 13 Pro', 'Apple''s latest flagship smartphone with advanced camera features', 50, 999.99, 'Mobile', 'Apple', 1, '2023-02-20 14:45:00'),
('HP Pavilion Desktop', 'A powerful desktop computer for home or office use', 15, 699.99, 'Desktop', 'HP', 1, '2023-03-01 09:00:00'),
('Samsung Galaxy Tab S7', 'A premium Android tablet with a large display and S Pen support', 30, 649.99, 'Tablet', 'Samsung', 1, '2023-04-10 16:20:00'),
('Lenovo ThinkPad X1 Carbon', 'A lightweight and durable business laptop with premium features', 20, 1299.99, 'Laptop', 'Lenovo', 1, '2023-05-05 11:40:00'),
('Google Pixel 6 Pro', 'Google''s flagship smartphone with advanced computational photography', 40, 899.99, 'Mobile', 'Google', 1, '2023-06-01 13:50:00'),
('ASUS ROG Strix G15', 'A high-performance gaming laptop with powerful hardware', 18, 1499.99, 'Laptop', 'ASUS', 1, '2023-07-15 15:10:00'),
('Microsoft Surface Pro 8', 'A versatile 2-in-1 tablet with a detachable keyboard', 22, 999.99, 'Tablet', 'Microsoft', 1, '2023-08-20 10:00:00'),
('Acer Aspire 5', 'A budget-friendly laptop for everyday computing tasks', 35, 399.99, 'Laptop', 'Acer', 1, '2023-09-01 14:25:00'),
('Sony Xperia 1 III', 'A flagship smartphone with a 4K OLED display and advanced camera system', 28, 1199.99, 'Mobile', 'Sony', 1, '2023-10-10 17:35:00'),
('Dell XPS 13', 'A premium ultrabook with a sleek design and powerful performance', 24, 1199.99, 'Laptop', 'Dell', 1, '2023-11-05 09:45:00'),
('HP Spectre x360', 'A convertible laptop with a premium design and versatile use cases', 20, 1399.99, 'Laptop', 'HP', 1, '2023-12-15 13:20:00'),
('Razer Blade 15', 'A high-end gaming laptop with a sleek, compact design', 16, 1899.99, 'Laptop', 'Razer', 1, '2024-01-01 11:00:00'),
('Samsung Galaxy Z Fold3', 'A foldable smartphone with a large, flexible display', 12, 1799.99, 'Mobile', 'Samsung', 1, '2024-02-10 15:40:00'),
('Apple MacBook Air', 'A lightweight and portable laptop with impressive performance', 30, 999.99, 'Laptop', 'Apple', 1, '2024-03-20 10:50:00'),
('Alienware Aurora R12', 'A powerful and customizable gaming desktop computer', 14, 1799.99, 'Desktop', 'Alienware', 1, '2024-04-05 14:15:00'),
('Microsoft Surface Laptop 4', 'A premium laptop with a sleek design and excellent display', 26, 1099.99, 'Laptop', 'Microsoft', 1, '2024-05-01 12:30:00'),
('ASUS ZenBook Pro Duo', 'A unique laptop with a secondary touchscreen display for increased productivity', 10, 2499.99, 'Laptop', 'ASUS', 1, '2024-06-15 16:20:00'),
('Lenovo Legion 5 Pro', 'A high-performance gaming laptop with advanced hardware and features', 18, 1599.99, 'Laptop', 'Lenovo', 1, '2024-07-01 09:35:00'),
('Samsung Galaxy Book Pro', 'A slim and lightweight laptop with a stunning OLED display', 22, 1199.99, 'Laptop', 'Samsung', 1, '2024-08-10 14:00:00');

SELECT * FROM Product;

INSERT INTO Customer (firstName, lastName, email, phone)
VALUES
  ('John', 'Doe', 'john.doe@example.com', '555-1234'),
  ('Jane', 'Smith', 'jane.smith@example.com', '555-5678'),
  ('Michael', 'Johnson', 'michael.johnson@example.com', '555-2468'),
  ('Emily', 'Brown', 'emily.brown@example.com', '555-7890'),
  ('David', 'Wilson', 'david.wilson@example.com', '555-1357'),
  ('Sarah', 'Davis', 'sarah.davis@example.com', '555-2468'),
  ('Robert', 'Anderson', 'robert.anderson@example.com', '555-7890'),
  ('Jessica', 'Thompson', 'jessica.thompson@example.com', '555-1234'),
  ('William', 'Garcia', 'william.garcia@example.com', '555-5678'),
  ('Olivia', 'Hernandez', 'olivia.hernandez@example.com', '555-2468'),
  ('Christopher', 'Gonzalez', 'christopher.gonzalez@example.com', '555-7890'),
  ('Sophia', 'Diaz', 'sophia.diaz@example.com', '555-1357'),
  ('Daniel', 'Reyes', 'daniel.reyes@example.com', '555-2468'),
  ('Isabella', 'Moreno', 'isabella.moreno@example.com', '555-7890'),
  ('Matthew', 'Gutiérrez', 'matthew.gutierrez@example.com', '555-1234'),
  ('Avery', 'Ramírez', 'avery.ramirez@example.com', '555-5678'),
  ('Jacob', 'Castillo', 'jacob.castillo@example.com', '555-2468'),
  ('Ava', 'Flores', 'ava.flores@example.com', '555-7890'),
  ('Alexander', 'Jimenez', 'alexander.jimenez@example.com', '555-1357'),
  ('Emma', 'Vargas', 'emma.vargas@example.com', '555-2468');

INSERT INTO Customer_Addresse (customer_id, address_type, address_line1, address_line2, city, state, country, zip_code)
VALUES
  (1, 'billing', '123 Main St', 'Apt 1', 'Anytown', 'CA', 'USA', '12345'),
  (1, 'shipping', '456 Oak Rd', '', 'Somecity', 'NY', 'USA', '54321'),
  (2, 'billing', '789 Elm St', '', 'Othertown', 'TX', 'USA', '67890'),
  (3, 'billing', '321 Pine Ave', 'Suite 101', 'Newcity', 'FL', 'USA', '09876'),
  (3, 'shipping', '654 Maple Blvd', '', 'Oldtown', 'WA', 'USA', '43210'),
  (4, 'billing', '987 Cedar Rd', '', 'Bigcity', 'IL', 'USA', '98765'),
  (5, 'billing', '159 Oak St', 'Apt 2', 'Smalltown', 'OH', 'USA', '56789'),
  (6, 'billing', '753 Elm Ave', '', 'Mediumcity', 'MI', 'USA', '12345'),
  (7, 'billing', '357 Pine Ln', 'Unit 3', 'Largeville', 'PA', 'USA', '67890'),
  (8, 'billing', '951 Maple Dr', '', 'Tinycity', 'OR', 'USA', '09876');

INSERT INTO orders (customer_id, order_date, total_amount, Order_status)
VALUES
  (1, '2023-04-15', 1299.99, 'delivered'),
  (2, '2023-05-01', 799.99, 'shipped'),
  (3, '2023-06-10', 899.99, 'pending'),
  (4, '2023-02-28', 599.99, 'cancelled'),
  (5, '2023-03-20', 499.99, 'processing'),
  (1, '2023-07-01', 999.99, 'delivered'),
  (6, '2023-08-05', 1199.99, 'shipped'),
  (7, '2023-09-15', 1499.99, 'pending'),
  (8, '2023-10-20', 149.99, 'delivered'),
  (9, '2023-11-30', 1299.99, 'processing');

INSERT INTO Order_Items (order_id, product_id, quantity, price)
VALUES
  (1, 1, 1, 1299.99),
  (2, 2, 1, 799.99),
  (3, 3, 1, 899.99),
  (4, 4, 1, 599.99),
  (5, 5, 1, 499.99),
  (6, 6, 1, 999.99),
  (7, 7, 1, 1199.99),
  (8, 9, 1, 1499.99),
  (9, 10, 1, 149.99),
  (10, 1, 1, 1299.99);

INSERT INTO Payment (order_id, payment_method, amount, Payment_status)
VALUES
  (1, 'credit_card', 1299.99, 'successful'),
  (2, 'debit_card', 799.99, 'successful'),
  (3, 'paypal', 899.99, 'pending'),
  (4, 'credit_card', 599.99, 'failed'),
  (5, 'debit_card', 499.99, 'successful'),
  (6, 'credit_card', 999.99, 'successful'),
  (7, 'paypal', 1199.99, 'successful'),
  (8, 'debit_card', 1499.99, 'pending'),
  (9, 'credit_card', 149.99, 'successful'),
  (10, 'paypal', 1299.99, 'pending');

INSERT INTO Product_Review (product_id, customer_id, rating, comment)
VALUES
  (1, 1, 5, 'Great laptop, highly recommended!'),
  (2, 2, 4, 'Good phone, but the camera could be better.'),
  (3, 3, 4, 'Impressive gaming performance for the price.'),
  (4, 4, 3, 'The tablet is a bit heavy for my liking.'),
  (5, 5, 4, 'Decent budget laptop, good value for money.');

INSERT INTO Product_Image (product_id, image_url, is_primary)
VALUES 
  (1, 'https://example.com/lotrtrilogy.jpg', 1),
  (2, 'https://example.com/iphone14.jpg', 1);
Create database Ecommerce;
Use Ecommerce;
Create table Product (
Product_id Int Primary Key Identity(1,1),
Name Varchar(10) not null,
Description Text  not null,
Price Decimal(10,2) not null,
Category Varchar(20) not null,
Brand Varchar(20) not null,
In_stock Bit Default 'true',
Created_at Datetime Default current_timestamp
);
select * from Product
Create table Customer (
Customer_id Int Primary Key Identity(1,1),
Name Varchar(10),
Email Varchar(20) not null Unique,
Phone Varchar(20),
Created_at Datetime Default current_timestamp
);
select * from Customer
Create table Customer_addresses(
Address_id Int Primary Key Identity(1,1),
Address_type Varchar(50) not null,
Address_line1 Varchar(50) not null,
Address_line2 Varchar(50) not null,
City Varchar(10) not null,
State Varchar(10) not null,
Country Varchar(10) not null,
Zip_code Varchar(10) not null,
Created_at Datetime Default current_timestamp
Constraint FK_Customer_id_on_Customeraddresses Foreign Key (Customer-id) References Customeraddresses (Customer_id) On Delete Cascade,
Constraint CH_address_type_on_Customer_addresses Check (address_type in ('billing', 'shipping'))
); 
Drop table customer_addresses
Create table Customer_addresses(
Address_id Int Primary Key Identity(1,1),
Customer_id Int not null,
Address_type Varchar(50) not null,
Address_line1 Varchar(50) not null,
Address_line2 Varchar(50) not null,
City Varchar(10) not null,
State Varchar(10) not null,
Country Varchar(10) not null,
Zip_code Varchar(10) not null,
Created_at Datetime Default current_timestamp,
Constraint FK_Customer_id_on_customeraddresses Foreign Key (customer_id) References customer (customer_id) ON DELETE CASCADE,
Constraint CH_address_type_on_customeraddresses Check (address_type IN('billing', 'shipping'))
); 
select * from customer_addresses
Create table Oreder (
Order_id Int Primary Key Identity (1,1),
Customer_id Int not null,
Order_date Date not null,
Total_amount Decimal(10,2) not null,
Order_status Varchar(20) Check (order_status IN ('pending', 'processing', 'shipped', 'delivered', 'canceled')) not null Default 'pending',
Created_at Datetime Default current_timestamp,
Foreign Key (customer_id) References customer(customer_id)

);
Create table order_items (
Order_item_id Int Primary Key Identity (1,1),
Order_id Int not null,
Product_id Int not null,
Quantity Int not null,
Price Decimal (10,2),
Created_at Datetime Default current_timestamp,
Foreign Key (order_id) References oreder(order_id),
Foreign Key (product_id) References product (product_id)
);
Create table Payment (
Payment_id Int Primary Key Identity (1,1),
Order_id Int not null,
Payment_method Varchar(20) not null,
Amount Decimal (10,2) not null,
Payment_status Varchar(20) Check (payment_status IN ('Pending', 'successful', 'failed')) not null Default 'pending',
Created_at Datetime Default current_timestamp,
Foreign Key (order_id) References oreder(order_id) 
);
Create table Product_review (
Review_id Int Primary Key Identity(1,1),
Product_id Int not null,
Customer_id Int not null,
Rating Int Check (Rating IN ('1', '2', '3', '4', '5'))  not null ,
Comment Text,
Created_at Datetime Default current_timestamp,
Foreign Key (product_id) References product (product_id),
Foreign Key (customer_id) References customer(customer_id)
);
Create table Product_image (
Image_id Int Primary Key Identity(1,1),
product_id Int not null,
image_url Varchar(200),
Is_primary Bit Default 'false',
Created_at Datetime Default current_timestamp,
Foreign Key (product_id) References product (product_id)
);













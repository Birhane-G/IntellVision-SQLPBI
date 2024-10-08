CREATE DATABASE ecommerce;
use ecommerce;

CREATE TABLE Product (
product_id  INT PRIMARY KEY IDENTITY(1,1),
name VARCHAR(100) NOT NULL,
description TEXT,
price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
category VARCHAR(10),
quantity INT NOT NULL,
brand VARCHAR(20),
in_stock BIT DEFAULT 1,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY IDENTITY(1,1),
  firstName VARCHAR(100) NOT NULL,
  lastName VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(20),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customer_Addresse (
  address_id INT PRIMARY KEY IDENTITY(1,1),
  customer_id INT NOT NULL,
  address_type VARCHAR(20) NOT NULL ,
  address_line1 VARCHAR(200) NOT NULL,
  address_line2 VARCHAR(200),
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  zip_code VARCHAR(20) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_Customer_Id_on_CustomerAddress  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
  CONSTRAINT CH_address_type_on_CustomerAddress CHECK (address_type IN ('billing', 'shipping'))
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY IDENTITY(1,1),
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL,
  Order_status VARCHAR(20)  NOT NULL DEFAULT 'pending',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_Customer_Id_on_Orders FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE,
  CONSTRAINT CH_Order_status_on_Orders CHECK (Order_status IN ('pending', 'processing', 'shipped', 'delivered', 'cancelled'))
);

CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY IDENTITY(1,1),
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_order_id_on_OrderItem FOREIGN KEY (order_id) REFERENCES orders(order_id),
  CONSTRAINT FK_product_id_on_OrderItem FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Payment (
  payment_id INT PRIMARY KEY IDENTITY(1,1),
  order_id INT NOT NULL,
  payment_method VARCHAR(20) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  Payment_status VARCHAR(20) NOT NULL DEFAULT 'pending',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_order_id_on_Payment FOREIGN KEY (order_id) REFERENCES orders(order_id),
  CONSTRAINT CH_payment_method_on_Orders CHECK (payment_method IN ('credit_card', 'debit_card', 'paypal')),
  CONSTRAINT CH_Payment_status_on_Orders CHECK (Payment_status IN ('pending', 'successful', 'failed'))
);

CREATE TABLE Product_Review (
  review_id INT PRIMARY KEY IDENTITY(1,1),
  product_id INT NOT NULL,
  customer_id INT NOT NULL,
  rating INT NOT NULL ,
  comment TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_product_id_on_Product_Review FOREIGN KEY (product_id) REFERENCES Product(product_id),
  CONSTRAINT FK_customer_id_on_Product_Review FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  CONSTRAINT CH_rating_on_Product_Review CHECK (rating >= 1 AND rating <= 5)
);

CREATE TABLE Product_Image (
  image_id INT PRIMARY KEY IDENTITY(1,1),
  product_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  is_primary BIT DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT FK_product_id_on_Product_Image  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- To Drop Database
USE master;
DROP DATABASE ecommerce;
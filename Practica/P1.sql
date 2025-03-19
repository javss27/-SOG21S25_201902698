CREATE DATABASE tienda_ventas;
USE tienda_ventas;


-- Tabla de Clientes
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_gender VARCHAR(10),
    customer_age INT
);

-- Tabla de Productos
CREATE TABLE products (
    product_name VARCHAR(255) PRIMARY KEY,
    product_category VARCHAR(100),
    product_price DECIMAL(10,2)
);

-- Tabla de Órdenes
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    purchase_date DATE,
    customer_id INT,
    order_total DECIMAL(10,2),
    payment_method VARCHAR(50),
    shipping_region VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Tabla de Detalles de Orden
CREATE TABLE order_details (
    order_id INT,
    product_name VARCHAR(255),
    quantity INT,
    PRIMARY KEY (order_id, product_name),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_name) REFERENCES products(product_name)
);


drop table ventas;
drop table customers;
DROP DATABASE tienda_ventas;
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_details;

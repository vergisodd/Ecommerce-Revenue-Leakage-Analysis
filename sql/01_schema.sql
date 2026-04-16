-- Create Customers table
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_age INT,
    customer_gender VARCHAR(10)
);

-- Create Products table
CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(50),
    price DECIMAL(10,2),
    discount DECIMAL(5,2)
);

-- Create Orders table
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    order_date DATE,
    delivered_date DATE,
    quantity INT,
    payment_method VARCHAR(50),
    region VARCHAR(50),
    total_amount DECIMAL(10,2),
    shipping_cost DECIMAL(10,2),
    profit_margin DECIMAL(10,2),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create Returns table
CREATE TABLE returns (
    return_id SERIAL PRIMARY KEY,
    order_id VARCHAR(20),
    returned VARCHAR(5),
    request_date DATE,
    return_reason TEXT,

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

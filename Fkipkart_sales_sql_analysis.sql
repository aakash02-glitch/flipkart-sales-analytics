-- Create Database
CREATE DATABASE flipkart_sales_db;
USE flipkart_sales_db;

-- Create Table
CREATE TABLE flipkart_sales (
    product_id VARCHAR(50),
    product_name TEXT,
    category VARCHAR(255),
    brand VARCHAR(100),
    seller VARCHAR(255),
    seller_city VARCHAR(100),
    price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    final_price DECIMAL(10,2),
    rating DECIMAL(3,2),
    review_count INT,
    stock_available INT,
    units_sold INT,
    listing_date DATE,
    delivery_days INT,
    weight_g INT,
    warranty_months INT,
    color VARCHAR(50),
    size VARCHAR(50),
    return_policy_days INT,
    is_returnable VARCHAR(10),
    payment_modes TEXT,
    shipping_weight_g INT,
    product_score DECIMAL(5,2),
    seller_rating DECIMAL(3,2),
    discount_amount DECIMAL(10,2),
    price_band VARCHAR(20),
    rating_band VARCHAR(20),
    return_risk_flag VARCHAR(20),
    listing_year INT,
    listing_month INT,
    listing_month_name VARCHAR(20)
);

-- Basic Data Validation
SELECT COUNT(*) AS total_records FROM flipkart_sales;

SELECT 
    MIN(listing_date) AS first_listing,
    MAX(listing_date) AS last_listing
FROM flipkart_sales;

-- Total Products & Sellers
SELECT 
    COUNT(DISTINCT product_id) AS total_products,
    COUNT(DISTINCT seller) AS total_sellers
FROM flipkart_sales;

-- Average Price & Discount
SELECT 
    ROUND(AVG(final_price), 2) AS avg_selling_price,
    ROUND(AVG(discount_amount), 2) AS avg_discount
FROM flipkart_sales;

-- Price Band Distribution
SELECT 
    price_band,
    COUNT(*) AS product_count
FROM flipkart_sales
GROUP BY price_band
ORDER BY product_count DESC;

-- Category-wise Pricing
SELECT 
    category,
    ROUND(AVG(final_price), 2) AS avg_price
FROM flipkart_sales
GROUP BY category
ORDER BY avg_price DESC
LIMIT 10;

-- Discount Impact Analysis
SELECT 
    price_band,
    ROUND(AVG(discount_percent), 2) AS avg_discount_percent,
    ROUND(AVG(discount_amount), 2) AS avg_discount_amount
FROM flipkart_sales
GROUP BY price_band;

-- Rating Distribution
SELECT 
    rating_band,
    COUNT(*) AS product_count
FROM flipkart_sales
GROUP BY rating_band;

-- High Return Risk Products
SELECT 
    category,
    COUNT(*) AS high_risk_products
FROM flipkart_sales
WHERE return_risk_flag = 'High Risk'
GROUP BY category
ORDER BY high_risk_products DESC;

-- Top Seller Cities
SELECT 
    seller_city,
    COUNT(*) AS listings
FROM flipkart_sales
GROUP BY seller_city
ORDER BY listings DESC
LIMIT 10;

-- Best Sellers by Rating
 SELECT 
    seller,
    ROUND(AVG(seller_rating), 2) AS avg_seller_rating,
    COUNT(*) AS total_products
FROM flipkart_sales
GROUP BY seller
HAVING total_products > 20
ORDER BY avg_seller_rating DESC
LIMIT 10;

-- Product Listings Over Time
 SELECT 
    listing_year,
    listing_month_name,
    COUNT(*) AS total_listings
FROM flipkart_sales
GROUP BY listing_year, listing_month, listing_month_name
ORDER BY listing_year, listing_month;

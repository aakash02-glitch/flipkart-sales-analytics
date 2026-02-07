# Flipkart Sales Analytics 📊

## 📌 Project Overview
This project is an end-to-end data analytics case study performed on Flipkart sales data.  
The objective is to derive actionable business insights related to pricing strategy, discount behavior, product quality, payment mode contribution, and return risk.

The project follows a complete analytics lifecycle:
- Business problem understanding
- Data cleaning and feature engineering
- SQL-based analysis
- Interactive dashboard creation
- Insight generation

---

## 🧠 Business Problem
Flipkart hosts a wide range of products across multiple categories and price segments.  
Business stakeholders require a consolidated analytical view to understand:
- How products are distributed across price bands
- Discount patterns across pricing segments
- Customer perception through ratings
- Revenue contribution by payment modes
- Product segments with higher return risk

This project aims to support data-driven decision-making by transforming raw sales data into meaningful insights.

---

## 🛠 Tools & Technologies Used
- **Python** (Pandas, NumPy) – Data cleaning & feature engineering  
- **MySQL** – Structured data analysis using SQL queries  
- **Power BI** – Interactive dashboard & visualization  
- **GitHub** – Version control and project documentation  

---

## 🧹 Data Cleaning & Feature Engineering (Python)
The raw dataset was cleaned and transformed using Python:
- Converted date columns to proper datetime format
- Handled missing values in categorical fields
- Ensured numerical consistency for price and rating columns
- Created new analytical features:
  - `discount_amount`
  - `price_band`
  - `rating_band`
  - `return_risk_flag`
  - `listing_year`, `listing_month`

The cleaned dataset was then prepared for SQL analysis and visualization.

---

## 🗄 Data Analysis (MySQL)
The cleaned data was loaded into a MySQL database and analyzed using SQL queries to:
- Analyze product distribution across price bands
- Study average selling price and discount behavior
- Identify monthly listing trends
- Analyze revenue contribution by payment modes
- Detect high return-risk product segments

---

## 📊 Data Visualization (Power BI)
An interactive Power BI dashboard was built to visualize insights:
- KPI cards for overall metrics
- Monthly trend analysis
- Pricing and discount analysis
- Product rating distribution
- Payment mode revenue treemap
- Interactive slicers for dynamic filtering

The dashboard enables stakeholders to explore data intuitively and make informed decisions.

---

## 🔍 Key Insights
- Medium price band contains the highest number of product listings
- Lower-priced products receive higher discounts
- Majority of products have Average to Good ratings
- Revenue is evenly distributed across major payment modes
- Return risk is concentrated in specific product segments

---

## 📁 Repository Structure

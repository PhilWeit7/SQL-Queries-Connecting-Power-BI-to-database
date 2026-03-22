# SQL-Queries-Connecting-Power-BI-to-database
Sales & Inventory Analysis (Power BI + PostgreSQL)
Overview

This project uses PostgreSQL and Power BI to analyze sales, customers, products, and inventory data. The goal is to generate insights using SQL and present them in an interactive dashboard.

Database

The database (assignment2) contains four tables:

customers
products
sales
inventory

Relationships:

sales links to customers and products
inventory links to products
SQL Work

The analysis includes:

Subqueries (e.g. comparing values to averages)
CTEs for breaking down complex queries
Window functions (ranking, running totals, grouping)
Advanced queries like revenue contribution and customer behavior
Power BI

Connected using:

Server: localhost:5432
Database: assignment2

Tables were loaded and modeled into a star schema with sales as the main table.

Dashboard

The dashboard covers:

Sales performance (revenue, trends)
Product performance (top products, categories)
Customer insights (top customers, spending)
Inventory analysis (stock levels, comparisons)
Key Takeaway

SQL is used to prepare and analyze the data, while Power BI is used to visualize it and generate insights.

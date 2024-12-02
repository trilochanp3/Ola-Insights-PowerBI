# Ola Insights Project

## Introduction
This project analyzes Ola booking data using MySQL and visualizes insights with Power BI. The goal is to uncover key metrics, such as booking success rates, cancellation reasons, revenue patterns, and customer ratings.

## Tech Stack
- MySQL for data querying
- Power BI for dashboard creation

## Features
- Count of successful bookings
- Average ride distance per vehicle type
- Top 5 customers by ride count
- Analysis of ride cancellations by customers and drivers
- Revenue and rating insights

## Folder Structure
- `SQL Scripts`: Contains all SQL queries used to extract insights.
- `Power BI Dashboard`: Includes the `.pbix` file.
- `Screenshots`: Sample dashboard images.

## Setup Instructions
1. **Run SQL Queries**:
   - Use `ola_insights.sql` in MySQL Workbench.
   - Ensure the `bookings` table is loaded.
2. **Power BI Dashboard**:
   - Open `OlaInsightsDashboard.pbix` in Power BI.
   - Explore the interconnected sheets and visuals.

## Screenshots
![Overall Insights](Screenshots/Overall.png)
![Revenue Insights](Screenshots/Revenue.png)
![Vehicle Insights](Screenshots/Vehicles.png)
![Cancellation Insights](Screenshots/Cancellation.png)
![Rating Insights](Screenshots/Rating.png)

## Conclusion
This analysis provides actionable insights for operational improvements in the ride-booking domain.

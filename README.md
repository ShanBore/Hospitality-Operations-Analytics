# Hotel Operations Analysis and Dashboard
## Introduction
This project showcases an in-depth analysis of hotel revenue data, leveraging SQL for data cleaning, manipulation, and transformation, followed by a detailed visualization using Power BI. The aim is to provide actionable insights into hotel performance across various properties, cities, and booking platforms, with key performance indicators (KPIs) such as Revenue per Available Room (RevPAR), Occupancy Rate, and Average Daily Rate (ADR).

## Overview
The project comprises two main components:

**Data Processing:** Executed in MySQL, involving data cleaning, transformation, and enhancement to ensure high-quality, analyzable data.  

**Power BI Dashboard:** Visualizing key performance metrics, trends, and comparisons for effective data-driven decision-making.


## Data Manual
The data is stored in multiple structured tables (CSV files):

**dim_date.csv:** Contains information on the date, including its classification as a weekend/weekday and week number.  

**dim_hotels.csv:** Includes property details such as property ID, name, category (business/luxury), and city.  

**dim_rooms.csv:** Holds room information, including room ID and class (standard, elite, premium).  

**fact_aggregated_bookings.csv:** Aggregated data on bookings, including total bookings, room capacity, and realization.  

**fact_bookings.csv:** Detailed information on each individual booking, such as booking date, number of guests, platform, and revenue realized.  

## Data Cleaning, Manipulation, and Transformation Process
The following steps outline how the data was processed in SQL to prepare it for analysis and visualization:

### Duplicate Removal
The initial step involved identifying and removing duplicate entries in the fact tables, particularly in the fact_bookings table. Duplicate records can skew aggregated results, such as total revenue and booking counts, leading to inaccurate insights. Using SQL, we compared key fields like booking_id, property_id, and check_in_date to remove any duplicates.

### Handling Missing Values
Missing values can distort analyses, especially in critical fields such as ratings and revenue. The data cleaning process addressed missing values in:

**Ratings:** Missing ratings were imputed with a default value (e.g., 0), assuming that no rating was provided by the guest.

**Revenue Realized:** If the realized revenue was missing, we assigned it the value of revenue generated, assuming the entire expected revenue was realized for that booking. This step ensured that the absence of values did not interfere with aggregations or calculations.

### Data Transformation
To enhance the dataset for deeper analysis, several transformations were performed:

**Date Format Standardization:** Date fields were converted into a consistent format to ensure smooth date-based queries and analysis. This allowed for easy weekly, monthly, or yearly breakdowns.  

**Utilization Rate Calculation:** A new column was created to capture the room utilization rate, which is the percentage of rooms sold relative to the total capacity. This metric is key to understanding operational efficiency.  

**Booking Length:** For each booking, the length of stay was calculated by finding the difference between the check-in and checkout dates. This provides insight into average stay duration and helps evaluate guest behavior patterns.  

### Data Integration and Joins

After cleaning and transforming individual tables, the next step was to integrate the data by joining tables on common fields. For example:

**Property Information:** The fact_bookings table was joined with dim_hotels to bring in hotel-related attributes like property name, category, and city.  

**Room Information:** The dim_rooms table was joined to categorize bookings based on room type. This integration allowed for a comprehensive dataset that includes not only booking details but also context about the property and room type.  

### Aggregations and Derived Metrics
Once the data was integrated, key aggregations were performed:

**Revenue per Property:** We aggregated revenue across properties to provide a consolidated view of total earnings by hotel.  

**Platform-Wise Performance:** Metrics such as realized revenue and ADR were calculated based on the platform used for bookings (e.g., direct online, third-party platforms). This helped assess the performance and reliability of each platform.  

**Occupancy Trends:** Trends in occupancy percentage, RevPAR, and ADR were derived based on different time periods (weekly or monthly) to identify patterns in hotel performance over time.  

## Foreign Key Constraints and Data Integrity
Foreign key constraints were applied to ensure referential integrity between the fact tables and dimension tables. This guarantees that each booking is associated with valid properties and room categories, preventing orphaned records and ensuring accurate data relationships.

## The Dashboard

### Key Performance Indicators (KPIs):  

**Revenue:** The total revenue generated across all properties.  

**RevPAR:** Revenue per available room, a key metric for assessing hotel profitability.  

**DSRN:** Daily sellable room nights, showing the total number of room nights that were available for sale.  

**Occupancy %:** The proportion of available rooms that were occupied.  

**ADR:** Average Daily Rate, indicating the average rate per booked room.  

**Realisation %:** The percentage of expected revenue that was realized from bookings.  

**Cancellation %:** The percentage of total bookings that were canceled.  

**Average Rating:** Guest satisfaction measured through average ratings.  

### Dashboard Features:

**Filters:** The dashboard allows filtering by city and room type to drill down into specific subsets of the data.  

**Trend Charts:** Visualize week-on-week performance of key metrics like RevPAR, ADR, and Occupancy % to identify patterns and seasonality.  

**Revenue Breakdown by Category:** Shows the contribution of business and luxury categories to total revenue.  

**Platform Comparison:** Realisation % and ADR are compared across booking platforms such as direct online and third-party services.  

## Analysis

From the analysis of the data, several trends and patterns emerge:

**Weekend vs. Weekday Performance:** Occupancy and RevPAR tend to be higher on weekends, suggesting a clear distinction in guest booking behavior.  

**Business vs. Luxury Category:** Business category hotels contribute the majority of the revenue, while luxury hotels contribute less but still play a significant role.  

**Platform Effectiveness:** Certain booking platforms, such as "Logtrip" and "Direct Online," show higher realisation rates and ADR, indicating their reliability and potential for higher-value bookings.  

## Insights and Recommendations

### Insights:

**Maximized Weekend Occupancy:** The higher weekend occupancy indicates that guests prefer weekend stays. This presents an opportunity to offer packages or promotions to increase weekday bookings.  

**Business Category Dominance:** The business category generates a larger portion of revenue, likely driven by corporate bookings and events.  

**Booking Platform Performance:** Platforms like "Logtrip" and "Direct Online" outperform others in terms of ADR and realisation rate, suggesting that they should be prioritized in the hotel’s distribution strategy.  

### Recommendations:

**Enhance Weekday Promotions:** To bridge the gap between weekend and weekday performance, hotels can create promotions targeted at extending stays into weekdays or offering discounted rates for mid-week stays.  

**Expand Business Amenities:** Given the strong performance of business category hotels, expanding corporate-oriented services (e.g., business centers, high-speed internet, conference rooms) could boost revenue further. 

**Focus on High-Performing Platforms:** Strengthening relationships with high-performing booking platforms or increasing marketing efforts on these platforms could enhance revenue realization and occupancy rates.  

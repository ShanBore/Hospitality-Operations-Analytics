# Hotel Operations Analysis and Dashboard
## Background and Overview
This project focuses on analyzing hotel performance data, using MySQL for data processing and Power BI for visualization. The goal is to derive valuable insights into key business metrics such as *Revenue per Available Room (RevPAR), Occupancy %, Average Daily Rate (ADR)*, and platform-based performance. The analysis is designed to help hotel management make informed decisions to optimize revenue, increase occupancy, and improve overall operational efficiency.

Insights and recommendations are provided on the following key areas:

Revenue trends across properties, cities, and room categories.  
Booking platform performance, comparing realisation and ADR across various platforms.  
Occupancy patterns by day of the week and time period.  
Business category dominance, analyzing its contribution to total revenue.  
Cancellation rates and their impact on revenue realization.  
## Data Structure Overview
The data consists of five main tables used for analysis:

**date.csv:** Contains date-related details, including the day type (weekday/weekend) and week number.

**hotels.csv:** Provides information about hotel properties, including property ID, name, category (business/luxury), and city.

**rooms.csv:** Holds room details such as room ID and room class (standard, elite, premium).

**aggregated_bookings.csv:** Aggregated data on bookings, including total bookings, room capacity, and revenue realization.

**bookings.csv:** Detailed booking records, containing booking dates, platform information, guest count, and revenue generated.

These tables were cleaned, transformed, and integrated using MySQL to ensure high-quality, analyzable data. The Power BI dashboard was then built to visualize key metrics and trends, offering a holistic view of hotel performance.

##  Executive Summary
### Overview of Findings
The analysis of hotel revenue reveals several key metrics:

**Total Revenue:** $1.69 billion, driven largely by business category hotels, which contribute 61.6% of the revenue.

**RevPAR (Revenue per Available Room):** Averaging 7,337 across all properties.

**Occupancy %:** An average occupancy rate of 57.8%, with a noticeable increase during weekends.

**ADR (Average Daily Rate):** Averaging $12.7K, with business category hotels outperforming luxury hotels in most cities.

**Platform Performance:** Platforms like Logtrip and Direct Online exhibit the highest realization rates (70%+) and ADR (above $12.6K), while other platforms, such as Journey, lag behind.

### Trends
**Weekend vs. Weekday:** Occupancy rates are consistently higher on weekends (62.6%) compared to weekdays (55.8%), suggesting a preference for leisure stays.

**Business Dominance:** Business category hotels outperform luxury hotels in terms of both revenue and occupancy, highlighting their significance in the portfolio.

**Platform Utilization:** Direct online booking platforms show a higher realization rate, while some third-party platforms have higher cancellation rates, affecting overall performance.

### Performance
**Top Performing Properties:** Hotels in Delhi and Mumbai consistently show higher RevPAR, occupancy, and ADR compared to properties in smaller cities.

**Cancellation Rates:** The average cancellation rate across all platforms stands at 24.8%, impacting realized revenue.
## Insights Deep Dive
### Insight 1: Weekend Performance
Over the analysis period, weekend performance emerged as a key revenue driver, with weekend occupancy rates peaking at 62.6%, significantly higher than weekday occupancy at 55.8%. This translated into a *RevPAR* of 7,972 for weekends compared to 7,083 on weekdays. The higher weekend occupancy has been consistent historically, indicating that leisure travelers primarily book stays over the weekend, while weekdays are relatively underutilized.
### Insight 2: Business Hotel Dominance
Business category hotels contributed 61.6% of total revenue, outperforming luxury hotels, which accounted for only 38.4%. Business hotels maintained an average *ADR* of $12.8K, slightly higher than the luxury segment, showing strong demand from corporate travelers, particularly in major business hubs like Delhi and Mumbai. Historically, business hotels have consistently dominated revenue generation, suggesting that they cater to a steady stream of business travelers throughout the year.
### Insight 3: Platform Performance
In terms of platform performance, Logtrip and Direct Online platforms delivered the highest revenue realization rates at 70.6%, with an *ADR* of $12.8K, while maintaining low cancellation rates of 20.1%. These platforms have been leading in terms of revenue reliability over the past several months, indicating their effectiveness in securing high-value bookings with minimal cancellations. In contrast, third-party platforms like Journey exhibited higher cancellation rates of 24.4%, which significantly affected overall revenue realization.
### Insight 4: Cancellation Impact
Despite strong weekend and platform-based performance, the overall cancellation rate across all platforms averaged 24.8%, reducing the total revenue realization to 70.1%. High cancellation rates, especially on third-party platforms, have been a persistent issue, historically leading to a drop in realized revenue and emphasizing the need for better booking management and customer engagement strategies.
## Recommendations
### Recommendation 1: Enhance Weekday Promotions
 Given that weekend occupancy rates are at 62.6% while weekday occupancy lags at 55.8%, the company should launch targeted weekday promotions. These could include discounted corporate packages or loyalty incentives for extended stays. By increasing weekday occupancy by 5% (targeting 60.8%), the company could potentially increase overall *RevPAR* from 7,083 to 7,400 during weekdays, adding significant incremental revenue across properties.
### Recommendation 2: Invest in Business Hotels
Business category hotels, which generate 61.6% of total revenue and maintain a strong ADR of $12.8K, should receive further investment in corporate-focused amenities. Upgrades such as conference facilities, high-speed internet, and business lounges could further enhance their appeal. By increasing *ADR* by 3% to $13.2K and occupancy by 5% in business hotels, the company can unlock additional revenue in high-demand markets such as Delhi and Mumbai.

### Recommendation 3: Focus on High-Performing Platforms
The current average cancellation rate of 24.8% across all platforms is significantly affecting revenue realization. Implement stricter cancellation policies on underperforming platforms, such as "Journey," which shows a cancellation rate of 24.4%. By reducing the overall cancellation rate to 20%, the company could raise its revenue realization from 70.1% to 74%, leading to an increase in realized revenue by as much as $50 million annually.

### Recommendation 4: Manage Cancellation Rates
To reduce the high cancellation rates (24.8%), hotels should consider implementing stricter cancellation policies on platforms that are prone to cancellations, or offer incentives for guests to complete their bookings. Proactive customer engagement, such as follow-up emails or discount offers for finalizing bookings, could mitigate cancellations. 

### Recommendation 5: Expand Marketing for Luxury Segment
Expand Marketing for Luxury Segment: While business hotels outperform, the luxury segment contributes 38.4% of revenue and can still provide growth opportunities through targeted marketing campaigns. Increasing occupancy in luxury hotels by 5% (from 65% to 70%) could drive higher revenues, especially by leveraging exclusive offers for high-end travelers. Additionally, increasing *ADR* by 2% in luxury properties could push the overall average higher, adding an estimated $10 million in additional annual revenue.

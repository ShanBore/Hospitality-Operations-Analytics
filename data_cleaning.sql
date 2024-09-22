
-- Step 1: Creating Tables

CREATE TABLE dim_date (
    date DATE PRIMARY KEY,
    mmm_yy VARCHAR(10),
    week_no VARCHAR(5),
    day_type VARCHAR(10)
);

CREATE TABLE dim_hotels (
    property_id INT PRIMARY KEY,
    property_name VARCHAR(100),
    category VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE dim_rooms (
    room_id VARCHAR(5) PRIMARY KEY,
    room_class VARCHAR(50)
);

CREATE TABLE fact_aggregated_bookings (
    property_id INT,
    check_in_date DATE,
    room_category VARCHAR(5),
    successful_bookings INT,
    capacity INT,
    PRIMARY KEY (property_id, check_in_date, room_category)
);

CREATE TABLE fact_bookings (
    booking_id VARCHAR(20) PRIMARY KEY,
    property_id INT,
    booking_date DATE,
    check_in_date DATE,
    checkout_date DATE,
    no_guests INT,
    room_category VARCHAR(5),
    booking_platform VARCHAR(50),
    ratings_given DECIMAL(2,1),
    booking_status VARCHAR(20),
    revenue_generated DECIMAL(10,2),
    revenue_realized DECIMAL(10,2)
);

-- Step 2: Data Cleaning

DELETE fb1
FROM fact_bookings fb1
INNER JOIN fact_bookings fb2
WHERE fb1.booking_id > fb2.booking_id
AND fb1.property_id = fb2.property_id
AND fb1.check_in_date = fb2.check_in_date;

UPDATE fact_bookings
SET ratings_given = 0
WHERE ratings_given IS NULL;

UPDATE fact_bookings
SET revenue_realized = revenue_generated
WHERE revenue_realized IS NULL;

-- Step 3: Data Transformation

UPDATE dim_date
SET date = STR_TO_DATE(date, '%d-%M-%y');

ALTER TABLE fact_aggregated_bookings
ADD COLUMN utilization_rate DECIMAL(5,2);

UPDATE fact_aggregated_bookings
SET utilization_rate = (successful_bookings / capacity) * 100;

-- Step 4: Data Manipulation

SELECT fb.property_id, SUM(fb.revenue_realized) AS total_revenue
FROM fact_bookings fb
GROUP BY fb.property_id;

SELECT fb.booking_id, dh.property_name, fb.no_guests, dr.room_class, fb.revenue_realized
FROM fact_bookings fb
JOIN dim_hotels dh ON fb.property_id = dh.property_id
JOIN dim_rooms dr ON fb.room_category = dr.room_id;

-- Step 5: Additional Data Transformation

ALTER TABLE fact_bookings
ADD COLUMN booking_length INT;

UPDATE fact_bookings
SET booking_length = DATEDIFF(checkout_date, check_in_date);

-- Step 6: Foreign Key Constraints

ALTER TABLE fact_bookings
ADD CONSTRAINT fk_property_id FOREIGN KEY (property_id) REFERENCES dim_hotels(property_id);

ALTER TABLE fact_aggregated_bookings
ADD CONSTRAINT fk_property_id_aggregated FOREIGN KEY (property_id) REFERENCES dim_hotels(property_id);

ALTER TABLE fact_bookings
ADD CONSTRAINT fk_room_category FOREIGN KEY (room_category) REFERENCES dim_rooms(room_id);

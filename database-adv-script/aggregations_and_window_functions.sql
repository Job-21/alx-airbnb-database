-- 1. Find the total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties based on total bookings using ROW_NUMBER()
SELECT property_id,
       COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_num_rank
FROM bookings
GROUP BY property_id;

-- 3. Rank properties based on total bookings using RANK()
SELECT property_id,
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_order
FROM bookings
GROUP BY property_id;

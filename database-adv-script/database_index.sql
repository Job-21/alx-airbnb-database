-- Create index on user_id in bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on property_id in reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Create index on email in users table
CREATE INDEX idx_users_email ON users(email);

-- Measure performance before/after indexing using EXPLAIN ANALYZE

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT property_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY property_id
ORDER BY total_bookings DESC;

-- Create index on user_id in bookings table (used in WHERE, JOIN)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in bookings table (used in JOIN, GROUP BY)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on property_id in reviews table (used in JOIN, GROUP BY)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Create index on email in users table (common in login/auth queries)
CREATE INDEX idx_users_email ON users(email);

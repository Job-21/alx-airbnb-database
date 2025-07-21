# Index Performance Analysis

## Objective

To improve the performance of frequent queries by adding indexes to high-usage columns in the `users`, `bookings`, and `properties` tables.

---

## Identified Columns for Indexing

| Table      | Column       | Reason                                  |
|------------|--------------|-----------------------------------------|
| bookings   | user_id      | Used in JOINs and WHERE filters         |
| bookings   | property_id  | Used in JOINs and GROUP BY              |
| reviews    | property_id  | Used in JOINs and GROUP BY              |
| users      | email        | Often used in WHERE (e.g., login checks)|

---

## Indexes Created

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_users_email ON users(email);

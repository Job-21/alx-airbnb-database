# Optimization Report

## Initial Query Description

The original query retrieves booking records along with associated user, property, and payment details using `JOIN` clauses.

## Performance Analysis (Using EXPLAIN)

Before optimization, `EXPLAIN` showed:
- Full table scans on large tables like `users` and `properties`
- Temporary tables for sorting and joining
- Increased I/O cost due to unnecessary selected columns

## Optimization Strategy

- Indexed the following high-usage columns:
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`
- Reduced selected columns to only those required by the application
- Avoided unnecessary fields like `u.id`, `p.id`, and `pay.id` in the output

## Optimized Query Benefits

- Fewer rows scanned
- Reduced memory and CPU usage
- Improved join efficiency due to proper indexing

## Conclusion

The optimized query is functionally equivalent but significantly faster, especially on large datasets. Proper indexing and reducing result size had the most impact.

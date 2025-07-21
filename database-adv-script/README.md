# Complex SQL Queries with Joins

This script demonstrates the use of SQL joins to query relational data in an Airbnb-like database.

## Queries Included:

1. **INNER JOIN**: Retrieves all bookings along with the users who made them.
2. **LEFT JOIN**: Retrieves all properties and their reviews, including properties with no reviews.
3. **FULL OUTER JOIN**: Retrieves all users and bookings, even if they are not linked.

## File: `joins_queries.sql`

You can run this file using your favorite SQL client connected to the database.

## How to Run

```bash
mysql -u root -p < joins_queries.sql

-- ================================================
--  SECTION A — SQL Basics
--  Q1 to Q6
-- ================================================

-- Q1. All columns and rows from customers
SELECT * FROM customers;

-- Q2. Only first_name, last_name, city
SELECT first_name, last_name, city
FROM customers;

-- Q3. Unique product categories
SELECT DISTINCT category
FROM products;

-- -----------------------------------------------
-- Q4. Primary Keys of each table
-- -----------------------------------------------
-- customers  → customer_id  (INT, PRIMARY KEY)
-- products   → product_id   (INT, PRIMARY KEY)
-- orders     → order_id     (INT, PRIMARY KEY)
-- order_items→ item_id      (INT, PRIMARY KEY)
--
-- WHY must a Primary Key be UNIQUE and NOT NULL?
--   • UNIQUE  → Every row must be identifiable.
--               Two rows with the same PK would make
--               it impossible to distinguish them.
--   • NOT NULL→ A NULL means "unknown". You cannot
--               uniquely identify a row with an
--               unknown identifier.
-- -----------------------------------------------

-- Q5. Constraints on the email column in customers
-- -----------------------------------------------
--   • UNIQUE   → No two customers can share the same email
--   • NOT NULL → Every customer must have an email
--
-- What happens on duplicate email insert?
--   MySQL/PostgreSQL → ERROR: duplicate key value
--                      violates unique constraint
--   The row is REJECTED and NOT inserted.
--
-- Test it:
INSERT INTO customers VALUES
(109,'Test','User','aarav.s@email.com','Delhi','Delhi','2024-09-01',0);
-- ↑ This WILL FAIL because aarav.s@email.com already exists

-- Q6. Insert a product with unit_price = -50
-- -----------------------------------------------
INSERT INTO products VALUES
(209,'Fake Product','Electronics','TestBrand',-50.00,100);

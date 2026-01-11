-- =============================================
-- 📂 DATABASE VERIFICATION SCRIPTS
-- Project: SwagLabs E-Commerce
-- Module: User Authentication & Inventory
-- Author: QA Engineer
-- =============================================

-- 1. VERIFY USER EXISTENCE
-- Scenario: We just created a new user (hypothetically) or are checking a locked user.
-- Goal: Ensure 'locked_out_user' has the correct flag set in the DB.
SELECT username, password_hash, is_locked, created_at
FROM users
WHERE username = 'locked_out_user';

-- EXPECTED RESULT:
-- | username        | is_locked |
-- |-----------------|-----------|
-- | locked_out_user | 1 (TRUE)  |


-- 2. VERIFY ORDER COMPLETION
-- Scenario: User completed Checkout on the UI. Did the DB save the order?
-- Goal: Check the 'orders' table for the most recent transaction.
SELECT order_id, user_id, total_price, status
FROM orders
WHERE user_id = (SELECT id FROM users WHERE username = 'standard_user')
ORDER BY created_at DESC
LIMIT 1;


-- 3. CHECK FOR DUPLICATE ACCOUNTS (Data Integrity)
-- Scenario: The system should not allow two users with the same email.
-- Goal: Find any duplicates.
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
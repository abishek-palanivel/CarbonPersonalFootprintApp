-- Reset Users Script
-- Run this in MySQL to delete old users and let DataInitializer create fresh ones

USE `db-carboncalc`;

-- Delete existing users
DELETE FROM user WHERE email = 'admin@cpfa.com';
DELETE FROM user WHERE email = 'user@cpfa.com';

-- Verify deletion
SELECT * FROM user;

-- Now restart the application and DataInitializer will create fresh users with correct passwords

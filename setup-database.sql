-- Carbon Personal Footprint App - Database Setup Script
-- Run this script in MySQL before starting the application

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `db-carboncalc`;

-- Use the database
USE `db-carboncalc`;

-- Show confirmation
SELECT 'Database db-carboncalc created/verified successfully!' AS Status;

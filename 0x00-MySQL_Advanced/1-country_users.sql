-- Create db holberton if it doesnt exist

CREATE DATABASE IF NOT EXISTS holberton;

-- Use the newly created database holberton

USE holberton;

-- Drop table if it does exist
DROP TABLE IF EXISTS users;

-- Create table user if it doesnt exist
-- And specify user requirements for creation
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)
-- country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)

CREATE TABLE IF NOT EXISTS users(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
)

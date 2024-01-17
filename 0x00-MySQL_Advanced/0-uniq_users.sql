-- Create db holberton if it doesnt exist

CREATE DATABASE IF NOT EXISTS holberton;

-- Use the newly created database holberton

USE holberton;

-- Create table user if it doesnt exist
-- And specify user requirements for creation
-- id, integer, never null, auto increment and primary key
-- email, string (255 characters), never null and unique
-- name, string (255 characters)

CREATE TABLE IF NOT EXISTS users(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
)

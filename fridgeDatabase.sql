
CREATE DATABASE aplication_fridge;

USE  aplication_fridge;

CREATE TABLE fridgeProduct (

    productId INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    fridge_entry_time DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
	expiry_date DATE NOT NULL,
    category VARCHAR(255) NOT NULL,
	unit  VARCHAR(255) NOT NULL
);

UPDATE fridgeProduct
SET 
fridge_entry_time='2025-06-23', expiry_date='2025-06-24'
WHERE productID=12;

select * from fridgeProduct;

CREATE TABLE eaten_product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    expiry_date DATE,
    eaten_date DATE
);

-- Create Users table
CREATE TABLE Users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

ALTER TABLE Users
ADD COLUMN enabled BOOLEAN NOT NULL DEFAULT TRUE;

-- Create user_roles table for storing roles 
CREATE TABLE user_roles (
    user_id BIGINT NOT NULL,
    role VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE
);


-- Insert Admin user
INSERT INTO Users (email, password)
VALUES ('admin@gmail.com', '$2a$10$RvvSwPMlCbudDmLGMS6O.u6C/EeKGihr8zalP3y9AgQzISKK3KYkC');

-- Insert User account
INSERT INTO Users (email, password)
VALUES ('user@gmail.com', '$2a$10$qdlLaW8wDt/dso8F9jon/.MMWJs6cf7BUhK8vJ.n6vrtBq2EOFqwG');

-- Insert roles
INSERT INTO user_roles (user_id, role)
VALUES 
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');




SELECT * FROM Users;
SELECT * FROM user_roles;

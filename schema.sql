CREATE DATABASE IF NOT EXISTS reviews_db;

USE reviews_db;

CREATE TABLE products (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE reviews (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	product_id INT NOT NULL,
	username VARCHAR(25),
	is_verified INT NOT NULL,
	review_text TEXT,
	found_helpful INT,
	title VARCHAR (50),
	review_date DATE,
	FOREIGN KEY (product_id) REFERENCES products(id)
);

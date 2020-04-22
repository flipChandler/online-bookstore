CREATE USER 'bookstoredev' @'localhost' IDENTIFIED BY 'bookstoredev';

GRANT ALL PRIVILEGES ON * . * TO 'bookstoredev'@'localhost';

ALTER USER 'bookstoredev'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bookstoredev';

CREATE DATABASE `book-store-dev`;
USE `book-store-dev`;

CREATE TABLE IF NOT EXISTS tbl_category(
id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
category_name VARCHAR(255) NULL DEFAULT NULL);

CREATE TABLE IF NOT EXISTS tbl_book(
id BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
sku VARCHAR(255) DEFAULT NULL,
name VARCHAR(255) DEFAULT NULL,
description VARCHAR(255) DEFAULT NULL,
unit_price DECIMAL(13,2) DEFAULT NULL,
image_url VARCHAR(255) DEFAULT NULL,
active BIT DEFAULT 1,
units_in_stock INT(11) DEFAULT NULL,
date_created DATETIME DEFAULT NULL,
last_updated DATETIME DEFAULT NULL,
category_id BIGINT(20) NOT NULL,
FOREIGN KEY(category_id) REFERENCES tbl_category (id) );

INSERT INTO tbl_category(category_name) VALUES ('Text Books'), ('Fantasy');

INSERT INTO tbl_book
(
	sku,
	name,
    description,
    image_url,
    active,
    units_in_stock,
    unit_price,
    category_id,
    date_created
)
VALUES
(
	'text-100',
    'C Programming Language',
    'Learn C Programming Language',
    'assets/images/books/text-100.png',
    1,
    100,
    600,
    1,
    '2020-01-28'),
    (
	'text-101',
    'C# Crash Course',
    'Learn C# Programming Language',
    'assets/images/books/text-101.png',
    1,
    100,
    900,
    1,
    '2020-01-28'),    
    (
	'text-102',
    'C++ Crash Course',
    'Learn C++ Programming Language',
    'assets/images/books/text-102.png',
    1,
    100,
    700,
    1,
    '2020-01-28'),
    (
	'text-103',
    'Cracking the Coding Interview',
    'Learn Cracking the Coding Interview',
    'assets/images/books/text-103.png',
    1,
    100,
    1000,
    1,
    '2020-01-28'),
    (
	'text-104',
    'Data Structures and Algorithms',
    'Learn Data structures and algorithms',
    'assets/images/books/text-104.png',
    1,
    100,
    1200,
    1,
    '2020-01-28'),
    (
	'text-105',
    'Head First Design Patterns',
    'Learn Design Patterns from Head First',
    'assets/images/books/text-105.png',
    1,
    100,
    600,
    1,
    '2020-01-28'),
    (
	'text-106',
    'Java Programming',
    'Learn Java Programming from Scratch',
    'assets/images/books/text-106.png',
    1,
    100,
    800,
    1,
    '2020-01-28'),
    (
	'text-107',
    'ML with Python',
    'Learn Machine Learning with Python',
    'assets/images/books/text-107.png',
    1,
    100,
    1500,
    1,
    '2020-01-28'),
    (
	'text-108',
    'Practical API Design',
    'Learn how to design API pratically',
    'assets/images/books/text-108.png',
    1,
    100,
    999,
    1,
    '2020-01-28'),
    (
	'text-109',
    'Python Programming',
    'Learn CPython Programming from Scratch',
    'assets/images/books/text-109.png',
    1,
    100,
    499,
    1,
    '2020-01-28');
    
SELECT * from tbl_book;

truncate tbl_book;


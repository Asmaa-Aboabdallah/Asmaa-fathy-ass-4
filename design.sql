CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci';

 CREATE TABLE governate (
    id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(255)  NOT NULL,
    PRIMARY KEY(id)
);

 CREATE TABLE suppliers (
    id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(255)  NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    brief_data TEXT,
    PRIMARY KEY(id)
);

 CREATE TABLE products (
    id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(255)  NOT NULL,
    code INTEGER NOT NULL,
    price FLOAT NOT NULL,
    description TEXT,
    supplier_id INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

 CREATE TABLE store (
    id  INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(255)  NOT NULL,
    address VARCHAR(255) ,
    governate_id INTEGER UNSIGNED NOT NULL,
    product_id INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (governate_id) REFERENCES governate(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
     
);

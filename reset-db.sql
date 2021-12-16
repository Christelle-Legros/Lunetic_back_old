DROP TABLE IF EXISTS `opticians`;
CREATE TABLE opticians (
id_optician INT NOT NULL AUTO_INCREMENT,
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(255) NOT NULL,
company VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
other_address VARCHAR(255),
postal_code VARCHAR(50) NOT NULL,
city VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
mobile_phone VARCHAR(50) NOT NULL,
password VARCHAR(255) NOT NULL,
website VARCHAR(255),
home_phone VARCHAR(50),
finess_code VARCHAR(20),
siret VARCHAR(25),
vat_number VARCHAR(45),
PRIMARY KEY (id_optician)
);

DROP TABLE IF EXISTS `colors`;
CREATE TABLE colors (                                
id_color INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
PRIMARY KEY (id_color)
);

DROP TABLE IF EXISTS `models`;
CREATE TABLE models (
id_model INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100),
PRIMARY KEY (id_model)
);

DROP TABLE IF EXISTS `models_colors`;
CREATE TABLE models_colors (
id_model_color INT NOT NULL AUTO_INCREMENT,
id_color INT NOT NULL,
id_model INT NOT NULL,
PRIMARY KEY (id_model_color),
FOREIGN KEY (id_color) REFERENCES colors(id_color),
FOREIGN KEY (id_model) REFERENCES models(id_model)
);

DROP TABLE IF EXISTS `statuses`;
DROP TABLE IF EXISTS `status`;
CREATE TABLE statuses (
id_status INT NOT NULL AUTO_INCREMENT,
name VARCHAR(45),
PRIMARY KEY (id_status)
);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE orders (
id_order INT NOT NULL AUTO_INCREMENT,
id_status INT NOT NULL,
price VARCHAR(45),
id_optician INT NOT NULL,
date DATETIME NOT NULL,
order_number VARCHAR(45) NOT NULL,
PRIMARY KEY (id_order),
FOREIGN KEY (id_status) REFERENCES status(id_status),
FOREIGN KEY (id_optician) REFERENCES opticians(id_optician)
);

DROP TABLE IF EXISTS `products`;
CREATE TABLE products (
id_product INT NOT NULL AUTO_INCREMENT,
id_model_color INT NOT NULL,
quantity INT,
id_order INT NOT NULL,
PRIMARY KEY (id_product),
FOREIGN KEY (id_model_color) REFERENCES models_colors(id_model_color),
FOREIGN KEY (id_order) REFERENCES orders(id_order)
);
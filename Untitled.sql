CREATE DATABASE test;

USE test;
CREATE TABLE product(
id INT NOT NULL PRIMARY KEY,
productCode CHAR(20) NOT NULL,
productName VARCHAR(50) NOT NULL,
productPrice FLOAT NOT NULL,
productAmount INT NOT NULL,
productDescription VARCHAR(50) NOT NULL,
productStatus VARCHAR(50) NOT NULL);

INSERT INTO product
VALUES (101,'CG101','Tran Van C',10000,200000,'Nhan Vien Lam Them','ABCXIZ'),
()


# CREATE UNIQUE INDEX test ON product (productCode);


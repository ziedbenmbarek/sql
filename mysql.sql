CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT NOT NULL,
    Price Number CONSTRAINT CHECK (Price>0)
);

CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT PRIMARY KEY,
    Customer_Name VARCHAR2(20) CONSTRAINT NOT NULL,
    Customer_Tel Number
);

CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity Number,
    Total_amount Number,
    CONSTRAINT FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);

ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE default SYSDATE;
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
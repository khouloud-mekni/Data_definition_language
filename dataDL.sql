/*creating table*/
CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY kEY,
    customer_Name VARCHAR2(20)  CONSTRAINT NOTNULL_customer NOT NULL,
    customer_Tel NUMBER,
 

)
CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY ,
    Product_Name  VARCHAR2(20) CONSTRAINT NOTNULL_product NOT NULL,
    Price NUMBER CHECK (Price > 0), 
)
CREATE TABLE Orders(
    Quantity NUMBER ,
    Total_amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Product(Product_id),
)
/*Add a column Category (VARCHAR2(20)) to the PRODUCT table*/
ALTER TABLE Product ADD Category VARCHAR2(20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value*/
ALTER TABLE Orders ADD OrderDate DATE default SYSDATE;
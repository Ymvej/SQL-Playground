
SET GLOBAL local_infile = 1;
USE kebab;
DROP TABLE IF EXISTS viande;
CREATE TABLE viande (
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SHIPPING_MODE VARCHAR(100),
    SHIPPING_PRICE VARCHAR(100),
    WARRANTIES_FLG VARCHAR(100),
    WARRANTIES_PRICE VARCHAR(100),
    CARD_PAYMENT INT,
    COUPON_PAYMENT INT,
    RSP_PAYMENT INT,
    WALLET_PAYMENT INT,
    PRICECLUB_STATUS VARCHAR(100),
    REGISTRATION_DATE INT,
    PURCHASE_COUNT VARCHAR(100),
    BUYER_BIRTHDAY_DATE INT,
    BUYER_DEPARTMENT INT,
    BUYING_DATE VARCHAR(100),
    SELLER_SCORE_COUNT VARCHAR(100),
    SELLER_SCORE_AVERAGE INT,
    SELLER_COUNTRY VARCHAR(100),
    SELLER_DEPARTMENT VARCHAR(100),
    PRODUCT_TYPE VARCHAR(100),
    PRODUCT_FAMILY VARCHAR(100),
    ITEM_PRICE VARCHAR(100)
);
LOAD DATA LOCAL INFILE '/home/samuel/Projects/Cours/SQL/input_train.csv' INTO TABLE viande 
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;
SET GLOBAL local_infile = 0;
-- SELECT COUNT(*) FROM viande;
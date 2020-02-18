
-- SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));



-- 1)    Quel est le mode de livraison le plus courant ?

-- SELECT SHIPPING_MODE, count(*) AS SPCount 
--     FROM viande 
-- GROUP BY SHIPPING_MODE 
-- ORDER BY SHIPPING_MODE DESC
-- ;

-- 2)    Combien de ventes y-a-t-il eu par famille de produit ?



SELECT PRODUCT_FAMILY,
SUM(CASE
        WHEN PURCHASE_COUNT = '50<100' THEN 75
        WHEN PURCHASE_COUNT = '5<20' THEN 12.5
        WHEN PURCHASE_COUNT = '20<50' THEN 35
        WHEN PURCHASE_COUNT = '100<500' THEN 300
        WHEN PURCHASE_COUNT = '>500' THEN 500
        WHEN PURCHASE_COUNT = '<5' THEN 5
    END) AS OSEF
FROM viande
GROUP BY PRODUCT_FAMILY;


-- 3)    Quel est l’âge moyen des acheteurs français ?


-- SELECT ROUND(AVG(2020-BUYER_BIRTHDAY_DATE)) AS OSEF
-- FROM viande
-- WHERE BUYER_BIRTHDAY_DATE <> ''
-- AND SELLER_COUNTRY LIKE '%FRANCE%';


-- 4)    Parmi les achats qui ont eu lieu par carte bancaire, 
--       combien ont eu lieu en septembre 2017 ?

-- SELECT COUNT(*)
-- FROM viande
-- WHERE CARD_PAYMENT = 1 
-- AND BUYING_DATE LIKE '%9/2017%';

-- 5)    Quel est le nombre moyen d’achat 
--       effectué par mode de livraison ?

-- SELECT SHIPPING_MODE, ROUND(AVG(CASE
--         WHEN PURCHASE_COUNT = '50<100' THEN '75'
--         WHEN PURCHASE_COUNT = '5<20' THEN '12.5'
--         WHEN PURCHASE_COUNT = '20<50' THEN '35'
--         WHEN PURCHASE_COUNT = '100<500' THEN '300'
--         WHEN PURCHASE_COUNT = '>500' THEN '500'
--         WHEN PURCHASE_COUNT = '<5' THEN '5'
--     END))
-- FROM viande
-- GROUP BY SHIPPING_MODE;
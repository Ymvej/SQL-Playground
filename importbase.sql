-- SELECT *,
--     CASE
--         WHEN resilies = 0 THEN 'Non-Resilié'
--         ELSE 'Resilié'
--     END
-- AS resilies
-- FROM datapouet LIMIT 50;

-- SELECT COUNT(*)
--     FROM datapouet
--     WHERE resilies2 = 'Non-Resilié'
-- ;
-- SET @total = SELECT count(*) FROM datapouet

SELECT anciennete, sinistre, count(*) / (SELECT count(*) FROM datapouet) * 100 AS %age
    FROM datapouet
    GROUP BY anciennete, sinistre
;



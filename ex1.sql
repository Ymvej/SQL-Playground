SELECT *

    FROM exo1

WHERE (T_1 + 1) * (T_2 + 1) * (T_3 + 1) * (T_4 + 1) * (T_5 + 1) * (T_6 + 1) * (T_7 + 1) * (T_8 + 1) * (T_9 + 1) * (T_10 + 1) =
T_1 + T_2 + T_3 + T_4 + T_5 + T_6 + T_7 + T_8 + T_9 + T_10 + 1 AND T_1 + T_2 + T_3 + T_4 + T_5 + T_6 + T_7 + T_8 + T_9 + T_10 <> 0
;

SELECT *

    FROM exo1

WHERE (T_1 + 1) * (T_2 + 1) * (T_3 + 1) * (T_4 + 1) * (T_5 + 1) * (T_6 + 1) * (T_7 + 1) * (T_8 + 1) * (T_9 + 1) * (T_10 + 1) =
T_1 + T_2 + T_3 + T_4 + T_5 + T_6 + T_7 + T_8 + T_9 + T_10 + 1 AND T_1 + T_2 + T_3 + T_4 + T_5 + T_6 + T_7 + T_8 + T_9 + T_10 = 1
;


CREATE TABLE T_PERSONNE_PRS2
    (PRS_NOM2 CHAR(16) NOT NULL,
    PRS_VILLE2 CHAR(16),
    PRS_NOMBRE2 INTEGER);

INSERT INTO T_PERSONNE_PRS2 (PRS_NOM2, PRS_VILLE2, PRS_NOMBRE2)

    SELECT PRS_NOM, PRS_VILLE, PRS_NOMBRE
        FROM T_PERSONNE_PRS
    ;

ALTER TABLE T_PERSONNE_PRS2 ADD INCREMENTER2 INTEGER;

UPDATE T_PERSONNE_PRS2 SET INCREMENTER2 = '1' WHERE INCREMENTER2 IS NULL

INSERT INTO T_PERSONNE_PRS (PRS_NOM, PRS_VILLE)

    SELECT PRS_NOM, PRS_VILLE, INCREMENTER2
        CASE INCREMENTER2
            WHEN 3 THEN = '4'
            WHEN 2 THEN = '3'
            WHEN 1 THEN = '2'
            WHEN 0 THEN = '1'
        END
        FROM T_PERSONNE_PRS2
    WHERE PRS_NOMBRE2 = INCREMENTER2






BULK INSERT CsvImport
    FROM '/home/samuel/Downloads/liste_apprenants-devdataia_1.csv'
    WITH
    (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    ERRORFILE = '/home/samuel/Downloads/SchoolsErrorRows.csv',
    TABLOCK
    )
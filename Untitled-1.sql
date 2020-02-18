SET GLOBAL local_infile = 1;
USE datapouet;
DROP TABLE IF EXISTS datapouet;
CREATE TABLE datapouet
(
    resilies INT,
    parcours INT,
    anciennete INT,
    demenagement INT,
    sinistre INT,
    devis INT,
    desequip INT,
    revision INT,
    satisfaction INT
);
LOAD DATA LOCAL INFILE '/home/samuel/Projects/Cours/SQL/BASE1.txt' INTO TABLE datapouet FIELDS TERMINATED BY ';';
SET GLOBAL local_infile = 0;
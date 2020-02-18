-- CREATE TABLE salade AS SELECT resilies, parcours, anciennete, demenagement FROM saucisson;
-- CREATE TABLE tomate AS SELECT resilies, parcours, sinistre, devis, revision, satisfaction FROM saucisson;

SELECT * FROM salade UNION SELECT * FROM tomate LIMIT 50;
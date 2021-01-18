USE PROJETO_MODULO_2;
SELECT * FROM mytable
WHERE price = 0.00
ORDER BY owners DESC;

USE PROJETO_MODULO_2;
SELECT * FROM mytable
WHERE price = 0.00
ORDER BY owners DESC;

Alter table mytable
ADD column Ratings int AFTER NEGATIVE_RATINGS;

SELECT RATINGS FROM MYTABLE;


SELECT positive_ratings - negative_ratings AS `total`, name
FROM mytable;

INSERT INTO mytable (RATINGS)
VALUES (positive_ratings - negative_ratings);

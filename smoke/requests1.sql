SELECT * FROM autors;

SELECT * FROM autors WHERE contact IS NOT NULL;

SELECT * FROM autors WHERE autors.id=ANY(SELECT autor_id FROM mixes);

SELECT * FROM brends WHERE brends.id=ANY(SELECT brend_id FROM tabaco WHERE tabaco.id=ANY(SELECT tabaco_id FROM ingridients));

SELECT * FROM brends 
JOIN tabaco ON brends.id=tabaco.brend_id;

SELECT brends.name, tabaco.name FROM brends 
JOIN tabaco ON brends.id=tabaco.brend_id;

SELECT 
    brends.name AS brends_name, 
    tabaco.name AS tabaco_name 
FROM brends 
JOIN tabaco ON brends.id=tabaco.brend_id;

SELECT autors.name FROM autors 
JOIN mixes ON mixes.autor_id=autors.id;


SELECT mixes.streght FROM mixes 
JOIN autors ON mixes.autor_id=autors.id
WHERE autors.name='sveta';

SELECT goos.name FROM goos 
JOIN brends ON goos.brend_id=brends.id
WHERE brends.name='Brusko';

SELECT autors.name FROM autors
JOIN mixes ON mixes.autor_id=autors.id
JOIN ingridients ON ingridients.mix_id=mixes.id
JOIN tabaco ON ingridients.tabaco_id=tabaco.id
JOIN brends ON tabaco.brend_id=brends.id
WHERE brends.name='Spectrum';
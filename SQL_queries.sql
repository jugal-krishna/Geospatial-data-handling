DROP TABLE IF EXISTS LOCATIONS;

CREATE TABLE LOCATIONS(NAME VARCHAR (50) PRIMARY KEY, ID CHAR, points geometry);

Insert into LOCATIONS (NAME,ID, points) VALUES ('Home','H',
ST_GeomFromText('POINT(-118.28705611599317 34.032495148685626)', 4326));

Insert into LOCATIONS (NAME,ID, points) VALUES ('Village_f','F',
ST_GeomFromText('POINT(-118.28504125919468 34.02515373459346)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Cine_f','F',
ST_GeomFromText('POINT(-118.28647672594606 34.02356337200455)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Bing_f','F',
ST_GeomFromText('POINT(-118.28557404700507 34.02226072739253)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Tommy_f','F',
ST_GeomFromText('POINT(-118.28514478121505 34.02029281372925)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Viterbi_f','F',
ST_GeomFromText('POINT(-118.28913618136181 34.020535161810244)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('RTCC_f','F',
ST_GeomFromText('POINT(-118.28602347133354 34.02041142866558)', 4326));

Insert into LOCATIONS (NAME,ID, points) VALUES ('Doheny_l','L',
ST_GeomFromText('POINT(-118.28429414812493 34.02024463072921)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Accounting_l','L',
ST_GeomFromText('POINT(-118.28554314450426 34.01919846233526)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Bioinfo_l','L',
ST_GeomFromText('POINT(-118.28664797366368 34.019484846885675)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Architecture_l','L',
ST_GeomFromText('POINT(-118.28799564482847 34.01934694714565)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('SciEng_l','L',
ST_GeomFromText('POINT(-118.2888315890036 34.019824701551904)', 4326));
Insert into LOCATIONS (NAME,ID, points) VALUES ('Leavey l','L',
ST_GeomFromText('POINT(-118.28275801599352 34.02195867318104)', 4326));

-- Convex polygon

Select st_astext(ST_ConcaveHull(ST_Collect(points::geometry),1)) As polygon
FROM LOCATIONS;

--Nearest Neighbors of Home
SELECT NAME, points
FROM LOCATIONS
WHERE NAME != 'Home'
ORDER BY points <-> st_setsrid(st_makepoint(-118.28705611599317, 34.032495148685626),4326)
LIMIT 10;
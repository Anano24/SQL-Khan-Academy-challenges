/**In this project, you’re going to make your own table with some small 
set of “famous people”, then make more tables about things they do and join 
those to create nice human readable lists. Contains at least two tables with at 
least 15 rows total. One of the tables contains a column that relates to the primary key of another table.
Has at least one query that does a JOIN.*/


CREATE TABLE famous (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT, profession TEXT, country_from TEXT);

INSERT INTO famous (name, profession, country_from)
    VALUES ('Vincent Van Gogh', 'painter', 'Dutch');
INSERT INTO famous (name, profession, country_from)
    VALUES ('J K Rowling', 'Author', 'British');
INSERT INTO famous (name, profession, country_from)
    VALUES ('Billie Eilish', 'Singer', 'American');
INSERT INTO famous (name, profession, country_from)
    VALUES ('Jennifer Lawrence', 'Actor', 'American');
INSERT INTO famous (name, profession, country_from)
    VALUES ('Beyoncé', 'Singer', 'American');
INSERT INTO famous (name, profession, country_from)
    VALUES ('Jay-Z', 'Rapper', 'American');

    
CREATE TABLE profession (
id INTEGER PRIMARY KEY AUTOINCREMENT,
author_ID INTEGER, works TEXT);

INSERT INTO profession (author_ID, works) VALUES (2, 'Harry Potter series');
INSERT INTO profession (author_ID, works) VALUES (1, 'Sunflowers');
INSERT INTO profession (author_ID, works) VALUES (1, 'The Starry Night');
INSERT INTO profession (author_ID, works) VALUES (3, 'Happier Than Ever');
INSERT INTO profession (author_ID, works) VALUES (3, 'When We All Fall Asleep, Where Do We Go?');
INSERT INTO profession (author_ID, works) VALUES (4, 'The Hunger Games');
INSERT INTO profession (author_ID, works) VALUES (4, 'Dior and I');
INSERT INTO profession (author_ID, works) VALUES (5, 'Renaissance');
INSERT INTO profession (author_ID, works) VALUES (5, 'Dangerously in Love');
INSERT INTO profession (author_ID, works) VALUES (6, 'Everything Is Love with Beyoncé');
INSERT INTO profession (author_ID, works) VALUES (6, 'The Blueprint 3');


CREATE TABLE relationship (
id INTEGER PRIMARY KEY AUTOINCREMENT,
person1_ID INTEGER, person2_ID INTEGER);

INSERT INTO relationship (person1_ID, person2_ID) VALUES (5,6);

SELECT * FROM famous;
SELECT famous.name, famous.profession, profession.works 
FROM famous
LEFT OUTER JOIN profession
ON famous.id = profession.author_ID;

SELECT a.name AS wife, b.name AS husbend FROM relationship
JOIN famous a
ON a.id = relationship.person1_ID
JOIN famous b
ON b.id = relationship.person2_ID;






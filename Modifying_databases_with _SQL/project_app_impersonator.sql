/*Think about your favorite apps, and pick one that stores your data- like a game 
that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data 
in a SQL database (which is pretty likely!), and write SQL statements 
that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.*/


CREATE TABLE weather_app (
id INTEGER PRIMARY KEY AUTOINCREMENT, city TEXT, daytime TEXT, weather TEXT, temperature INTEGER);

INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Tbilisi', '30-07-2023', 'Rainy', 25);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Tbilisi', '31-07-2023', 'Sunny', 29);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Tbilisi', '01-08-2023', 'Sunny', 32);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Tbilisi', '02-08-2023', 'Sunny', 36);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Kutaisi', '31-07-2023', 'Rainy', 24);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Kutaisi', '01-08-2023', 'Sunny', 28);
INSERT INTO weather_app (city, daytime, weather, temperature) VALUES ('Kutaisi', '02-08-2023', 'Sunny', 30);

SELECT * FROM weather_app;
UPDATE weather_app SET temperature = 34
WHERE id = 4;

SELECT * FROM weather_app;

DELETE FROM weather_app
WHERE id = 7;

SELECT * FROM weather_app;





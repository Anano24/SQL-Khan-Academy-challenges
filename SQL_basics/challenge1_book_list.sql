/*Challenge: Book list database

Step 1
Create a table to store a list of books. It should have columns for id, name, and rating. 
Add three of your favorite books into the table.
Answer */


CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO books VALUES (1, "The color purple", 4.22);
INSERT INTO books VALUES (2, "Game of Thrones", 4.45);
INSERT INTO books VALUES (3, "The shining", 1.1);

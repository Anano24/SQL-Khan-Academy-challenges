/*Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want
 store to specialize in. You should have a table for all the items in your store, and at least 5 columns 
 for the kind of data you think you'd need to store. You should sell at least 15 items, and use select 
 statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE mystore (id INTEGER PRIMARY KEY, name TEXT, size TEXT, color TEXT, price INTEGER);
INSERT INTO mystore VALUES (1, "T-shirt", "S-M", "red", 30);
INSERT INTO mystore VALUES (2, "dress", "M-XL", "black", 50);
INSERT INTO mystore VALUES (3, "dress", "S-XL", "pink", 50);
INSERT INTO mystore VALUES (4, "trousers", "M", "white", 70);
INSERT INTO mystore VALUES (5, "top", "XS-M", "yellow", 30);
INSERT INTO mystore VALUES (6, "shirt", "S", "white", 40);
INSERT INTO mystore VALUES (7, "blouse", "S-M", "pink", 50);
INSERT INTO mystore VALUES (8, "trousers", "S-L", "black", 80);
INSERT INTO mystore VALUES (9, "blouse", "XL", "blue", 30);
INSERT INTO mystore VALUES (10, "skirt", "S-M", "black", 35);
INSERT INTO mystore VALUES (11, "miniskirt", "S-XL", "white", 50);
INSERT INTO mystore VALUES (12, "top", "S-M", "white", 30);
INSERT INTO mystore VALUES (13, "trousers", "M-L", "pink", 80);
INSERT INTO mystore VALUES (14, "dress", "XS-L", "black", 60);
INSERT INTO mystore VALUES (15, "shirt", "S-M", "blue", 45);

SELECT * FROM mystore;
SELECT * FROM mystore WHERE name = "skirt" and price > 30;
SELECT * FROM mystore ORDER BY price;
SELECT SUM(price) FROM mystore;


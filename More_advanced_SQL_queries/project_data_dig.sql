/*We’ve curated a set of interesting data sets for you: Top movies, Top countries by population, 
Solar system objects by size, Marvel characters, Furniture store sales, Earned KA badges, 
Winston's donut logs, Card game results, and NFL draft picks. 

Pick one of those data sets or create a data set like that, and use advanced SELECT queries to 
discover things about the data. What sort of questions might one have about that data, like if 
they were using it for an app or a business idea? Here are some ideas:

What are average, max, and min values in the data?
What about those numbers per category in the data (using HAVING)?
What ways are there to group the data values that don’t exist yet (using CASE)?
What interesting ways are there to filter the data (using AND/OR)? */

/*
Winston's Donut logs
This table of logs shows how many donuts Winston eats at each year of his life,
plus any particular reason to explain his eating habits.
Collected by: https://www.khanacademy.org/profile/mhogwarts/
 */


CREATE TABLE winstons_donut_logs (
    id TEXT PRIMARY KEY,
    status TEXT,
    years_old INTEGER,
    donuts_eaten INTEGER,
    reason TEXT
    );
INSERT INTO winstons_donut_logs VALUES (0, "new born winston lvl 0", 0, 0, "");
INSERT INTO winstons_donut_logs VALUES (1, "baby winston lvl1", 1, 10, "(Gummed)");
INSERT INTO winstons_donut_logs VALUES (2, "baby winston lvl2", 2, 40, "(Gummed)");
INSERT INTO winstons_donut_logs VALUES (3, "baby winston lvl3", 3, 50, "(Gummed)");
INSERT INTO winstons_donut_logs VALUES (4, "toddler winston lvl1", 4, 300, "");
INSERT INTO winstons_donut_logs VALUES (5, "toddler winston lvl2", 5, 400, "");
INSERT INTO winstons_donut_logs VALUES (6, "kid winston lvl1", 6, 1200, "");
INSERT INTO winstons_donut_logs VALUES (7, "kid winston lvl2", 7, 1000, "");
INSERT INTO winstons_donut_logs VALUES (8, "kid winston lvl3", 8, 1000, "");
INSERT INTO winstons_donut_logs VALUES (9, "kid winston lvl4", 9, 1000, "");
INSERT INTO winstons_donut_logs VALUES (10, "winstween lvl1", 10, 1500, "");/** tween means someone between 10 and 12 so I did winstween- tween not teen**/
INSERT INTO winstons_donut_logs VALUES (11, "winstween lvl2", 11, 500, "Braces");
INSERT INTO winstons_donut_logs VALUES (12, "winstween lvl3", 12, 300, "Braces");
INSERT INTO winstons_donut_logs VALUES (13, "winsteen lvl1", 13, 400, "Braces");
INSERT INTO winstons_donut_logs VALUES (14, "winsteen lvl2", 14, 1300, "No Braces");
INSERT INTO winstons_donut_logs VALUES (15, "winsteen lvl3", 15, 2000, "");
INSERT INTO winstons_donut_logs VALUES (16, "winsteen lvl4", 16, 2000, "");
INSERT INTO winstons_donut_logs VALUES (17, "winsteen lvl5", 17, 2000, "");
INSERT INTO winstons_donut_logs VALUES (18, "winsteen lvl6", 18, 2000, "");
INSERT INTO winstons_donut_logs VALUES (19, "winsteen lvl7", 19, 2000, "");
INSERT INTO winstons_donut_logs VALUES (20, "young adult winston lvl1", 20, 2000, "");
INSERT INTO winstons_donut_logs VALUES (21, "young adult winston lvl2", 21, 2500, "");
INSERT INTO winstons_donut_logs VALUES (22, "young adult winston lvl3", 22, 2500, "");
INSERT INTO winstons_donut_logs VALUES (23, "young adult winston lvl4", 23, 2500, "");
INSERT INTO winstons_donut_logs VALUES (24, "young adult winston lvl5", 24, 2500, "");
INSERT INTO winstons_donut_logs VALUES (25, "young adult winston lvl6", 25, 2500, "");
INSERT INTO winstons_donut_logs VALUES (26, "young adult winston lvl7", 26, 2500, "");
INSERT INTO winstons_donut_logs VALUES (27, "young adult winston lvl8", 27, 2500, "");
INSERT INTO winstons_donut_logs VALUES (28, "young adult winston lvl9", 28, 2500, "");
INSERT INTO winstons_donut_logs VALUES (29, "young adult winston lvl10", 29, 2500, "");
INSERT INTO winstons_donut_logs VALUES (30, "mature adult winston lvl1", 30, 2500, "");
INSERT INTO winstons_donut_logs VALUES (31, "mature adult winston lvl2", 31, 2500, "");
INSERT INTO winstons_donut_logs VALUES (32, "mature adult winston lvl3", 32, 2500, "");
INSERT INTO winstons_donut_logs VALUES (33, "mature adult winston lvl4", 33, 2500, "");
INSERT INTO winstons_donut_logs VALUES (34, "mature adult winston lvl5", 34, 2500, "");
INSERT INTO winstons_donut_logs VALUES (35, "mature adult winston lvl6", 35, 1500, "Healthier Eating");
INSERT INTO winstons_donut_logs VALUES (36, "mature adult winston lvl7", 36, 1500, "Healthier Eating");
INSERT INTO winstons_donut_logs VALUES (37, "mature adult winston lvl8", 37, 1500, "Healthier Eating");
INSERT INTO winstons_donut_logs VALUES (38, "mature adult winston lvl9", 38, 1500, "Healthier Eating");
INSERT INTO winstons_donut_logs VALUES (39, "mature adult winston lvl10", 39, 1500, "Healthier Eating");
INSERT INTO winstons_donut_logs VALUES (40, "middle-aged adult winston lvl1", 40, 2500, "Non-healthy eating");
INSERT INTO winstons_donut_logs VALUES (41, "middle-aged adult winston lvl2", 41, 2500, "");
INSERT INTO winstons_donut_logs VALUES (42, "middle-aged adult winston lvl3", 42, 2500, "");
INSERT INTO winstons_donut_logs VALUES (43, "middle-aged adult winston lvl4", 43, 2500, "");
INSERT INTO winstons_donut_logs VALUES (44, "middle-aged adult winston lvl5", 44, 300, "Diet");
INSERT INTO winstons_donut_logs VALUES (45, "middle-aged adult winston lvl6", 45, 200, "Diet");
INSERT INTO winstons_donut_logs VALUES (46, "middle-aged adult winston lvl7", 46, 150, "Diet");
INSERT INTO winstons_donut_logs VALUES (47, "middle-aged adult winston lvl8", 47, 150, "Diet");
INSERT INTO winstons_donut_logs VALUES (48, "middle-aged adult winston lvl9", 48, 150, "Diet");
INSERT INTO winstons_donut_logs VALUES (49, "middle-aged adult winston lvl10", 49, 150, "Diet");
INSERT INTO winstons_donut_logs VALUES (50, "old-ish adult winston lvl1", 50, 2500, "No diet");
INSERT INTO winstons_donut_logs VALUES (51, "old-ish adult winston lvl2", 51, 2500, "");
INSERT INTO winstons_donut_logs VALUES (52, "old-ish adult winston lvl3", 52, 2500, "");
INSERT INTO winstons_donut_logs VALUES (53, "old-ish adult winston lvl4", 53, 1436, "Current age");


SELECT * FROM winstons_donut_logs;
SELECT MAX(donuts_eaten) AS max_donuts_eaten FROM winstons_donut_logs;
SELECT MIN(donuts_eaten) AS min_donuts_eaten FROM winstons_donut_logs;
SELECT AVG(donuts_eaten) AS avg_donuts_eaten FROM winstons_donut_logs;
SELECT status, donuts_eaten FROM winstons_donut_logs GROUP BY donuts_eaten
HAVING donuts_eaten > 1500;

SELECT status, donuts_eaten,
CASE
    WHEN donuts_eaten >= 1000 THEN "It's normal maybe!"
    WHEN donuts_eaten >= 2000 THEN "It's too much!"
    ELSE "It's not too much"
END AS comment_about_donats
FROM winstons_donut_logs;

SELECT years_old, donuts_eaten 
FROM winstons_donut_logs
WHERE years_old <10 and donuts_eaten >100;
    





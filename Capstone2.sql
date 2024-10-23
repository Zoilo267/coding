CREATE TABLE IF NOT EXISTS nomnom (
  NAME TEXT,
  NEIGHBOURHOOD TEXT,
  CUISINE TEXT,
  REVIEW REAL,
  PRICE TEXT,
  HEALTH TEXT
);

INSERT INTO nomnom(NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES
  ("Peter", "Brooklyn", "Steak", 4.4, "$$$$", "A"),
  ("Jongro", "Midtown", "Korean", 3.5, "$$", "A"),
  ("Pocha", "Midtown", "Pizza", 4, "$$$", "B"),
  ("Lighthouse", "Queens", "Chinese", 3.9, "$", "A");


SELECT * FROM nomnom;
SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;
SELECT DISTINCT CUISINE FROM nomnom;
SELECT * FROM nomnom WHERE CUISINE = "Italian" AND PRICE = "$$$";
SELECT * FROM nomnom WHERE REVIEW >= 4;
SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;

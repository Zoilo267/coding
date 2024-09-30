CREATE TABLE suplier (
 SNO TEXT PRIMARY KEY,
 SNAME TEXT,
 STATUS INTIGER,
 CITY TEXT
);

INSERT INTO suplier(SNO, SNAME, STATUS, CITY) VALUES
 ("S1", "zoilo", 12, "Alicante"),
 ("S2", "Guy", 13, "Campello"),
 ("S3", "Ryhs", 15, "London"),
 ("S4", "Lucas", 11, "USA"),
 ("S5", "Lode", 10, "Netherlands");

SELECT * FROM suplier;
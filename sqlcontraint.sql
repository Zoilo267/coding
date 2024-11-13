CREATE TABLE  Zoilo(
serial_number INT unique,
name TEXT,
age INT not null
)
INSERT INTO Zoilo
VALUES(1136322, "Josef", 34),
(2019364, "Miguel", 23)

SELECT * FROM Zoilo

DROP TABLE Zoilo

INSERT INTO Zoilo
VALUES(126490901, "Guy", 13 )
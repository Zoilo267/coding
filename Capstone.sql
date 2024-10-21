CREATE TABLE IF NOT EXISTS Salesman (
  Salesman_id TEXT PRIMARY KEY,
  name TEXT,
  city TEXT,
  Comission REAL
);

INSERT INTO Salesman (Salesman_id, name, city, Comission)
VALUES
  ("5001", "James Hoog", "New York", 0.15),
  ("5002", "Nail Knite", "Paris", 0.13),
  ("5005", "Pit Alex", "London", 0.11),
  ("5006" , "Mc Lyon", "Paris", 0.14),
  ("5007", " Paul Adam", "Rome", 0.13),
  ("5003", "Lauson Hen", "San Jose", 0.12);

CREATE TABLE IF NOT EXISTS Customer (
  Customer_id TEXT PRIMARY KEY,
  name TEXT,
  city TEXT,
  Salesman_id TEXT,
  FOREIGN KEY (Salesman_id ) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Customer ( Customer_id, name, city, Salesman_id )
VALUES
  ("3001", "Mchoofer", "Pfi", "5001"),
  ("3002", "James is not bond", "Motorland", "5002"),
  ("3005", "Mr.Carrot", "Zuera", "5003"),
  ("3006" , "Guy", "Campillos", "5005"),
  ("3007", " Paul doesent like Aadam", "Chiva", "5006"),
  ("3003", "Hen Lauson", "Recas", "5007");

CREATE TABLE IF NOT EXISTS Orders (
  Order_id TEXT PRIMARY KEY,
  amount TEXT,
  date TEXT,
  Salesman_id TEXT,
  Customer_id TEXT,
  FOREIGN KEY (Salesman_id ) REFERENCES Salesman(Salesman_id),
  FOREIGN KEY (Customer_id ) REFERENCES Customer(Customer_id)
);

INSERT INTO Orders ( Order_id, amount, date, Salesman_id, Customer_id)
VALUES
  ("3001","150.5","1999-9-28", "5001", "3002"),
  ("3002","270.65","2011-2-23", "5002", "3004"),
  ("3005","65.26","2001-9-11", "5003", "3005"),
  ("3006" ,"110.5","2044-5-19", "5005", "3006"),
  ("3007","948.5","2014-7-31", "5006","3004"),
  ("3003","2400.6","2018-12-27", "5007", "3005");

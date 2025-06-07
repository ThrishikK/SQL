-- ACTORS SCHEMA 

DROP TABLE actors;

CREATE TABLE actors(
id INT AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
DOB DATE,
country VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO actors(id,name,DOB,country)
VALUES
	  (1,'Millie Bobby Brown','2004-02-19','Britain'),
	  (2,'Lisa Vicari','1997-02-11','German'),
    (3,'Ty Burrell','1967-08-22','America'),
    (4,'Matt LeBlanc','1967-07-25','America'),
    (5,'Michael Richards','1949-07-24','America'),
    (6,'Kennedy McMann','1996-10-30','America');
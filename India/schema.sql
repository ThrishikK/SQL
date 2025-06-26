DROP DATABASE INDIA;
CREATE DATABASE INDIA;
USE INDIA;

CREATE TABLE STATES(
  id TINYINT AUTO_INCREMENT,
  name VARCHAR(50),
  capital VARCHAR(50),
  population INT,
  largest_city VARCHAR(50),
  formation_date DATE,
  official_language VARCHAR(50),
  districts TINYINT UNSIGNED,
  PRIMARY KEY(id)
);

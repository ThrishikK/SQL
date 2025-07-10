DROP DATABASE series_and_movies;
CREATE DATABASE series_and_movies;
USE  series_and_movies;

-- ACTORS TABLE
CREATE TABLE actors(
id SMALLINT UNSIGNED AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
DOB DATE,
country VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);

-- -SERIES TABLE
CREATE TABLE series(
 id SMALLINT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    genre VARCHAR(50) NOT NULL,
    rating DECIMAL(2,1)  NOT NULL,
    creators VARCHAR(150) NOT NULL,
    no_of_episodes SMALLINT UNSIGNED NOT NULL,
    first_episode_date DATE NOT NULL,
    no_of_seasons TINYINT UNSIGNED NOT NULL,
      summary VARCHAR(600) NOT NULL,

    PRIMARY KEY(id)
);

-- STRING TRIGGER
DELIMITER $$

CREATE TRIGGER trim_strings_before_insert
BEFORE INSERT ON series
FOR EACH ROW
BEGIN
  SET NEW.name = TRIM(NEW.name);
   SET NEW.genre = TRIM(NEW.genre);
    SET NEW.creators = TRIM(NEW.creators);
 
END$$

DELIMITER ;


-- ACTORS IN SERIES TABLE
CREATE TABLE actors_in_series (
id SMALLINT UNSIGNED ,
    actor_id SMALLINT UNSIGNED,
    series_id SMALLINT UNSIGNED,
    FOREIGN KEY (actor_id)
        REFERENCES actors (id),
    FOREIGN KEY (series_id)
        REFERENCES series (id),
        PRIMARY KEY(actor_id,series_id)
);




-- Movies table
CREATE TABLE movies (
 id SMALLINT UNSIGNED AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  genre VARCHAR(100) NOT NULL,
  summary VARCHAR(300) NOT NULL,
  rating DECIMAL(2,1) NOT NULL,
  release_date DATE NOT NULL,
  director VARCHAR(50) NOT NULL,
  sequel BOOLEAN NOT NULL,
  running_time TIME NOT NULL,
  PRIMARY KEY(id)
);

-- ACTORS IN MOVIES TABLE
CREATE TABLE actors_in_movies(
id SMALLINT UNSIGNED ,
  actor_id SMALLINT UNSIGNED,
  movie_id SMALLINT UNSIGNED,
  FOREIGN KEY (actor_id) 
  REFERENCES actors(id),
  FOREIGN KEY (movie_id)
  REFERENCES movies(id),
  PRIMARY KEY(actor_id,movie_id)
);

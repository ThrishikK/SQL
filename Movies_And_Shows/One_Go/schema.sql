DROP DATABASE series_and_movies;
CREATE DATABASE series_and_movies;
USE  series_and_movies;

-- ACTORS TABLE
CREATE TABLE actors(
id INT AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
DOB DATE,
country VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);

-- -SERIES TABLE
CREATE TABLE series(
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    rating DECIMAL(2,1)  NOT NULL,
    creators VARCHAR(150) NOT NULL,
    no_of_episodes INT NOT NULL,
    first_episode_date DATE NOT NULL,
    no_of_seasons INT NOT NULL,
    PRIMARY KEY(id)
);

-- ACTORS IN SERIES TABLE
CREATE TABLE actors_in_series (
    id INT,
    actor_id INT,
    series_id INT,
    FOREIGN KEY (actor_id)
        REFERENCES actors (id),
    FOREIGN KEY (series_id)
        REFERENCES series (id),
        PRIMARY KEY(actor_id,series_id)
);




-- Movies table
CREATE TABLE movies (
  id INT AUTO_INCREMENT,
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
  id INT,
  actor_id INT,
  movie_id INT,
  FOREIGN KEY (actor_id) 
  REFERENCES actors(id),
  FOREIGN KEY (movie_id)
  REFERENCES movies(id),
  PRIMARY KEY(actor_id,movie_id)
);

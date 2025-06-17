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

INSERT INTO actors_in_movies
(id,actor_id,movie_id)
VALUES 
(1,1,1),
		(2,3,2),
		(3,10,3),
		(4,12,4),
		(5,9,5),
		(6,7,6),
    (7,2,7),
    (8,4,3),
    (9,8,2),
    (10,5,4),
    (11,1,11)
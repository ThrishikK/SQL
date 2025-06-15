DROP TABLE movies;

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

INSERT INTO movies
(id,name,genre,summary,rating,release_date,director,sequel,running_time)
VALUES 
(1,'Enola Holmes',' Mystery, Adventure, Action, Crime film, Drama, Thriller, crime fiction',"While searching for her missing mother, intrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runaway lord.
",6.6,'2020-09-23','Harry Bradbeer',FALSE,'02:03'),
(2,'The Incredible Hulk','Action/Sci-fi','Dr Bruce Banner subjects himself to high levels of gamma radiation, which triggers his transformation into a huge green creature, the Hulk, whenever he experiences negative emotions such as anger.
',6.6,'2008-06-20','Louis Leterrier',FALSE,'01:52'),
(3,'Analyze This','Comedy/Crime','Ben Sobol, a psychologist, faces several problems in his personal life. One day, when he crashes into a mob boss\'s car, the dangerous criminal pays him a visit and shares his inner conflicts with him.
',6.7,'1999-03-05',' Harold Ramis',FALSE,'01:43')




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
',6.7,'1999-03-05',' Harold Ramis',FALSE,'01:43'),
(4,'Zoolander','Comedy','Derek, a model, loses hope when his rival wins a coveted title. In a bid to revive his career, a designer offers him a runway show but ends up convincing him to kill the prime minister of Malaysia.',6.5,'2001-09-28','Ben Stiller',TRUE,'01:29'
),
(5,'Man of Steel','Action/Sci-fi','Clark learns about the source of his abilities and his real home when he enters a Kryptonian ship in the Artic. However, an old enemy follows him to Earth in search of a codex and brings destruction.
',7.1,'2013-06-14','Zack Snyder',TRUE,'02:23'),
(6,'Reality Bites','Comedy/Romance','Lelaina, Troy, Vickie and Sammy are friends who stay together. Lelaina wants be a filmmaker and makes her friends act for her film. Life gets complex when they have to handle career, love and family.
',6.6,'1994-02-18','Ben Stiller',FALSE,'01:39'),
(7,'Isi & Ossi','Comedy/Romance','They couldn\'t be any more different: Isi (20) is a billionaire\'s daughter from posh Heidelberg, Ossi (23) lives in the nearby working-class town of Mannheim, raised by his poor, struggling single mother.
',6.4,'2020-02-11','Oliver Kienle',FALSE,'01:53'),
(8,'Charlie\'s Angels: Full Throttle','Action/Comedy','The Angels carry out an investigation of a sequence of murders which take place after the theft of the contents of a profile database related to FBI\'s witness protection programme.
',4.9,'2003-07-27','Joseph McGinty Nichol',FALSE,'01:46'),
(9,'Identity Thief','Comedy/Crime','Sandy Patterson, a businessman from Denver, learns that someone has stolen his identity in Florida. He decides to travel to Florida to bring the person to justice, but his plans soon take a back seat.
',5.7,'2013-02-08','Seth Gordon',FALSE,'01:51'),
(10,'Trial and Error','Comedy/Romance','After a drinking spree, lawyer Charlie Tuttle fails to turn up for an important hearing. His friend Richard poses as Charlie to take his place in court. But Richard has no idea about being a lawyer.',.8,'1997-05-30','Jonathan Lynn',FALSE,'01:38'),
(11,'Godzilla: King of the Monsters','Action/Sci-fi','A legendary monster named King Ghidorah awakens Rodan, as well as other titans, to destroy the world. To defeat them, the crypto-zoological organisation Monarch must rely on the almighty Godzilla.
',6,'2019-05-31','Michael Dougherty',TRUE,'02:05');





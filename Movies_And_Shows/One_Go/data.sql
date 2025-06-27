-- ACTORS TABLE 

INSERT INTO actors(id,name,DOB,country)
VALUES
	  (1,'Millie Bobby Brown','2004-02-19','Britain'),
	  (2,'Lisa Vicari','1997-02-11','German'),
    (3,'Ty Burrell','1967-08-22','America'),
    (4,'Matt LeBlanc','1967-07-25','America'),
    (5,'Michael Richards','1949-07-24','America'),
    (6,'Kennedy McMann','1996-10-30','America'),
    (7,'Winona Ryder','1971-10-29','America'),
    (8,'Eric Stonestreet','1971-09-09','America'),
    (9,'Antje Traue','1981-01-18','German'),
    (10,'Lisa Kudrow','1963-07-30','America'),
    (11,'Alex Saxon','1987-09-10','America'),
    (12,'Jerry Stiller','1927-06-08','America'),
    (13,'Steve Carell','1962-08-16','America'),
    (14,'Craig Robinson','1971-10-25','America'),
    (15,'Andy Samberg','1978-07-18','America'),
    (16,'Stephanie Beatriz','1981-02-10','Argentine'),
    (17,'Jim Parsons','1973-03-24','America'),
    (18,'Brian George','1952-07-01','British'),
    (19,'Matthew McConaughey','1969-11-04','America'),
    (20,'Jodie Foster','1962-11-19','America'),
    (21,'David Denman','1973-07-25','America'),
    (22,'Guy Pearce','1967-10-05','British'),
    (23,'Courteney Cox','1964-06-15','America'),
    (24,'Jennifer Aniston','1969-02-11','America'),
    (25,'Philip Baker Hall','1931-09-10','America'),
    (26,'Kevin Spacey','1959-07-26','America');


-- SERIES TABLE

INSERT INTO 
    series
		(id,name,genre,rating,creators,no_of_episodes,first_episode_date,no_of_seasons)
    VALUES
		    (1,'Stranger Things','Horror',8.6,'Matt Duffer,Ross Duffer',34,'2016-07-15',4),
        (2,'Dark','Thriller',8.7,'Baran bo Odar, Jantje Friese',26,'2017-12-01',3),
        (3,'Modern Family','Sitcom',8.5,'Christopher Lloyd, Steven Levitan',250,'2009-09-23',11),
        (4,'Friends','Sitcom',8.9,'Marta Kauffman, David Crane',236,'1994-09-22',10),
        (5,'Seinfeld','Sitcom',8.9,'Jerry Seinfeld, Larry David',180,'1989-07-05',9),
        (6,'Nancy Drew','Thriller',6.7,'Edward Stratemeyer',62,'2019-10-09',4),
        (7,'The Office','Sitcom',9,'Greg Daniels; Ricky Gervais',201,'2005-03-24',9),
        (8,'Brooklyn Nine-Nine','Sitcom',8.4,'Michael Schur, Dan Goor, Carly Hallam, Norm Hiscock',153,'2013-09-17',8),
        (9,'The Big Bang Theory','Sitcom',8.1,'Chuck Lorre, Bill Prady',279,'2007-09-24',12),
        (10,'True Detective','Drama',8.9,' Nic Pizzolatto, Issa López',30,'2014-01-12',4),
        (11,'Mare of Easttown','Drama',8.4,'Brad Ingelsby',7,'2021-04-18',1);

    -- ACTORS IN SERIES TABLE
    
INSERT INTO 
	actors_in_series
		(id,actor_id,series_id)
    VALUES
		(1,1,1),
		(2,2,2),
		(3,3,3),
		(4,4,4),
		(5,5,5),
		(6,6,6),
    (7,7,1),
    (8,8,3),
    (9,9,2),
    (10,10,4),
    (11,11,6),
        (12,12,5),
        (13,1,3),
        (14,13,7),
        (15,14,7),
        (16,14,8),
        (17,15,8),
        (18,16,3),
        (19,16,8),
        (20,17,9),
        (21,18,5),
        (22,18,9),
        (23,19,10),
        (24,20,10),
        (25,21,7),
        (26,21,11),
        (27,22,11),
        (28,23,4),
        (29,23,5),
        (30,23,3),
        (31,24,4),
        (32,25,3),
        (33,25,5);
        
    -- MOVIES TABLE
    
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
(10,'Trial and Error','Comedy/Romance','After a drinking spree, lawyer Charlie Tuttle fails to turn up for an important hearing. His friend Richard poses as Charlie to take his place in court. But Richard has no idea about being a lawyer.',5.8,'1997-05-30','Jonathan Lynn',FALSE,'01:38'),
(11,'Godzilla: King of the Monsters','Action/Sci-fi','A legendary monster named King Ghidorah awakens Rodan, as well as other titans, to destroy the world. To defeat them, the crypto-zoological organisation Monarch must rely on the almighty Godzilla.
',6,'2019-05-31','Michael Dougherty',TRUE,'02:05'),
(12,'Interstellar','Sci-fi/Adventure','When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.',8.7,'2014-11-07','Christopher Nolan',FALSE,'02:49'),
(13,'Crazy, Stupid, Love','Romance/Drama','Cal, a middle-aged man, is heartbroken when his wife asks for a divorce. However, to get over his loss, he starts picking up women at a bar on the insistence of his new-found friend, Jacob.',7.4,'2011-09-16',' Glenn Ficarra, John Requa',FALSE,'01:48'),
(14,'L.A. Confidential','Crime/Thriller','Three detectives from Los Angeles Police Department investigate multiple homicides. While unearthing the evidence and the suspects, the trail leads to corruption in their own department.
',8.2,'1997-09-19','Curtis Hanson',FALSE,'02:18'),
(15,'Bruce Almighty','Comedy/Fantasy','Bruce, a TV reporter, is dissatisfied with his life despite his professional popularity and the love of his girlfriend. He denigrates God, who then gives Bruce divine powers to run the world.',6.8,'2003-05-23','Tom Shadyac',FALSE,'01:41'),
(16,'American Beauty','Comedy/Romance','Lester\'s life seems perfect, having a respectable job and a family, but inside, he is slowly slipping into depression. Struggling with life, he gets infatuated with his daughter\'s friend, Angela.',8.3,'1999-09-17','Sam Mendes',FALSE,'02:02');


-- ACTORS IN MOVIES TABLE

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
    (11,1,11),
    (12,19,12),
    (13,13,13),
    (14,22,14),
    (15,24,15),
    (16,13,15),
    (17,25,15),
    (18,26,14),
    (19,26,16);

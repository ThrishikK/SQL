DROP TABLE series;

CREATE TABLE series(
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    rating DECIMAL(2,1)  NOT NULL,
    creators VARCHAR(150) NOT NULL,
    no_of_episodes INT NOT NULL,
    first_episode_date DATE NOT NULL,
    no_of_seasos INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO 
    series
		(id,name,genre,rating,creators,no_of_episodes,first_episode_date,no_of_seasos)
    VALUES
		    (1,'Stranger Things','Horror',8.6,'Matt Duffer,Ross Duffer',34,'2016-07-15',4),
        (2,'Dark','Thriller',8.7,'Baran bo Odar, Jantje Friese',26,'2017-12-01',3),
        (3,'Modern Family','Sitcom',8.5,'Christopher Lloyd, Steven Levitan',250,'2009-09-23',11),
        (4,'Friends','Sitcom',8.9,'Marta Kauffman, David Crane',236,'1994-09-22',10),
        (5,'Seinfeld','Sitcom',8.9,'Jerry Seinfeld, Larry David',180,'1989-07-05',9),
        (6,'Nancy Drew','Thriller',6.7,'Edward Stratemeyer',62,'2019-10-09',4);

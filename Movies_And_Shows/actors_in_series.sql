DROP TABLE actors_in_series;

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
        (12,12,5);

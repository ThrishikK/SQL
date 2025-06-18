When you forget "," between selected columns

SELECT actors.name actors.DOB,series.first_episode_date FROM actors
    JOIN actors_in_series
     ON actors.id = actors_in_series.actor_id
     JOIN series
     ON actors_in_series.series_id = series.id
;

ERROR 1064 (42000): You have an error in your SQL syntax; check 
the manual that corresponds to your MySQL server version 
for the right syntax to use near '.DOB,series.first_episode_date FROM actors
JOIN actors_in_series     ON actor' at line 1
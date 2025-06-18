-- JOINING THREE TABLES

 SELECT actors.name,series.name,series.rating FROM actors
      JOIN actors_in_series    
      ON actors.id = actors_in_series.actor_id     
      JOIN series     
      ON actors_in_series.series_id = series.id;

-- GROUPING BY SERIES NAME TO GET ACTORS COUNT

SELECT series.name,COUNT(*) AS Actors_Count FROM actors
    JOIN actors_in_series
     ON actors.id = actors_in_series.actor_id
     JOIN series
     ON actors_in_series.series_id = series.id
     GROUP BY series.name;


-- AGE AT FIRST EPISODE AIRED

 SELECT series.id,series.name AS Series_Name,
 actors.name AS Actor_Name,actors.DOB,series.first_episode_date,
CONCAT( ROUND( DATEDIFF(series.first_episode_date,actors.DOB)/365 ),'-Years && ',
DATEDIFF(series.first_episode_date,actors.DOB)%365,'-Days' ) AS Age_At_First_Ep_Aired
  FROM actors
      JOIN actors_in_series    
      ON actors.id = actors_in_series.actor_id     
      JOIN series     
      ON actors_in_series.series_id = series.id
      ORDER BY Age_At_First_Ep_Aired DESC;

-- Cartesian Explosion
SELECT 
    actors.name AS actor, series.name AS series,movies.name AS movie
FROM
    actors
        JOIN
    actors_in_series ON actors.id = actors_in_series.actor_id
        JOIN
    series ON actors_in_series.series_id = series.id
        JOIN
    actors_in_movies ON actors.id = actors_in_movies.actor_id
        JOIN
    movies ON actors_in_movies.movie_id = movies.id


-- ACTORS MOVIES AND SERIES COMMA SEPARATED QUERY
SELECT actors.name AS actor_name,
GROUP_CONCAT(DISTINCT series.name) AS series_name,
GROUP_CONCAT(DISTINCT movies.name) AS movie_name
 FROM actors
LEFT JOIN actors_in_series
ON actors.id = actors_in_series.actor_id
LEFT JOIN series 
ON actors_in_series.series_id = series.id
LEFT JOIN actors_in_movies
ON actors.id = actors_in_movies.actor_id
LEFT JOIN movies 
ON actors_in_movies.movie_id = movies.id
GROUP BY actor_name;
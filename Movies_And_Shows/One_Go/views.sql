CREATE OR REPLACE VIEW actors_series_joint AS
    SELECT 
        actors.id AS actor_id,
        actors.name AS actor_name,
        actors.DOB AS actor_dob,
        country,
        series.id AS series_id,
        series.name AS series_name,
        genre,
        rating,
        no_of_episodes,
        no_of_seasons
    FROM
        actors
            LEFT JOIN
        actors_in_series ON actors.id = actors_in_series.actor_id
            LEFT JOIN
        series ON actors_in_series.series_id = series.id;
   

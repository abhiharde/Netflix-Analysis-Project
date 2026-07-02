
  create or replace   view MOVIELENS.RAW.src_movies
  
  
  
  
  as (
    WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_MOVIES
)
SELECT
    movieID as movie_id,
    title,
    genres
FROM raw_movies
  );


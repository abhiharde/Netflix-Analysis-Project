
  create or replace   view MOVIELENS.RAW.src_links
  
  
  
  
  as (
    WITH raw_links AS (
    SELECT * FROM MOVIELENS.RAW.RAW_LINKS
)
SELECT
    movieID AS movie_id,
    imdbID AS imdb_id,
    tmdbID AS tmdb_id
FROM raw_links
  );


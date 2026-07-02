
  
    

create or replace transient table MOVIELENS.RAW.mart_movie_releases
    
    
    
    as (

WITH fct_ratings AS (
    SELECT * FROM MOVIELENS.RAW.fct_ratings
),

seed_dates AS (
    SELECT * FROM MOVIELENS.RAW.seed_movie_release_dates
)

SELECT
    f.*,
    CASE
        WHEN d.release_date IS NULL THEN 'Unknown'
        ELSE 'Known'
    END AS release_info_available
FROM fct_ratings f
LEFT JOIN seed_dates d
ON f.movie_id = d.movie_id
    )
;


  
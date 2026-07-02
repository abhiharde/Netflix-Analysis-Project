
  
    

create or replace transient table MOVIELENS.RAW.ep_movie_with_tags
    
    
    
    as (WITH  __dbt__cte__dim_movies_with_tags as (


WITH movies AS (
    SELECT * FROM MOVIELENS.RAW.dim_movies
), 

tags AS (
    SELECT * FROM MOVIELENS.RAW.dim_genome_tags
),

scores AS (
    SELECT * FROM MOVIELENS.RAW.fct_genome_scores
)

SELECT 
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_id,
    t.tag_name,
    s.relevance_score
FROM movies m
LEFT JOIN scores s ON m.movie_id = s.movie_id
LEFT JOIN tags t ON s.tag_id = t.tag_id
), fct_movie_with_tags AS (
    SELECT * FROM __dbt__cte__dim_movies_with_tags
)

SELECT * FROM fct_movie_with_tags
    )
;


  
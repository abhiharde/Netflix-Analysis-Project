
  
    

create or replace transient table MOVIELENS.RAW.dim_users
    
    
    
    as (WITH ratings AS (
    SELECT DISTINCT user_id FROM MOVIELENS.RAW.src_ratings
),

tags AS (
    SELECT DISTINCT user_id FROM MOVIELENS.RAW.src_tags
)

SELECT DISTINCT user_id 
FROM (
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
)
    )
;


  
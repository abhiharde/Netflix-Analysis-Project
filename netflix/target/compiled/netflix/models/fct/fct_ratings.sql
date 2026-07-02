

WITH src_ratings AS (
    SELECT * FROM MOVIELENS.RAW.src_ratings
)

SELECT
    user_id,
    movie_id,
    rating,
    rating_timestamp
FROM src_ratings
WHERE rating IS NOT NULL AND rating > 0


    AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM MOVIELENS.RAW.fct_ratings)

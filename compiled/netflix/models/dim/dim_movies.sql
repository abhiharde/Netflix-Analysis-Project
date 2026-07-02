WITH src_movies AS (
    SELECT * FROM MOVIELENS.RAW.src_movies
)
SELECT
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS genres_array,
    genres
FROM src_movies
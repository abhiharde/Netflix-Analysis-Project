-- This SQL query retrieves the top 20 movies with the highest average rating, 
-- considering only those movies that have received at least 100 ratings. 
--It joins the ratings summary with the movie details to provide a comprehensive view of the top-rated movies.

WITH ratings_summary AS (
  SELECT
    movie_id,
    AVG(rating) AS average_rating,
    COUNT(*) AS total_ratings
  FROM MOVIELENS.RAW.fct_ratings
  GROUP BY movie_id
  HAVING COUNT(*) > 100 -- Only movies with at least 100 ratings
)
SELECT
  m.movie_title,
  rs.average_rating,
  rs.total_ratings
FROM ratings_summary rs
JOIN MOVIELENS.RAW.dim_movies m ON m.movie_id = rs.movie_id
ORDER BY rs.average_rating DESC
LIMIT 20; -- Top 20 movies with the highest average rating
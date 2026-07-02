-- Top 20 highest-rated movies with at least 100 ratings from the MovieLens dataset.
-- Co-authored with CoCo

WITH ratings_summary AS (
  SELECT
    movie_id,
    AVG(rating) AS average_rating,
    COUNT(*) AS total_ratings
  FROM MOVIELENS.RAW.FCT_RATINGS
  GROUP BY movie_id
  HAVING COUNT(*) > 100 -- Only movies with at least 100 ratings
)
SELECT
  m.movie_title,
  rs.average_rating,
  rs.total_ratings
FROM ratings_summary rs
JOIN MOVIELENS.RAW.DIM_MOVIES m ON m.movie_id = rs.movie_id
ORDER BY rs.average_rating DESC
LIMIT 20 -- Top 20 movies with the highest average rating

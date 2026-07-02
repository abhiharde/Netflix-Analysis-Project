

WITH RAW_TAGS AS (
    SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)
SELECT
    userID AS user_id,
    movieID AS movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
FROM RAW_TAGS
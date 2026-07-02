WITH raw_genome_scores AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES
)
SELECT
    movieID AS movie_id,
    tagID AS tag_id,
    relevance
FROM raw_genome_scores

-- SELECT
--     movie_id,
--     tag_id,
--     relevance_score
-- FROM MOVIELENS.RAW.fct_genome_scores
-- WHERE relevance_score <= 0



    SELECT * FROM MOVIELENS.RAW.fct_genome_scores
    WHERE 
    
        MOVIE_ID IS NULL OR
    
        TAG_ID IS NULL OR
    
        RELEVANCE_SCORE IS NULL OR
    
    FALSE

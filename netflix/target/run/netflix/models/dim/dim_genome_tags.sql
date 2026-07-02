
  
    

create or replace transient table MOVIELENS.RAW.dim_genome_tags
    
    
    
    as (WITH src_tags AS (
    SELECT * FROM MOVIELENS.RAW.src_genome_tags
)

SELECT
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM src_tags
    )
;


  
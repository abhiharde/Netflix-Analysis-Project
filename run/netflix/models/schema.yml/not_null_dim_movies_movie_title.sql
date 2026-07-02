
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select movie_title
from MOVIELENS.RAW.dim_movies
where movie_title is null



  
  
      
    ) dbt_internal_test
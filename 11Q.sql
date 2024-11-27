 select * from `tech layoffs`;
 
 select monthname(date_layoffs) as Monthly_layoffs, sum(laid_off) as Total_layoffs from `tech layoffs` 
 Group by Monthly_layoffs ;
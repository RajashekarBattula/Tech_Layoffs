select * from `tech layoffs`;

select year(date_layoffs) as Lay_off_Year, sum(laid_off) as Total_layoffs from `tech layoffs`
group by Lay_off_Year;
-- country wise no of lay_offs
select * from `tech layoffs`;

select country, sum(Date_layoffs) as total_layoffs from `tech layoffs` 
group by country order by total_layoffs desc;
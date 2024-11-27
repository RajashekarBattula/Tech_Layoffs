-- Layoffs by Region: North America leads with 60% of total layoffs.

select * from `tech layoffs`;

with Lay_off_percentage as (
select *, sum(laid_offs) over() Total_Layoffs from (
select continent, sum(laid_off) as Laid_offs from `tech layoffs`
group by continent ) t1
)
select continent, Laid_offs, concat(round((laid_offs/Total_Layoffs)*100,2),"%") as Lay_off_percent from Lay_off_percentage
order by laid_offs desc ;




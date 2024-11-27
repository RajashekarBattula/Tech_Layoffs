select * from `tech layoffs`;
use raaj;

--  cleaning and transformation 

select sum(laid_off) As Total_Layoffs from `tech layoffs`;

select distinct stage from `tech layoffs` ;

update `tech layoffs` set stage = 'Private Equity' where stage = 'Private Equity â€¦';

update `tech layoffs` set stage = 'Subsidi' where stage = 'Subsidiâ€¦';

update `tech layoffs` set stage = 'Private' where stage = 'Private â€¦';

-- 01 Layoffs by Region: 
select * from `tech layoffs`;
with Lay_off_percentage as (
select *, sum(laid_offs) over() Total_Layoffs from (
select continent, sum(laid_off) as Laid_offs from `tech layoffs`
group by continent ) t1
)
select continent, Laid_offs, concat(round((laid_offs/Total_Layoffs)*100,2),"%") as Lay_off_percent from Lay_off_percentage
order by laid_offs desc ;

-- 02 Layoffs by Industry 
select * from `tech layoffs`;
select industry, sum(laid_off) as Lay_offs from `tech layoffs` 
group by industry order by lay_offs desc;

-- 03 Company Size & Layoffs: 
select * from `tech layoffs`;
select company, sum(Company_Size_before_Layoffs) as Total_Company_size, sum(Laid_Off) as Lay_offs from `tech layoffs`
group by company order by Total_Company_size ;

-- 04 relation between Financial Health and lays_offs
select * from `tech layoffs`;
select company, sum(Money_Raised_in_$_mil) as Financial_health, sum(Laid_Off) as Total_lay_offs 
from `tech layoffs` group by company order by Financial_health ;

-- 05 country wise no of lay_offs
select * from `tech layoffs`;
select country, sum(Date_layoffs) as total_layoffs from `tech layoffs` 
group by country order by total_layoffs desc;


-- 06 lay_offs by the stage of the company
select * from `tech layoffs`;
select stage, sum(laid_off) as Lay_offs from `tech layoffs`
group by stage 	order by Lay_offs desc;


-- 07 size of the company before and after lay_offs
select * from `tech layoffs`;
select sum(Company_Size_before_Layoffs) as Company_size_before_layoff, sum(Company_Size_after_layoffs) as Company_size_After_layoff
from `tech layoffs`;

-- 08 total no of layoffs 
select * from `tech layoffs`;
select sum(laid_off) as Total_layoffs from `tech layoffs`;


-- 09 year wise total_layoffs
select * from `tech layoffs`;
select year(date_layoffs) as Lay_off_Year, sum(laid_off) as Total_layoffs from `tech layoffs`
group by Lay_off_Year;


-- 10 month wise total Layoffs
 select * from `tech layoffs`;
 select monthname(date_layoffs) as Monthly_layoffs, sum(laid_off) as Total_layoffs from `tech layoffs` 
 Group by Monthly_layoffs ;



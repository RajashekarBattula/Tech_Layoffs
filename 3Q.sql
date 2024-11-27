-- Layoffs by Industry 
select * from `tech layoffs`;

select industry, sum(laid_off) as Lay_offs from `tech layoffs` 
group by industry order by lay_offs desc;
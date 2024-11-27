-- lay_offs by the stage of the company

select * from `tech layoffs`;

select stage, sum(laid_off) as Lay_offs from `tech layoffs`
group by stage 	order by Lay_offs desc;
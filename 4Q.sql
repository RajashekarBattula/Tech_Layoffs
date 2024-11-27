-- Company Size & Layoffs: 
select * from `tech layoffs`;

select company, sum(Company_Size_before_Layoffs) as Total_Company_size, sum(Laid_Off) as Lay_offs from `tech layoffs`
group by company;

select * from `tech layoffs` where company = "zulily";
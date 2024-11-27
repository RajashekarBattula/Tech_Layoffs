-- size of the company before and after lay_offs

select * from `tech layoffs`;

select sum(Company_Size_before_Layoffs) as Company_size_before_layoff, sum(Company_Size_after_layoffs) as Company_size_After_layoff
from `tech layoffs`;
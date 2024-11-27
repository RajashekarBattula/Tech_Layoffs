-- relation between Financial Health and lays_offs

select * from `tech layoffs`;

select company, sum(Money_Raised_in_$_mil) as Financial_health, sum(Laid_Off) as Total_lay_offs 
from `tech layoffs` group by company order by Financial_health ;
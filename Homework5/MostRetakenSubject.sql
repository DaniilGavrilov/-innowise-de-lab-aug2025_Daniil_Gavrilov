-- Наиболее пересдаваемый предмет
select ds.name as subject_name, 
	   count(*) as retake_count
from fact_retake fr
join dim_subject ds
on fr.subject_sk = ds.subject_sk
group by ds.name
order by retake_count desc
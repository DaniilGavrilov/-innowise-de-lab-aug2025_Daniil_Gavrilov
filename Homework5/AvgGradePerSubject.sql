-- средняя оценка по предметам
select ds.name as subject_name,
	   avg(fr.grade) as average_grade,
	   count(*) as total_retakes
from fact_retake fr
join dim_subject ds
on fr.subject_sk = ds.subject_sk
group by ds.name
order by average_grade desc
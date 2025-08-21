-- Преподаватели с наибольшим кол-вом пересдач
select p.first_name,
       p.last_name,
       count(*) as retakes_conducted
from fact_retake fr
join dim_professor p on fr.professor_sk = p.professor_sk
group by p.first_name, p.last_name
order by retakes_conducted desc;
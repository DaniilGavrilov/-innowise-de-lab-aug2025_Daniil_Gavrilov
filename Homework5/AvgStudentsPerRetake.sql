-- Среднее кол-во студентов на пересдаче
select avg(students_count) as average_students_per_retake
from fact_retake;
SELECT * FROM homework_5.academic_record;
/*Получить информацию об оценках Пети по физике по четвертям:
1. текущая успеваемость
2. оценка в следующей четверти
3. оценка в предыдущей четверти*/
select  name, subject,lag(grade, 1, 0)
over(
partition by name
order by subject desc) as 'оценка в предыдущей четверти',
grade as 'текущая', 
lead(grade, 1, 0)
over(
partition by name
order by subject desc) as 'оценка в следующей четверти'
from academic_record
where name =  'Петя' and subject='физика'
;
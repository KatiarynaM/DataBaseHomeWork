create database if not exists homework_5;
use homework_5;



CREATE TABLE academic_record (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  quartal INT,
  subject VARCHAR(50),
  grade INT
);

INSERT INTO academic_record (name, quartal, subject, grade) VALUES
('Петя', 1, 'физика', 5),
('Петя', 1, 'математика', 4),
('Петя', 2, 'физика', 3),
('Петя', 2, 'математика', 4),
('Петя', 3, 'физика', 4),
('Петя', 3, 'математика', 5),
('Вася', 1, 'физика', 2),
('Вася', 1, 'математика', 3),
('Вася', 2, 'физика', 4),
('Вася', 2, 'математика', 4),
('Маша', 3, 'математика', 5),
('Маша', 1, 'физика', 2),
('Маша', 1, 'математика', 3),
('Маша', 2, 'физика', 4),
('Маша', 2, 'математика', 4);

/*Получить информацию об оценках Пети по физике по четвертям:
1. текущая успеваемость*/
select  name, subject, grade
over(
partition by subject)
from academic_record;

/*2. оценка в следующей четверти*/
/*3. оценка в предыдущей четверти*/


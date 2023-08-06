/*Таблица staff для заданий*/

CREATE TABLE staff
(
id int primary key auto_increment not null,
firstname varchar(40) not null,
lastname varchar(40) not null,
post varchar(40) not null,
seniority int,
salary int,
age int not null
);
select * from staff;

insert into staff 
values (null, 'Вася', 'Петров', 'Начальник', '40', 100000, 60),
(null,'Петр', 'Власов', 'Начальник', '8', 70000, 30),
(null,'Катя', 'Катина', 'Инженер', '2', 70000, 19),
(null,'Саша', 'Сасин', 'Инженер', '12', 50000, 35),
(null,'Иван', 'Иванов', 'Рабочий', '40', 30000, 59),
(null,'Петр', 'Петров', 'Рабочий', '20', 25000, 40),
(null,'Сидр', 'Сидоров', 'Рабочий', '10', 20000, 35),
(null,'Антон', 'Антонов', 'Рабочий', '8', 19000, 28),
(null,'Юрий', 'Юрков', 'Рабочий', '5', 15000, 25),
(null,'Максим', 'Максимов', 'Рабочий', '2', 11000, 22),
(null,'Юрий', 'Галкин', 'Рабочий', '3', 12000, 24),
(null,'Людмила', 'Маркина', 'Уборщик', '10', 10000, 49);

select * from staff;

/*1. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания*/

select * from staff
order by salary desc;

select * from staff
order by salary;

/*2. Выведите 5 максимальных заработных плат (salary)*/

select * from staff
order by salary desc limit 5;

/*3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)*/

select post, sum(salary) as 'суммарная зарплата' from staff
 group by post;

/*4. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте
 от 24 до 49 лет включительно.*/
 
select count(*)  as 'кол-во сотрудников с специальностью  «Рабочий» в возрасте
 от 24 до 49 лет включительно' from staff
where post= 'Рабочий' and age between 24 and 49;
 
/*5. Найдите количество специальностей*/
 
 select count(distinct post) as 'количество специальностей' from staff;
 
 
/*6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет*/

select post, avg(age) as 'средний возраст сотрудников' from staff
 group by post
 having avg(age) < 30;


/*Используя операторы языка SQL, создайте табличку “sales”. */

create table sales(
id int primary key auto_increment not null,
order_date date not null,
count_product int
);
select * from sales;
/*Заполните ее данными*/

insert into sales (order_date, count_product) 
values ('2022-01-01',156),('2022-01-02',180),('2022-01-03',21),('2022-01-04',124),('2022-01-05',341);

/*Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
 меньше 100 - Маленький заказ от 100 до 300 - Средний заказ больше 300 - Большой заказ*/
 
 SELECT
id,
CASE 
WHEN count_product < 100  THEN 'маленький'
WHEN count_product between 100 and 300 THEN 'средний'
WHEN count_product >300 THEN 'большой'
ELSE 'Не понятно'
END AS 'Тип заказа'
FROM sales;

--1. Вывести все поля и все строки
select*
from students;

-- 2. Вывести всех студентов в таблице
select user
from students;

--3. Вывести только Id пользователей
select id
from students;

--4. Вывести только имя пользователей
select name
from students;

-- 5. Вывести только email пользователей
select email
from students;

--6. Вывести имя и email пользователей
select name,email
from students;

--7. Вывести id, имя, email и дату создания пользователей
select id,name,email,created_on
from students;

--  8. Вывести пользователей где password 12333
select*
from students
where password ='12333';

--9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select*
from students
where created_on ='2021-03-26 00:00:00';

--10. Вывести пользователей где в имени есть слово Анна
select*
from students
where name ='Анна';

--11. Вывести пользователей где в имени в конце есть 8
select*
from students
where like name ='%8';

--12. Вывести пользователей где в имени в есть буква а
select*
from students
where name ='%a%';

--13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select*
from students
where created_on= '2021-07-12 00:00:00';

--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select password
from students
where created_on= '2021-07-12 00:00:00' and password = '1m313';

--15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name, created_on
from students
where created_on ='2021-07-12 00:00:00' and name = 'Andrey';

--16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name, created_on
from students
where created_on = '2021-07-12 00:00:00' and  name ='8';

-- 17. Вывести пользователя у которых id равен 110
select id
from students 
where  ID = '110';

-- 18. Вывести пользователя у которых id равен 153
select id
from students 
where  ID = '153';

--19. Вывести пользователя у которых id больше 140
select id, name 
from students 
where  ID >'140';
--20. Вывести пользователя у которых id меньше 130
select id, name
from students 
where  ID <'130';

-- 21. Вывести пользователя у которых id меньше 127 или больше 188
select id, name
from students 
where  ID <'127' or id> '188';

--22. Вывести пользователя у которых id меньше либо равно 137
select id, name
from students 
where  ID <= '137';

--23. Вывести пользователя у которых id больше либо равно 137
select id, name
from students 
where  ID >= '137';

--24. Вывести пользователя у которых id больше 180 но меньше 190
select id, name
from students 
where  ID >'180'limit 10;

-- 25. Вывести пользователя у которых id между 180 и 190
select id, name
from students 
where id between 180 and 190;

--  26. Вывести пользователей где password равен 12333, 1m313, 123313
select password, name
from students 
where password = '12333, 1m313, 123313';

-- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name, created_on
from students 
where created_on = '2020-10-03 00:00:00'
union 
select name, created_on
from students 
where created_on = '2021-05-19 00:00:00'
union 
select name, created_on
from students 
where created_on = '2021-03-26 00:00:00';

--28. Вывести минимальный id 
select MIN (ID)
from students;

-- 29. Вывести максимальный.
select MAX (ID)
from students;

-- 30. Вывести количество пользователей
select COUNT (name)
from students;

-- 31. Вывести id пользователя, имя, дату создания пользователя. 
select distinct id, name, created_on
from students;

--32 Сортировка всех пользователей по убыванию
select*
From students 
order by id DESC;

-- 33 сортировка по двум столбам одноврменно 
select id, name 
From students 
order by id, name ;

--34 Сортировка всех пользователей по возрастаию
select*
From students 
order by id ASC;

--35 Сортировка id по возрастанию, а name по убыванию
select id, name 
From students 
order by id ASC, name DESC;




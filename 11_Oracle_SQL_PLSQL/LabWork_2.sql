/*•	Выборка данных и изменение последовательности вывода строк
•	Ограничение количества возвращаемых строк с помощью предложения WHERE
•	Сортировка строк с помощью предложения ORDER BY*/



/* 1.	Создайте запрос для вывода имени и заработной платы служащих, зарабатывающих более $12000. 
Сохраните команду SQL в файле lab2_1.sql. выполните запрос.*/
SELECT  last_name, salary
FROM employees
WHERE salary = 12000 ;

--2.	Создайте запрос для вывода фамилии и номера отдела служащего под номером 176
SELECT  last_name, department_id
FROM employees
WHERE employee_id = 176 ;

/*3.	Измените файл lab2_1.sql и выведите фамилии и оклады всех служащих, 
чей оклад не входит в диапазон от $5000 до $12000. 
Cохраните команду SQL в файле lab2_3.sql*/
SELECT  last_name, salary
FROM employees
WHERE  (salary  < 5000 OR salary > 12000);

/*4.	Выведите фамилию, идентификатор должности и дату начала работы всех служащих, 
нанятых в период с 20 февраля 1998 по 1 мая 1998 г. 
Отсортируйте данные в порядке возрастания даты найма.*/
SELECT  last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '20.02.98' AND '01.05.98';

--5.	Выведите фамилию и номер отдела всех служащих из отделов 20 и 50. Отсортируйте данные по фамилиям в алфавитном порядке.
SELECT  last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name;

/*6.	Измените файл lab2_3.sql для вывода фамилий и окладов служащих отделов 20 и 50, 
зарабатывающих от $5000 до $12000. 
Назовите столбцы Employee и Mounthly Salary, соответственно. 
Вновь сохраните команду SQL  в файле lab2_6.sql. Выполните запрос.*/
SELECT  last_name "Employee", salary "Mounthly Salary"
FROM employees
WHERE  (salary  < 5000 OR salary > 12000)
		AND department_id IN (20, 50);

--7.	Выведите фамилию и дату найма всех служащих, нанятых в 1994 г.
SELECT  last_name, hire_date
FROM employees
WHERE hire_date LIKE '%94';

--8.	Выведите фамилии и должности всех служащих, не имеющих менеджера.
SELECT  last_name, job_id
FROM employees
WHERE manager_id IS NULL;

/*9.	Выведите фамилию, и комиссионные всех служащих, зарабатывающих комиссионные. 
Отсортируйте данные в порядке убывания окладов и комиссионных.*/
SELECT  last_name, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
ORDER BY salary, commission_pct DESC;

--10.	Выведите все фамилии служащих, в которых третья буква – а.
SELECT  last_name
FROM employees
WHERE last_name LIKE '__a%';

--11.	Выведите фамилии всех служащих, в которых есть буквы «а» и «е».

SELECT  last_name
FROM employees
WHERE last_name LIKE '%a%'
      AND last_name LIKE '%e%';

/*12.	запросите фамилии, должности и оклады всех служащих, работающих торговыми представителями (SA_REP) 
или клерками на складе (ST_CLERK) и с окладом, не равным  $2500, $3500 и $7000.*/


SELECT  last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP'
	OR job_id = 'ST_CLERK'
	AND salary NOT IN (2500,3500,7000);
	
/*13.	Измените lab2_6.sql так, чтобы получить фамилии оклады и комиссионные всех служащих, 
у которых сумма комиссионных превышает 20%. 
Выполните запрос ещё раз. Сохраните запрос в файле lab2_13.sql.*/
SELECT  last_name "Employee", salary "Mounthly Salary"
FROM employees
WHERE  (salary  < 5000 OR salary > 12000)
		AND department_id IN (20, 50)
		AND commission_pct > 0.2;

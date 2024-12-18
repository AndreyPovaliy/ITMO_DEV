/*	•	Выборка данных из разных таблиц
	•	Описание структуры таблиц
	•	Выполнение арифметических вычислений и задание имён столбцов*/



/*1.	Команда SELECT содержит 4 ошибки. Укажите их.

	SELECT employee_id, last_name
	sal x 12 ANNUAL SALARY
	FROM employees;
 */

SELECT employee_id, last_name, salary*12 "ANNUAL_SALARY"        
FROM employees;

--2.	Покажите структуру таблицы DEPARTMENS. Выберите данные из неё.

DESCRIBE departments

SELECT *
FROM departments;


--3.	Покажите структуру таблицы EMPLOYEES. 
DESCRIBE employees;
/*4.	Составьте запрос для вывода имени каждого служащего, 
должности, даты найма и номера. Номер служащего должен быть первым. */
SELECT employee_id,first_name,job_id,hire_date
FROM employees

-- 5.	Составьте запрос для вывода неповторяющихся должностей из таблицы EMPLOYEES
SELECT DISTINCT job_id
FROM employees;

/* 6.	Выведите на экран имя, соединённое 
с идентификатором должности через запятую и пробел. 
Назовите новый столбец Employee and Title
*/
SELECT last_name|| ', '  || job_id  "Employee and Title"
FROM employees;


/*7.	Создайте запрос для вывода всех данных из таблицы EMPLOYEES. 
Разделите столбцы запятыми. Назовите столбец THE_OUTPUT*/

SELECT employee_id||','|| first_name ||','|| last_name ||','|| email ||','|| phone_number ||','|| hire_date ||', '|| job_id||', '|| salary ||','|| commission_pct ||','|| manager_id||','|| department_id AS "Employee and Title"
FROM employees;

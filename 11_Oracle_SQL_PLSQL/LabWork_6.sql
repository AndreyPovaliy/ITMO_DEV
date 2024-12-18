/*	•	Использование групповых функций
	•	Вывод данных по группам с помощью предложения GROUP BY
	•	Включение и исключение групп с помощью предложения HAVING*/


/*1.	Напишите запрос для вывода самого высокого, самого низкого и среднего оклада по всем служащим, 
а также суммы всех окладов. Назовите столбцы Maximum, Minimum, Average и Sum. Округлите суммы до ближайшего целого значения. 
Сохраните свой запрос в файле lab5_6.sql.*/
SELECT  MAX(salary)"Maximum", MIN(salary) "Minimum", 
		SUM(salary)"Sum", ROUND(AVG(salary),0)"Average"
FROM employees

/*2.	Измените запрос в lab5_6.sql. так, чтобы получить самый низкий, 
самый высокий и средний оклады, а также сумму окладов по каждой должности. 
Сохраните изменённый запрос в файле lab5_5.sql. Выполните запрос из lab5_5.sql.*/

SELECT  job_id, MAX(salary)"Maximum", MIN(salary) "Minimum", 
		SUM(salary)"Sum", ROUND(AVG(salary),0)"Average"
FROM employees 
GROUP BY job_id

--3.	Напишите запрос для вывода должности и количества служащих, занимающих каждую должность.
SELECT  job_id, COUNT (*)
FROM employees 
GROUP BY job_id

/*4.	Получите количество служащих, имеющих подчинённых, без их перечисления. 
Назовите столбец Number of Managers. 
Используйте столбец MANAGER_ID для определения числа менеджеров.*/

SELECT COUNT(worker.last_name) "Number of Managers"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id)
GROUP BY manager.last_name;

/*5.	Напишите запрос для вывода разности между самым высоким и самым низким окладами. 
Назовите столбец DIFFERENCE*/
SELECT (MAX(salary)-MIN(salary)) "DIFFERENCE"
FROM employees 

/*6.	Напишите запрос для вывода номера каждого менеджера, имеющего подчинённых, 
и заработную плату самого низкооплачиваемого из его подчинённых. 
Исключите менеджеров для которых неизвестны их менеджеры. 
Исключите все группы, где минимальный оклад составляет менее $6000. 
Отсортируйте выходные строки в порядке убывания оклада.*/
SELECT manager_id, MIN(salary)
FROM employees 
GROUP BY manager_id
HAVING MIN(salary)>6000
AND manager_id IS NOT NULL;

/*7.	Напишите запрос для вывода названия отдела, местоположения отдела, 
количества служащих и среднего оклада по этому отделу. 
Назовите столбцы Name, Location, Number of People и Salary. 
Округлите средний оклад до ближайшего целого значения.*/
SELECT d.department_name "Name", d.location_id "Location", COUNT(e.employee_id) "Number of People", ROUND(AVG(e.salary),0) "Salary"
FROM employees e
JOIN departments d
ON e.department_id=d.department_id
GROUP BY d.department_name, d.location_id;

/*8.	Напишите запрос для вывода общего количества служащих и количества служащих, нанятых в 1995, 1996, 1997 и 1998 годах. 
Дайте соответствующие заголовки столбцам.*/
SELECT COUNT (*) total, 
	SUM (DECODE (TO_CHAR (hire_date, 'YY'), 95, 1)) "1995",
	SUM (DECODE (TO_CHAR (hire_date, 'YY'), 96, 1)) "1996",
	SUM (DECODE (TO_CHAR (hire_date, 'YY'), 97, 1)) "1997",
	SUM (DECODE (TO_CHAR (hire_date, 'YY'), 98, 1)) "1998"
FROM employees
WHERE hire_date LIKE '%95'
	OR hire_date LIKE '%96'
	OR hire_date LIKE '%97'
    OR hire_date LIKE '%98';

/*9.	Напишите матричный запрос для вывода всех должностей и суммы заработной платы служащих, 
работающих в этой должности в отделах 20, 50, 80 и 90. 
Последний столбец должен содержать сумму заработной платы служащих этих отделов, занимающих каждую конкретную должность. 
Дайте столбцам соответствующие заголовки.*/

SELECT job_id "Job",
    SUM (DECODE (department_id, 20, salary)) "Dept20",
    SUM (DECODE (department_id, 50, salary)) "Dept50",
    SUM (DECODE (department_id, 80, salary)) "Dept80",
    SUM (DECODE (department_id, 90, salary)) "Dept90",
    SUM (salary) "Total"
FROM employees
GROUP BY job_id;
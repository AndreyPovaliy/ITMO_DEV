/*	•	Создание подзапросов для выборки данных по неизвестным критериям
	•	Использование подзапросов для выявления значений, существующих в одном наборе данных и отсутствующих в другом*/

--1. Создайте запрос для вывода фамилии и даты найма каждого служащего, работающего в одном отделе с Zlotkey. Исключите Zlotkey из выходных данных.
SELECT last_name, TO_CHAR (hire_date, 'fmDD-MON-YY') "hire_date"
FROM employees
WHERE department_id = (SELECT department_id
                        FROM employees
                        WHERE last_name =  'Zlotkey') ;

/*2.Создайте запрос для вывода номеров и фамилий всех служащих, оклад которых выше среднего. 
Отсортируйте данные в порядке увеличения окладов.*/
SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees)
ORDER BY salary ;

/*3.Создайте запрос для вывода номеров и фамилий всех служащих, работающих в одном отделе с любым служащим, фамилия которого содержит букву «u». 
Сохраните свой запрос в тестовом файле lab6_3.sql. Выполните запрос.*/
SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%u%');

--4.Создайте запрос для вывода фамилии, номера отдела и должности каждого служащего, идентификатор местоположения отдела которого равен 1700.
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE location_id = 1700);

--5.	Получите список фамилий и окладов всех служащих, подчинённых Кингу. 

SELECT last_name, salary
FROM employees
WHERE manager_id IN (SELECT employee_id
                        FROM employees
                        WHERE last_name = 'King');

--6. Получите номер отдела, фамилию и должность для каждого служащего, работающего в администрации (department_name = ‘Executive’). 
SELECT department_id, last_name, job_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE department_name = 'Executive');
						

/*7.	Измените lab6_3.sql для вывода номеров, фамилий и окладов всех служащих, 
которые работают в одном отделе с любым служащим с буквой «u» в фамилии и оклады которых превышают средний. 
Сохраните новый запрос в файле lab6_7.sql. Выполните его. */
SELECT employee_id, last_name, salary
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%u%')
						AND salary > (SELECT AVG(salary)
										FROM employees);	
										
--8. Покажите номер отдела с наивысшей средней заработной платой и наименьший оклад работающего в нём сотрудника.	
SELECT department_id, MIN(salary)
FROM employees
WHERE department_id IN (SELECT department_id 
                        FROM employees
                        WHERE salary =(SELECT MAX(AVG(salary))
                                        FROM employees
                                        GROUP BY salary)
                        )
GROUP BY department_id;
    								

/*9. Выведите номера , наименования и местоположения отделов, 
в которых не работают торговые представители (job_id = ‘SA_REP’). */
SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE department_id <> ALL (SELECT NVL(department_id, 0)
                            FROM employees
                            WHERE job_id = 'SA_REP');
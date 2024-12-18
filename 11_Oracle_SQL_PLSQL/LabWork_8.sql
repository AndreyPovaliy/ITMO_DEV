/*•	Создание запросов, в которых используются операторы SET.
•	Альтернативные методы соединения.*/


--1.	Используя оператор SET, выведите номера отделов (department_id), в которых нет служащих с идентификатором должности (job_id) ST_CLERK. 
SELECT department_id
FROM departments
MINUS
SELECT department_id
FROM employees
WHERE job_id LIKE 'ST_CLERK';

--2.	Используя оператор SET, выведите идентификаторы и наименования стран, в которых не располагаются отделы компании. 
SELECT country_id "CO", country_name
FROM countries
MINUS
SELECT l. country_id, con. country_name
FROM locations l JOIN countries con
ON l. country_id = con. country_id
JOIN departments d
ON d. location_id = l. location_id;

--3.	Используя оператор SET, выведите список должностей отделов 10, 50 и 20 в таком же порядке отделов. Выведите столбцы job_id и department_id. 
SELECT job_id, department_id
FROM 
    (SELECT job_id, department_id
    FROM employees
    WHERE department_id IN (10, 20, 50)
    INTERSECT
    SELECT job_id, department_id
    FROM employees)
ORDER BY decode (department_id, 10,1, 20,3, 50,2);
--4.	Выведите номер сотрудника и идентификатор его должности, если его текущая должность совпадает с той, которую он уже занимал, работая в компании. 
SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;


/*5.	Напишите составной запрос, который выводит следующее:
•	Номера и отделы всех сотрудников из таблицы EMPLOYEES, независимо от того, относятся ли они к какому-то отделу или нет;
•	Номера и наименования всех отделов из таблицы DEPARTMENTS, независимо от того, есть ли в них сотрудники или нет.*/
SELECT employee_id, department_id, TO_CHAR (NULL) department_name
FROM employees
UNION
SELECT TO_NUMBER (NULL), department_id, department_name
FROM departments;

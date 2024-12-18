/*	•	Соединение таблиц с использованием эквисоединения.
	•	Выполнение внешних соединений и соединений таблицы с собой
	•	Включение дополнительных условий.*/


--1.	Напишите запрос для вывода фамилии, номера отдела и названия отдела дл всех служащих.

SELECT last_name, department_id, department_name
FROM employees NATURAL JOIN departments;


--2.	Выведите список всех должностей в отдел 80 (должности в списке не должны повторяться) и местоположение отдела.
SELECT DISTINCT job_id, location_id
FROM employees JOIN departments
USING (department_id) 
WHERE department_id= 80;


/*3.	Напишите запрос для вывода фамилий, названия отдела, идентификатора местоположения отдела и города, 
в котором он находится, для всех служащих, зарабатывающих комиссионные.*/
SELECT e.last_name, d.department_name, d.location_id,	l.city
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id
AND e.commission_pct IS NOT NULL ;


/*4.	Выведите фамилии всех служащих, содержащтих букву «а» (в строчном регистре), с названиями отделов. 
Сохраните свою команду SQL в файле lab4_4.sql.*/
SELECT e.last_name, d.department_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
AND e.last_name LIKE '%a%';
/*5.	Напишите запрос для вывода фамилии, должности, номера отдела и названия отдела всех служащих, 
работающих в городе Toronto.*/

SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e
JOIN departments d
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id
AND l.city = 'Toronto';

/*6.	Выведите фамилии и номера всех служащих вместе с фамилиями и номерами их менеджеров. 
Назовите столбцы EMPLOYEE, Emp#, Manager и Mgr#. 
Сохраните свою команду SQL в файле lab4_6.sql.*/

SELECT worker.last_name "Employee",worker.manager_id "EMP#", manager.last_name "Manager", manager.employee_id "Mgr#"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);



/*7.	Измените файл lab4_6.sql так, чтобы получить фамилии всех служащих, включая Кинга, который не имеет менеджера. 
Упорядочьте результат по возрастанию номера служащего. Сохраните изменённый запрос в текстовом файле lab4_7.sql. 
Выполните запрос.*/

SELECT worker.last_name "Employee",worker.manager_id "EMP#", manager.last_name "Manager", manager.employee_id "Mgr#"
FROM employees worker LEFT JOIN employees manager
ON (worker.manager_id = manager.employee_id)
ORDER BY worker.employee_id

/*8.	Создайте запрос для вывода номера отдела, фамилии служащего и фамилий всех служащих, 
работающих в одном отделе с данным служащим. 
Дайте столбцам соответствующие имена.*/

SELECT worker.department_id "DEPARTMENT", worker.last_name "EMPLOYEE", colleague.last_name "COLLEAGUE"
FROM employees worker LEFT JOIN employees colleague
ON (worker.department_id = colleague.department_id);

/*9.	Покажите структуру таблицы JOB_GRADES. 
Создайте запрос для вывода фамилии, должности, названия отдела, оклада и категории (GRADE_LEVEL) всех служащих.*/

DESCRIBE JOB_GRADES;

SELECT e.last_name, e.job_id, d.department_name, e.salary, j.grade_level
FROM employees e JOIN departments d
ON d.department_id = e.department_id
JOIN job_grades j
ON e.salary
BETWEEN j.lowest_sal AND j.highest_sal;



--10.	Создайте запрос для вывода фамилий и дат найма всех служащих, нанятых после Davies.

SELECT last_name, hire_date
FROM employees
WHERE hire_date > (SELECT hire_date
					FROM employees
					WHERE last_name = 'Davies');


/*11.	По всем служащим нанятым раньше своих менеджеров, выведите фамилии и даты найма самих служащих, 
а также фамилии и даты найма их менеджеров. 
Назовите столбцы Employee, Emp, Manager и Manager Hired.*/

SELECT worker.last_name "Employee", worker.hire_date "Emp Hired", manager.last_name "Manager",manager.hire_date "Mng Hired"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id)
WHERE worker.hire_date > manager.hire_date;

/*12.	Выведите номера, наименования и местоположение всех отделов, 
а также количество работающих в них сотрудников. 
Обеспечьте вывод отделов в которых нет сотрудников.*/

SELECT e.department_id, d.department_name, d.location_id, COUNT(employee_id)
FROM employees e
LEFT JOIN departments d
ON e.department_id=d.department_id
GROUP BY e.department_id, d.department_name, d.location_id;


/*13.	Какие должности имеются в отделах Administration и Executive, 
а также сколько сотрудников занимают эти должности? 
Выведите первыми наиболее часто встречаемые должности.*/
SELECT e.job_id, COUNT (employee_id)
FROM employees e
JOIN departments d
ON e.department_id=d.department_id
WHERE  d.department_name IN ('Administration','Executive')
GROUP BY (e.job_id);


/*14.	Покажите сотрудников, менеджеры которых имеют оклад выше $15000. выведите следующие сведения: 
фамилию сотрудника, фамилию менеджера, его оклад и уровень оклада (GRADE_LEVEL).*/

SELECT worker.last_name "LAST_NAME", manager.last_name "MANAGER", manager.salary, j.grade_level "GRA"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id)
JOIN job_grades j
ON manager.salary
BETWEEN j.lowest_sal AND j.highest_sal
WHERE manager.salary>15000;
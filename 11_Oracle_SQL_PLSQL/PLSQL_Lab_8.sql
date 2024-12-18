/*Практика 8-1: Обработка предопределённых исключений

1) Удалите все данные таблицы messages. Измените тип данных столбца на varchar2(1000).

2) В декларативной секции объявите две переменные: v_ename типа employees.last_name и v_emp_sal типа employees.salary. Инициализируйте последнюю в 6000.

3) В исполнимой секции запросите фамилии сотрудников, чьи зарплаты равны значению v_emp_sal. Если возвращается только одна строка, вставьте в таблицу messages имя сотрудника и его зарплату.
Примечание: Не используйте явный курсор.

4) Если для введённой зарплаты не выводится ни одной строки, обработайте это исключение соответствующим обработчиком и вставьте в таблицу messages сообщение «Нет сотрудника с зарплатой <salary>».

5) Если для указанной зарплаты возвращается несколько записей, обработайте это исключение соответствующим обработчиком и вставьте в таблицу messages сообщение «Более одного сотрудника с зарплатой <salary>».

6) Обработайте любое другое исключение соответствующим обработчиком и вставьте в таблицу messages сообщение «Возникла другая ошибка».

7) Выведите записи из таблицы messages для проверки, выполняется ли правильно PL/SQL блок. */
 



TRUNCATE TABLE Messages;

DEFINE v_sal = 2000

DECLARE
  v_ename Employees.Last_Name%TYPE;
  v_emp_sal Employees.Salary%TYPE := &v_sal;
BEGIN
  SELECT Last_Name
  INTO v_ename
  FROM Employees
  WHERE Salary = v_emp_sal;

  INSERT INTO Messages (Results)
  VALUES (v_ename || ': ' || v_emp_sal || '$');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    INSERT INTO Messages (Results)
    VALUES ('No employee with a salary of ' || v_emp_sal);
  WHEN TOO_MANY_ROWS THEN
    INSERT INTO Messages (Results)
    VALUES ('More than one employee with a salary of ' || v_emp_sal);
END;
/

COMMIT;

SELECT *
FROM Messages;

/*8) Измените инициализационное значение в переменной v_ emp_sal на 2000 и выполните блок.*/

DEFINE v_sal = 2000

DECLARE
  v_ename Employees.Last_Name%TYPE;
  v_emp_sal Employees.Salary%TYPE := &v_sal;
BEGIN
  SELECT Last_Name
  INTO v_ename
  FROM Employees
  WHERE Salary = v_emp_sal;

  INSERT INTO Messages (Results)
  VALUES (v_ename || ': ' || v_emp_sal || '$');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    INSERT INTO Messages (Results)
    VALUES ('No employee with a salary of ' || v_emp_sal);
  WHEN TOO_MANY_ROWS THEN
    INSERT INTO Messages (Results)
    VALUES ('More than one employee with a salary of ' || v_emp_sal);
END;
/

COMMIT;

SELECT *
FROM Messages;

/*Практика 8-2: Обработка стандартных исключений Oracle Server
  В этой практике вы напишите PL/SQL блок, который объявляет исключение для ошибки сервера Oracle ORA-02292 (integrity constraint violated – child record found). 

1) В декларативной секции объявите исключение e_childrecord_exists. Ассоциируйте объявленное исключение со стандартной ошибкой сервера Oracle -02292.

2) В исполняемой секции выведите «Удаление отдела 40… ». Напишите оператор DELETE для удаления отедал с department_id = 40.

3) Напишите секцию обработки исключения для обработки исключения e_childrecord_exists и отобразите соответствующее сообщение.*/
 
DECLARE
  e_childrecord_exists EXCEPTION;
  PRAGMA EXCEPTION_INIT (e_childrecord_exists, -02292);
BEGIN
  DBMS_OUTPUT.PUT_LINE('Deleting department 40........');
  DELETE FROM Departments
  WHERE Department_ID = 40;

EXCEPTION
  WHEN e_childrecord_exists THEN
    DBMS_OUTPUT.PUT_LINE('Cannot delete this department. There are employees in this department (child record exist.)');
END;
/
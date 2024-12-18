/*Практика 7-1: Использование явных курсоров
В этой практике выполняются два упражнения:
  Первое: используйте явный курсор для обработки нескольких строк из таблицы и заполните другую таблицу результатом с помощью курсора FOR-цикла.
  Второе: вы напишите PL/SQL блок, который обрабатывает информацию двумя курсорами, один из которых использует параметр.

1) Создайте PL/SQL блок для выполнения следующих действий:
a) В описательной секции объявите и инициализируйте переменную v_deptno типа NUMBER. Присвойте корректное значение department ID (см. таблицу в пункте d).
b) Объявите курсор с именем c_emp_cursor, который выбирает last_name, salary и manager_id сотрудника, работающего в отделе, указанном в v_deptno.

c) В исполняемой секции используйте цикл FOR для обработки полученных данных. Если зарплата сотрудника меньше 5000 и его manager ID или 101, или 124, 
отобразите сообщение «<<last_name>> для повышения». Иначе выведите сообщение «<<last_name>> не для повышения».

d) Проверьте PL/SQL блок для следующих случаев:*/
DEFINE v_deptno = &Enter_The_Department

DECLARE
  v_deptno NUMBER := &v_deptno;
  v_depOut   VARCHAR2(10);
  v_raiseOut VARCHAR2(10);
  CURSOR c_emp_cursor IS
    SELECT Last_Name, Salary, Manager_ID
    FROM Employees
    WHERE Department_ID = v_deptno;
BEGIN
  FOR emp IN c_emp_cursor LOOP
    v_depOut :=
      CASE
        WHEN c_emp_cursor%ROWCOUNT = 1
        THEN RPAD(v_deptno, LENGTH(v_deptno) + 3, ' ')
        ELSE RPAD(' ',    LENGTH(v_deptno) + 3, ' ')
      END;
    v_raiseOut :=
      CASE
        WHEN emp.Salary < 5000 AND emp.Manager_ID IN (101, 124)
        THEN ' Due'
        ELSE ' Not due'
      END;
    DBMS_OUTPUT.PUT_LINE(v_depOut || emp.Last_Name || v_raiseOut || ' for a raise');
  END LOOP;
END;


/*2) Напишите PL/SQL блок, который объявляет и использует два курсора: один без параметра, а другой – с параметром. Первый курсор выбирает номер отдела 
и название отдела из таблицы departments для всех отделов, чей номер ID меньше 100. Второй курсор принимает номер отдела как параметр и 
запрашивает детальную информацию по сотруднику, кто работает в отделе и чей employee_id меньше 120.

a) Объявите курсор c_dept_cursor для запроса department_id и department_name для тех отделов, чей department_id меньше 100. Отсортируйте по department_id.

b) Объявите другой курсор c_emp_cursor, который принимает номер отдела как параметр и выбирает следующие данные из таблицы employees:
last_name, job_id, hire_date и salary тех сотрудников, кто работает в том же отделе, что и сотрудники с employee_id менее 120.

c) Объявите переменные для того, чтобы сохранить туда значения, выбираемые каждым курсором. Используйте атрибут %TYPE для объявления переменных.

d) Откройте курсор c_dept_cursor и используйте простой цикл для получения значеий в объявленные переменные. Выведите номер и название отдела. 
Используйте подходящий курсорный атрибут для выхода из цикла.

e) Откройте курсор c_emp_cursor, передав текущий номер отдела как параметр. Начните другой цикл и запросите значения c_emp_cursor в переменные, 
и выведите всю запрошенную детальную информацию из таблицы employees.

Примечание
•	Проверьте, открыт ли уже курсор c_ emp_cursor.
•	Используйте подходящий курсорный атрибут для выхода из условия.
•	Когда цикл выполнится, напечатайте линию после отображённых детальных данных по каждому отделу и закройте курсор c_emp_cursor.

f) Завершите первый цикл и закройте c_dept_cursor. Затем завершите исполнимую секцию.

g) Выполните скрипт. Пример вывода:*/

DECLARE
  CURSOR с_dept_cursor IS
    SELECT Department_ID, Department_Name
    FROM Departments
    WHERE Department_ID < 100;

  
  CURSOR с_emp_cursor (v_depID Departments.Department_ID%TYPE) IS
    SELECT Last_Name, Job_ID, Hire_Date, Salary
    FROM Employees
    WHERE Employee_ID < 120 AND Department_ID = v_depID;

  
  v_depID   Departments.Department_ID%TYPE;
  v_depName Departments.Department_Name%TYPE;

  
  v_lastName Employees.Last_Name%TYPE;
  v_jobID    Employees.Job_ID%TYPE;
  v_hireDate Employees.Hire_Date%TYPE;
  sal      Employees.Salary%TYPE;
BEGIN
  OPEN с_dept_cursor;
  LOOP 
    FETCH с_dept_cursor INTO v_depID, v_depName;
    EXIT WHEN с_dept_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Department Number: ' || v_depID || ' Department Name: ' || v_depName);
    OPEN с_emp_cursor (v_depID);
    LOOP 
      FETCH с_emp_cursor INTO v_lastName, v_jobID, v_hireDate, sal;
      EXIT WHEN с_emp_cursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(
           v_lastName || ' '
        || v_jobID    || ' '
        || TO_CHAR(v_hireDate, 'dd-MON-rr', 'NLS_DATE_LANGUAGE = English') || ' '
        || sal
      );
    END LOOP; 
    CLOSE с_emp_cursor;
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------');
  END LOOP; 
  CLOSE с_dept_cursor;
END;


/*Практика 7-2: Использование явных курсоров
Создайте PL/SQL блок, который использует явный курсор для определения наивысших n зарплат сотрудников.
1) Создайте таблицу top_salaries, содержащий один столбец salary типа NUMBER(8,2) для хранения наивысших зарплат сотрудников.

2) В декларативной секции объявите переменную v_num типа number, которая содержит число n, представляющее n наиболее высокооплачиваемых сотрудников таблицы employees. 
Например, чтобы увидеть 5 наиболее высоких зарплат, присвойте этой переменной значение 5.
Объявите другую переменную sal типа employees.salary. Объявите курсор c_emp_cursor, который запрашивает зарплаты сотрудников в убывающем порядке. 
Примечание: зарплаты не должны повторяться.

3)В исполнимой секции напишите цикл и запросите n наибольших зарплат и затем вставьте их в таблицу top_salaries. Можно использовать простой цикл для обработки данных. 
Также используйте курсорные атрибуты %ROWCOUNT и %FOUND для выхода из цикла.
Примечание: Убедитесь, что вы написали корректно условие выхода, чтобы не было бесконечного цикла.

4) После вставки данных в таблицу top_salaries отобразите строки с помощью оператора SELECT. Пример вывода информации о пяти наивысших зарплатах в таблице employees:
 

5) Проверьте различные случаи, такие как v_num = 0 или когда v_num больше, чем число сотрудников в таблице employees. Очищайте таблицу top_salaries после каждого теста.*/

CREATE TABLE top_salaries (salary	NUMBER(8,2))

DEFINE v_num = &v_n_number

TRUNCATE TABLE top_salaries;

DECLARE
  num NUMBER := &v_num;
  v_sal employees.salary%TYPE;
  CURSOR c_emp_cursor IS
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC;
BEGIN
  OPEN c_emp_cursor;
  LOOP
    FETCH c_emp_cursor INTO v_sal;
    EXIT WHEN c_emp_cursor%NOTFOUND OR c_emp_cursor%ROWCOUNT > num;
    INSERT INTO top_salaries (salary) VALUES (v_sal);
  END LOOP;
  CLOSE c_emp_cursor;
END;
/


SELECT *
FROM Top_Salaries;
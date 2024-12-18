/*Практика 4: Взаимодействие с Oracle Server

1) Создайте PL/SQL блок, который выбирает максимальный department ID в таблице departments и сохраняет его в переменную v_max_depno. Выведите максимальный department ID.

a) Объявите переменную v_max_depno типа NUMBER в секции объявлений.
b) Начните исполняемую секцию ключевым словом BEGIN и напишите оператор SELECT для запроса максимального depertment_id из таблицы departments.

c) Выведите значение v_max_deptno и завершите исполнимый блок.

d) Выполните и сохраните скрипт как lab_04_01_soln.sql.*/

SET SERVEROUTPUT ON
DECLARE
  v_max_deptno NUMBER;
BEGIN
  SELECT MAX(Department_ID)
  INTO v_max_deptno
  FROM Departments;
  DBMS_OUTPUT.PUT_LINE('The maximum department_id is: ' || v_max_deptno);
END;
/


/*2) Измените блок PL/SQL, который был создан в задании 1, для вставки нового отдела в таблицу departments.
a) Загрузите скрипт lab_04_01_soln.sql. Объявите 2 переменные: 
v_dept_name типа departments.department_name и 
v_dept_id типа NUMBER.
Присвойте переменной v_dept_name значение 'Education' в секции описания.

b) Вы уже получили текущий максимальный номер отдела из таблицы departments. Добавьте 10 к нему и присвойте результат переменной v_dept_id.

c) Напишите оператор INSERT для вставки данных в столбцы department_name, department_id и location_id таблицы departments. Используйте значения v_dept_name и v_dept_id для столбцов department_name и department_id соответственно, и NULL для столбца location_id.

d) Используйте SQL-атрибут SQL%ROWCOUNT для вывода числа обработанных записей.

e) Выполните оператор SELECT для проверки, добавился ли новый отдел. Для этого можно завершите PL/SQL блок символом “/” и допишите оператор SELECT в ваш скрипт.

f) Выполните и сохраните ваш скрипт как lab_04_02_soln.sql. */

VARIABLE v_dept_id NUMBER;
DECLARE
  v_max_deptno NUMBER;
  v_dept_name Departments.Department_Name%TYPE := 'Education';
BEGIN
  SELECT MAX(Department_ID)
  INTO v_max_deptno
  FROM Departments;

  :v_dept_id := v_max_deptno + 10;

  INSERT INTO Departments (Department_ID, Department_Name, Location_ID)
  VALUES                  (:v_dept_id,      v_dept_name,       NULL       );

  DBMS_OUTPUT.PUT_LINE('The maximum department_id is: ' || v_max_deptno);
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row(s) added');
END;
/

SELECT *
FROM Departments;


/*3) В задании 2 вы установили location_id в NULL. Создайте PL/SQL блок, который обновляет location_id в значение 3000 для нового отдела.
a) Начните исполняемый блок с ключевого слова BEGIN. Напишите оператор UPDATE, чтобы установить location_id в значение 3000 для нового отдела (dept_id = 280).

b) Завершите исполняемый блок ключевым словом END. Закончите PL/SQL блок символом «/» и добавьте оператор SELECT для отображения отдела, который вы изменили.

c) Напишите оператор DELETE, чтобы удалить отдел, который вы добавили. 

d) Выполните и сохраните скрипт как lab_04_03_soln.sql*/

VARIABLE v_dept_id NUMBER;
DECLARE
  v_max_deptno NUMBER;
  v_dept_name Departments.Department_Name%TYPE := 'Education';
BEGIN
  SELECT MAX(Department_ID)
  INTO v_max_deptno
  FROM Departments;

  :v_dept_id := v_max_deptno + 10;

  INSERT INTO Departments (Department_ID, Department_Name, Location_ID)
  VALUES                  (:v_dept_id,      v_dept_name,       NULL       );

  DBMS_OUTPUT.PUT_LINE('The maximum department_id is: ' || v_max_deptno);
  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row(s) added');
  
  UPDATE Departments
  SET Location_ID = 3000
  WHERE Department_ID = :dept_id;
END;
/

SELECT *
FROM Departments;

-- удалить добавленную строку
DELETE FROM Departments
WHERE Department_ID = (SELECT MAX(Department_ID) FROM Departments);
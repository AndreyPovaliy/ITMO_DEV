/*Практика 5: Написание управляющих структур
Создайте таблицу messages, содержащую 1 столбец results типа NUMBER(6).
1) Напишите PL/SQL блок для вставки данных в таблицу messages.

a) Вставьте числа от 1 до 10, исключая 6 и 8.

b) Зафиксируйте изменения перед концом блока.

c) Выполните оператор SELECT для проверки, что ваш PL/SQL блок работает.*/
CREATE TABLE messages (results VARCHAR2(80));

BEGIN
  FOR i IN 1..10 LOOP
    CONTINUE WHEN i IN (6, 8);
    INSERT INTO Messages (results) VALUES (i);
  END LOOP;
END;
/

COMMIT;

SELECT *
FROM Messages;

/*2) Создайте таблицу EMP как копию таблицы employees. Измените структуру таблицы EMP, добавив новый столбец stars типа VARCHAR2 размерностью 50. Создайте PL/SQL блок, который добавляет звёздочку в столбец stars для каждых $1000 зарплаты сотрудника. Сохраните скрипт как lab_05_02_soln.sql.

a) В декларативной секции блока объявите переменную v_empno типа emp.employee_id и инициализируйте её значением 176. Объявите переменную v_asterisk типа emp.stars и установите её в NULL. Создайте переменную v_sal типа emp.salary.

b) В исполняемой секции напишите логику для добавления символа «*» к строке для каждых $1000 зарплаты. Например, если сотрудник получает $8000, строка должна содержать 8 звёздочек. Если сотрудник зарабатывает $12500, строка должна содержать 13 звёздочек.

c) Измените столбец stars для сотрудника, проставив туда новую строку со звёздочками. Зафиксируйте изменения перед концом блока.

d) Отобразит строку из таблицы emp для проверки, успешно ли выполняется ваш PL/SQL блок.

e) Выполните и сохраните ваш скрипт как lab_05_02_soln.sql. */

CREATE TABLE emp AS SELECT * FROM employees;

ALTER TABLE    emp  ADD stars	VARCHAR2(50);




DEFINE v_empno  = 176

DECLARE
  v_empno  NUMBER;
  v_asterisk  emp.stars%TYPE := NULL;
  v_sal       emp.salary%TYPE;
BEGIN
  v_empno  := &v_empno ;

  SELECT Salary
  INTO   v_sal 
  FROM Emp
  WHERE Employee_ID = v_empno ;

  FOR i IN 1..NVL(FLOOR(v_sal  / 1000), 0) LOOP
    v_asterisk := v_asterisk || '*';
  END LOOP;

  UPDATE Emp SET Stars = v_asterisk WHERE Employee_ID = v_empno ;
END;
/

SELECT Employee_ID, Salary, Stars
FROM Emp
WHERE Employee_ID = &v_empno ;
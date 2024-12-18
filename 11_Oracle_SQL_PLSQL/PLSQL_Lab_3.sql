--Практика 3: Написание исполняемых операторов
--1. Проанализируйте следующий PL/SQL блок и определите тип данных и значение каждой из следующих переменных в соответствии с областью видимости:
DECLARE
  v_weight NUMBER(3) := 600;
  v_message VARCHAR2(255) := 'Product 10012';
BEGIN
    DECLARE
    v_weight NUMBER(3) := 1;
    v_message VARCHAR2(255) := 'Product 11001';
    v_new_locn VARCHAR2(50) := 'Europe';
    BEGIN
    v_weight := v_weight + 1;
    v_new_locn := 'Western ' || v_new_locn;
    END;
    v_weight := v_weight + 1;
    v_message := v_message || ' is in stock';  
	v_new_locn := 'Western ' || v_new_locn; -- <-- эта переменна вне видимости
END;
/


/*a) Значение v_weight в позиции 1 равно: 2

b) Значение v_new_locn в позиции 1 равно: Western Europe

c) Значение v_weight в позиции 2 равно: 601

d) Значение v_message в позиции 2 равно: Product 10012 is in stock
 
e) Значение v_new_locn в позиции 2 равно: переменная не является объявленной в этой позиции*/

--Решение: 
DECLARE
  v_weight NUMBER(3) := 600;
  v_message VARCHAR2(255) := 'Product 10012';
BEGIN
    DECLARE
    v_weight NUMBER(3) := 1;
    v_message VARCHAR2(255) := 'Product 11001';
    v_new_locn VARCHAR2(50) := 'Europe';
    BEGIN
    v_weight := v_weight + 1;
    v_new_locn := 'Western ' || v_new_locn;
    END;
    v_weight := v_weight + 1;
    v_message := v_message || ' is in stock';  
END;
/

--2) В следующем PL/SQL блоке определите значения и типы данных для каждого из следующих случаев:
DECLARE
  v_customer VARCHAR2(50) := 'Womansport';
  v_credit_rating VARCHAR2(50) := 'EXCELLENT';
BEGIN
  DECLARE
    v_customer NUMBER(7) := 201;
    v_name VARCHAR2(25) := 'Unisports';
  BEGIN
    v_credit_rating :='GOOD';
    …
  END;
  …
END;
/

/*a) Значение v_customer во вложенном блоке: 201 NUMBER(7)

b) Значение v_name во вложенном блоке: 'Unisports' VARCHAR2(25)

c) Значение v_credit_rating во вложенном блоке: 'GOOD' VARCHAR2(50)

d) Значение v_customer в главном блоке: 'Womansport' VARCHAR2(50)

e) Значение v_name в главном блоке: PLS-00201: идентификатор 'V_NAME' должен быть объявлен

f) Значение v_credit_rating в главном блоке: 'GOOD' VARCHAR2(50)*/

/*3) Откройте скрипт lab_02_05_soln.sql и отредактируйте его следующим образом:
a) Используя синтаксис комментария одной строки, закомментируйте строки по созданию связанных переменных и включите переменную SERVEROUTPUT.

b) Используя многострочный комментарий, закомментируйте в исполняемой секции строки, которые выполняют присваивание связанных переменных.

c) В секции объявления:
1. Объявите и инициализируйте 2 временные переменные для замены закомментированных связанных переменных.
2. Объявите 2 дополнительные переменные: v_fname типа VARCHAR2 размером 15 и v_emp_sal типа NUMBER размером 10.

d) Включите следующий SQL-оператор в исполняемую секцию:
 

e) Измените в строке, печатающей «Hello World» на «Hello» и Имя. Затем закомментируйте строки, которые отображали даты и выводили связанные переменные.

f) Рассчитайте вклад сотрудника в резервный фонд (РФ). РФ составляет 12% от базовой зарплаты, а базовая зарплата – 45% от основной. Используйте локальную переменную для подсчёта. Попытайтесь написать расчёт РФ одним выражением. Выведите зарплату сотрудника и его рассчитанный РФ.

g) Выполните и сохраните скрипт как lab_03_03_soln.sql. */


SET SERVEROUTPUT ON
DECLARE
  v_fname VARCHAR2(15);
  v_emp_sal NUMBER(10);
BEGIN
  SELECT first_name, salary
  INTO v_fname, v_emp_sal FROM employees
  WHERE employee_id=110;
   DBMS_OUTPUT.PUT_LINE('Hello, ' || v_fname);
  DBMS_OUTPUT.PUT_LINE('YOUR SALARY IS: ' || v_emp_sal);
  DBMS_OUTPUT.PUT_LINE('YOUR CONTRIBUTION TOWARDS PF: ' || ROUND((0.12 * 0.45) * v_emp_sal, 1));
END;
/

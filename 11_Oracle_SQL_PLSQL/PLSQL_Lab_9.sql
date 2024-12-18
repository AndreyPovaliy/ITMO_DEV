/*Практика 9: Создание и использование хранимых процедур
В этой практике вы научитесь создавать хранимые в базе данных PL/SQL конструкции, 
создавать и управлять процедурами и функциями, изучите структуру и необходимые секции  для процедур и функций.*/

--) Загрузите следующий скрипт:
SET SERVEROUTPUT ON
DECLARE
  V_today DATE := SYSDATE;
  V_tommorow v_today%TYPE;
BEGIN
  V_tommorow := v_today +1;
  DBMS_OUTPUT.PUT_LINE('TODAY IS:'|| v_today);
  DBMS_OUTPUT.PUT_LINE('TOMMOROW IS:'|| v_tommorow);
END;
/
/*a) Измените скрипт, чтобы преобразовать анонимный блок в процедуру greet. 

b) Выполните сценарий, чтобы создать процедуру.*/
CREATE OR REPLACE Procedure greet
AS
BEGIN
    DECLARE
      V_today DATE := SYSDATE;
      V_tommorow v_today%TYPE;
    BEGIN
      V_tommorow := v_today +1;
      
    END;
END greet;
/

EXECUTE greet;

/*c) Сохраните скрипт как lab_09_01_soln.sql.

d) Нажмите кнопку Clear, чтобы очистить рабочее пространство.

e) Создайте и выполните анонимный блок, чтобы вызвать процедуру greet.*/
 SET SERVEROUTPUT ON
CREATE OR REPLACE Procedure greet
AS
BEGIN
    DECLARE
      V_today DATE := SYSDATE;
      V_tommorow v_today%TYPE;
    BEGIN
      V_tommorow := v_today +1;
      DBMS_OUTPUT.PUT_LINE('Hello World!'); 
      DBMS_OUTPUT.PUT_LINE('TODAY IS:'|| v_today);
      DBMS_OUTPUT.PUT_LINE('TOMMOROW IS:'|| v_tommorow);
    END;
END greet;
/

EXECUTE greet;

/*2) Загрузите скрипт lab_09_01_soln.sql. 

a) Удалите процедуру greet: DROP PROCEDURE greet;

b) Измените процедуру, чтобы принимать параметр name типа VARCHAR2. 

c) Выведите «Hello, <name>» вместо «Hello, World!». 

d) Сохраните свой скрипт как lab_09_02_soln.sql.

e) Выполните сценарий, чтобы создать процедуру.*/
 DROP PROCEDURE greet;

CREATE OR REPLACE Procedure greet
AS
BEGIN
    DECLARE
      V_today DATE := SYSDATE;
      V_tommorow v_today%TYPE;
    BEGIN
      V_tommorow := v_today +1;
      
    END;
END greet;
/

EXECUTE greet;



/*f) Создайте и выполните анонимный блок, чтобы вызвать процедуру greet с параметром. Блок должен выводить текст. */
 
CREATE OR REPLACE PROCEDURE greet( name IN VARCHAR2)IS 
BEGIN 
       DECLARE
      V_today DATE := SYSDATE;
      V_tommorow v_today%TYPE;
    BEGIN
      V_tommorow := v_today +1;
      DBMS_OUTPUT.PUT_LINE('Hello '||name);
      DBMS_OUTPUT.PUT_LINE('TODAY IS:'|| v_today);
      DBMS_OUTPUT.PUT_LINE('TOMMOROW IS:'|| v_tommorow);
    END;
END greet; 
/

EXECUTE greet('Nancy');
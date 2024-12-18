/*Практика 1: Введение в PL/SQL
1)	Какой из следующих блоков PL/SQL выполнится успешно?*/
a)	BEGIN
	END;

b)	DECLARE
	v_amount INTEGER(10);
	END;

c)	DECLARE
	BEGIN
	END;

d)	DECLARE
	v_amount INTEGER(10);
	BEGIN
	DBMS_OUTPUT.PUT_LINE(v_amount);
	END;

-- Ответ: d

--2)	Создайте и выполните простой анонимный блок, который выводит фразу «Hello World». Выполните и сохраните скрипт как lab_01_02_soln.sql.
SET SERVEROUTPUT ON

DECLARE 
   message  varchar2(20):= 'Hello World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 
/*Практика 2: Объявление переменных PL/SQL
1) Определите допустимые и недопустимые идентификаторы:*/
a) today --допустимо
b) last_name --допустимо
c) today’s_date --НЕдопустимо, использован апостроф
d) Number_of_days_in_February_this_year --НЕдопустимо, слишком длинный
e) Isleap$year --допустимо
f) #number --НЕдопустимо, первый символ не буква
g) NUMBER# --допустимо
h) number1to7 --допустимо

/*2) Определите допустимые и недопустимые объявление и инициализацию переменных:*/
a) number_of_copies 	PLS_NUMBER;  --НЕдопустимо, верноиспользовать PLS_INTEGER
b) PRINTER_NAME 	constant VARCHAR2(10); --НЕдопустимо, не задано занчение по умолчанию
c) deliver_to 	VARCHAR2(10) := Johnson; --НЕдопустимо, нужны кавычки отдинарные 'Jonson'
d) by_when 	DATE := CURRENT_DATE+1; --допустимо


/*3) Рассмотрите следующий блок, а затем выберите те утверждения, которые являются правдой:*/

DECLARE
v_fname VARCHAR2(20);
v_lname VARCHAR2(15) DEFAULT ‘fernandez’;
BEGIN
DBMS_OUTPUT.PUT_LINE(v_fname ||’ ‘ || v_lname);
END;

--Ответ: a) Блок выполнится успешно и выведет «fernandez».



/*4) Измените существующий анонимный блок и сохраните его как новый скрипт.*/
SET SERVEROUTPUT ON

DECLARE 
   v_message  varchar2(20):= 'Hello World!'; 
   v_today DATE := SYSDATE;
	v_tomorrow today%type;
BEGIN 
	tomorrow:=today+1
   dbms_output.put_line(v_message); 
   dbms_output.put_line('Today is:'||v_today); 
   dbms_output.put_line('Today is:'||v_tomorrow); 
END; 
/ 


/*5) Отредактируйте скрипт lab_02_04_soln.sql.*/

VARIABLE  b_basic_percent NUMBER; 
VARIABLE  b_pf_percent NUMBER; 

DECLARE 
  today DATE := SYSDATE; 
  tomorrow today%type; 
  v_message  varchar2(20):= 'Hello World!'; 
BEGIN 
    :b_basic_percent := 45; 
    :b_pf_percent    := 12; 
    tomorrow := today + 1; 
    DBMS_OUTPUT.PUT_LINE(v_message); 
    DBMS_OUTPUT.PUT_LINE('Today is ' || today ); 
    DBMS_OUTPUT.PUT_LINE('tomorrow is ' || tomorrow); 
END; 
/ 

PRINT b_basic_percent b_pf_percent; 
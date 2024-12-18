/*Практика 6: Работа с составными типами данных

1) Напишите PL/SQL блок для отображения информации о данной стране.

a) Объявите PL/SQL запись, основанную на структуре таблицы countries.

b) Объявите переменную v_countryid. Присвойте ей значение «CA».

c) В декларативной секции, используя %ROWTYPE-атрибут, объявите переменную v_country_record типа countries.

d) В исполняемой секции получите всю информацию из таблицы countries, используя v_countryid. Отобразите выбранную информацию о стране. */
 
DEFINE v_countryid = 'CA'

DECLARE
  country_record Countries%ROWTYPE;
  v_countryid VARCHAR2(64);
BEGIN
  v_countryid := '&v_countryid';

  SELECT *
  INTO country_record
  FROM Countries
  WHERE Country_ID = v_countryid;

  DBMS_OUTPUT.PUT_LINE(
       'Country Id: '    || v_countryid
    || ' Country Name: ' || country_record.country_name
    || ' Region: '       || country_record.region_ID
  );
END;

--e) Выполните и протестируйте PL/SQL блок для стран с ID: DE, UK и US.
DEFINE v_countryid = 'DE'

DECLARE
  country_record Countries%ROWTYPE;
  v_countryid VARCHAR2(64);
BEGIN
  v_countryid := '&v_countryid';

  SELECT *
  INTO country_record
  FROM Countries
  WHERE Country_ID = v_countryid;

  DBMS_OUTPUT.PUT_LINE(
       'Country Id: '    || v_countryid
    || ' Country Name: ' || country_record.country_name
    || ' Region: '       || country_record.region_ID
  );
END;


DEFINE v_countryid = 'UK'

DECLARE
  country_record Countries%ROWTYPE;
  v_countryid VARCHAR2(64);
BEGIN
  v_countryid := '&v_countryid';

  SELECT *
  INTO country_record
  FROM Countries
  WHERE Country_ID = v_countryid;

  DBMS_OUTPUT.PUT_LINE(
       'Country Id: '    || v_countryid
    || ' Country Name: ' || country_record.country_name
    || ' Region: '       || country_record.region_ID
  );
END;


DEFINE v_countryid = 'US'

DECLARE
  country_record Countries%ROWTYPE;
  v_countryid VARCHAR2(64);
BEGIN
  v_countryid := '&v_countryid';

  SELECT *
  INTO country_record
  FROM Countries
  WHERE Country_ID = v_countryid;

  DBMS_OUTPUT.PUT_LINE(
       'Country Id: '    || v_countryid
    || ' Country Name: ' || country_record.country_name
    || ' Region: '       || country_record.region_ID
  );
END;

/*2) Создайте PL/SQL блок для запроса названий некоторых отделов из таблицы departments и вывода каждого названия отдела на экран, используя ассоциативный массив. Сохраните скрипт как lab_06_02_soln.sql.

a) Объявите тип dept_table_type как INDEX BY-таблицу типа departments.department_name. Объявите переменную my_dept_table типа dept_table_type для временного хранения названий отделов.

b) Объявите две переменные: f_loop_count и v_deptno типа NUMBER. Присвойте в f_loop_count значение 10, а в v_deptno – 0.

c) Используя простой оператор цикла, получите названия 10 отделов  и сохраните их в ассоциативном массиве. Начние department_id с 10. Увеличивайте v_deptno с шагом 10 для каждой итерации цикла. Следующая таблица показывает department_id, для которых вы должны запросить department_name.

d) Используя другой цикл, запросите названия отделов из ассоциативного массива и выведите его на экран.

e) Выполните и сохраните скрипт как lab_06_02_soln.sql.*/


DECLARE
  TYPE dept_table_type IS TABLE OF
    departments.department_name%TYPE
    INDEX BY PLS_INTEGER;
  my_dept_table dept_table_type;

  f_loop_count NUMBER := 10;
  v_deptno     NUMBER := 0;
BEGIN
  FOR i IN 1..10 LOOP
    SELECT Department_Name
    INTO   my_dept_table(i)
    FROM Departments
    WHERE Department_ID = 10*i;
  END LOOP;

  FOR i IN my_dept_table.FIRST..my_dept_table.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(my_dept_table(i));
  END LOOP;
END;

/*3) Измените блок, который вы создали в Практике 2 для запроса информации о каждом отделе из таблицы departments и отобразите информацию. Используйте ассоциативный массив INDEX BY.
a) Загрузите lab_06_02_soln.sql.

b) Вы объявляли ассоциативный массив как тип departments.department_name. Измените объявление ассоциативного массива для временного хранения числа, названия и местоположения всех отделов. Используйте %ROWTYPE-атрибут.

c) Измените оператор SELECT для запроса информации по всем отделам из таблицы departments для сохранения значений в ассоциативном массиве.

d) Используя другой цикл, запросите информацию по отделам из ассоциативного массива и выведите её на экран. */


DECLARE
  TYPE dept_table_type IS TABLE OF
    departments%ROWTYPE
    INDEX BY PLS_INTEGER;
  my_dept_table dept_table_type;

  f_loop_count NUMBER := 10;
  v_deptno     NUMBER := 0;
BEGIN
  FOR i IN 1..10 LOOP
    SELECT *
    INTO   my_dept_table(i)
    FROM Departments
    WHERE Department_ID = 10*i;
  END LOOP;

  FOR i IN my_dept_table.FIRST..my_dept_table.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(
         'Department Number: ' || my_dept_table(i).Department_ID
      || ' Department Name: '  || my_dept_table(i).Department_Name
      || ' Manager Id: '       || my_dept_table(i).Manager_ID
      || ' Location Id: '      || my_dept_table(i).Location_ID
    );
  END LOOP;
END;
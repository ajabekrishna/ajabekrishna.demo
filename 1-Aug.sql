SQL> select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3  order by hiredate;
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> /
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> /

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
13-JAN-01          1       17000                                                
07-JUN-02          4       36808                                                
16-AUG-02          1        9000                                                
17-AUG-02          1       12008                                                
07-DEC-02          1       11000                                                
01-MAY-03          1        7900                                                
18-MAY-03          1        3100                                                
17-JUN-03          1       24000                                                
14-JUL-03          1        3600                                                
17-SEP-03          1        4400                                                
17-OCT-03          1        3500                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
27-JAN-04          1        4200                                                
30-JAN-04          1       10000                                                
04-FEB-04          1        4000                                                
17-FEB-04          1       13000                                                
04-MAR-04          1        9500                                                
11-MAY-04          1       11000                                                
14-JUN-04          1        3300                                                
18-JUL-04          1        8000                                                
01-AUG-04          1        9000                                                
01-OCT-04          1       14000                                                
05-JAN-05          1       13500                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
29-JAN-05          1        3100                                                
30-JAN-05          1       10000                                                
16-FEB-05          1        2500                                                
20-FEB-05          1        4100                                                
03-MAR-05          1        3900                                                
10-MAR-05          2       20000                                                
11-MAR-05          1       11500                                                
19-MAR-05          1        8800                                                
24-MAR-05          1        9500                                                
10-APR-05          1        8200                                                
14-JUN-05          1        3800                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
16-JUL-05          1        3200                                                
24-JUL-05          1        2800                                                
13-AUG-05          1        3600                                                
17-AUG-05          1        6000                                                
20-AUG-05          2       12300                                                
21-SEP-05          1       17000                                                
28-SEP-05          1        8200                                                
30-SEP-05          1        7700                                                
10-OCT-05          1        6500                                                
26-OCT-05          1        3200                                                
30-OCT-05          1        2800                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
11-NOV-05          1       10500                                                
15-DEC-05          1        7500                                                
24-DEC-05          1        2900                                                
24-JAN-06          2       12800                                                
12-FEB-06          1        2700                                                
23-FEB-06          1        3100                                                
07-MAR-06          1        7800                                                
15-MAR-06          1        2600                                                
23-MAR-06          1       10000                                                
24-MAR-06          1        8600                                                
30-MAR-06          1        8000                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
06-APR-06          1        2500                                                
23-APR-06          1        8400                                                
24-APR-06          1        3100                                                
23-MAY-06          1        3000                                                
24-JUN-06          1        3400                                                
01-JUL-06          1        3200                                                
09-JUL-06          1        2500                                                
11-JUL-06          1        2900                                                
26-AUG-06          1        2900                                                
28-SEP-06          1        2700                                                
03-NOV-06          1        7000                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
15-NOV-06          1        2600                                                
09-DEC-06          1        7500                                                
14-JAN-07          1        2400                                                
07-FEB-07          1        3000                                                
23-FEB-07          1        7400                                                
17-MAR-07          1        2800                                                
19-MAR-07          1        9500                                                
24-MAR-07          1        7300                                                
10-APR-07          1        2100                                                
24-MAY-07          1        7000                                                
21-JUN-07          2        5100                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
10-AUG-07          1        2500                                                
15-OCT-07          1       11000                                                
16-NOV-07          1        5800                                                
23-NOV-07          1        7000                                                
07-DEC-07          1        6900                                                
12-DEC-07          1        2400                                                
19-DEC-07          1        2500                                                
04-JAN-08          1        6200                                                
13-JAN-08          1        2600                                                
24-JAN-08          1        7200                                                
29-JAN-08          1       10500                                                

HIRE_DATE      STAFF SUM(SALARY)                                                
--------- ---------- -----------                                                
03-FEB-08          1        2800                                                
06-FEB-08          1        2200                                                
23-FEB-08          1        6800                                                
08-MAR-08          1        2200                                                
24-MAR-08          1        6400                                                
21-APR-08          2       12300                                                
22-JUL-25          5       28800                                                

95 rows selected.

SQL> set pagesize 200
SQL> set linesize 200
SQL> /

HIRE_DATE      STAFF SUM(SALARY)                                                                                                                                                                        
--------- ---------- -----------                                                                                                                                                                        
13-JAN-01          1       17000                                                                                                                                                                        
07-JUN-02          4       36808                                                                                                                                                                        
16-AUG-02          1        9000                                                                                                                                                                        
17-AUG-02          1       12008                                                                                                                                                                        
07-DEC-02          1       11000                                                                                                                                                                        
01-MAY-03          1        7900                                                                                                                                                                        
18-MAY-03          1        3100                                                                                                                                                                        
17-JUN-03          1       24000                                                                                                                                                                        
14-JUL-03          1        3600                                                                                                                                                                        
17-SEP-03          1        4400                                                                                                                                                                        
17-OCT-03          1        3500                                                                                                                                                                        
27-JAN-04          1        4200                                                                                                                                                                        
30-JAN-04          1       10000                                                                                                                                                                        
04-FEB-04          1        4000                                                                                                                                                                        
17-FEB-04          1       13000                                                                                                                                                                        
04-MAR-04          1        9500                                                                                                                                                                        
11-MAY-04          1       11000                                                                                                                                                                        
14-JUN-04          1        3300                                                                                                                                                                        
18-JUL-04          1        8000                                                                                                                                                                        
01-AUG-04          1        9000                                                                                                                                                                        
01-OCT-04          1       14000                                                                                                                                                                        
05-JAN-05          1       13500                                                                                                                                                                        
29-JAN-05          1        3100                                                                                                                                                                        
30-JAN-05          1       10000                                                                                                                                                                        
16-FEB-05          1        2500                                                                                                                                                                        
20-FEB-05          1        4100                                                                                                                                                                        
03-MAR-05          1        3900                                                                                                                                                                        
10-MAR-05          2       20000                                                                                                                                                                        
11-MAR-05          1       11500                                                                                                                                                                        
19-MAR-05          1        8800                                                                                                                                                                        
24-MAR-05          1        9500                                                                                                                                                                        
10-APR-05          1        8200                                                                                                                                                                        
14-JUN-05          1        3800                                                                                                                                                                        
16-JUL-05          1        3200                                                                                                                                                                        
24-JUL-05          1        2800                                                                                                                                                                        
13-AUG-05          1        3600                                                                                                                                                                        
17-AUG-05          1        6000                                                                                                                                                                        
20-AUG-05          2       12300                                                                                                                                                                        
21-SEP-05          1       17000                                                                                                                                                                        
28-SEP-05          1        8200                                                                                                                                                                        
30-SEP-05          1        7700                                                                                                                                                                        
10-OCT-05          1        6500                                                                                                                                                                        
26-OCT-05          1        3200                                                                                                                                                                        
30-OCT-05          1        2800                                                                                                                                                                        
11-NOV-05          1       10500                                                                                                                                                                        
15-DEC-05          1        7500                                                                                                                                                                        
24-DEC-05          1        2900                                                                                                                                                                        
24-JAN-06          2       12800                                                                                                                                                                        
12-FEB-06          1        2700                                                                                                                                                                        
23-FEB-06          1        3100                                                                                                                                                                        
07-MAR-06          1        7800                                                                                                                                                                        
15-MAR-06          1        2600                                                                                                                                                                        
23-MAR-06          1       10000                                                                                                                                                                        
24-MAR-06          1        8600                                                                                                                                                                        
30-MAR-06          1        8000                                                                                                                                                                        
06-APR-06          1        2500                                                                                                                                                                        
23-APR-06          1        8400                                                                                                                                                                        
24-APR-06          1        3100                                                                                                                                                                        
23-MAY-06          1        3000                                                                                                                                                                        
24-JUN-06          1        3400                                                                                                                                                                        
01-JUL-06          1        3200                                                                                                                                                                        
09-JUL-06          1        2500                                                                                                                                                                        
11-JUL-06          1        2900                                                                                                                                                                        
26-AUG-06          1        2900                                                                                                                                                                        
28-SEP-06          1        2700                                                                                                                                                                        
03-NOV-06          1        7000                                                                                                                                                                        
15-NOV-06          1        2600                                                                                                                                                                        
09-DEC-06          1        7500                                                                                                                                                                        
14-JAN-07          1        2400                                                                                                                                                                        
07-FEB-07          1        3000                                                                                                                                                                        
23-FEB-07          1        7400                                                                                                                                                                        
17-MAR-07          1        2800                                                                                                                                                                        
19-MAR-07          1        9500                                                                                                                                                                        
24-MAR-07          1        7300                                                                                                                                                                        
10-APR-07          1        2100                                                                                                                                                                        
24-MAY-07          1        7000                                                                                                                                                                        
21-JUN-07          2        5100                                                                                                                                                                        
10-AUG-07          1        2500                                                                                                                                                                        
15-OCT-07          1       11000                                                                                                                                                                        
16-NOV-07          1        5800                                                                                                                                                                        
23-NOV-07          1        7000                                                                                                                                                                        
07-DEC-07          1        6900                                                                                                                                                                        
12-DEC-07          1        2400                                                                                                                                                                        
19-DEC-07          1        2500                                                                                                                                                                        
04-JAN-08          1        6200                                                                                                                                                                        
13-JAN-08          1        2600                                                                                                                                                                        
24-JAN-08          1        7200                                                                                                                                                                        
29-JAN-08          1       10500                                                                                                                                                                        
03-FEB-08          1        2800                                                                                                                                                                        
06-FEB-08          1        2200                                                                                                                                                                        
23-FEB-08          1        6800                                                                                                                                                                        
08-MAR-08          1        2200                                                                                                                                                                        
24-MAR-08          1        6400                                                                                                                                                                        
21-APR-08          2       12300                                                                                                                                                                        
22-JUL-25          5       28800                                                                                                                                                                        

95 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> alter session set nls_date_format='DD-MON-YYYY HH:MI:SS';

Session altered.

SQL> select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3  order by hiredate;
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ED
Wrote file afiedt.buf

  1  select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3* order by hiredate
SQL> /
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> /

HIRE_DATE                 STAFF SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
13-JAN-2001 12:00:00          1       17000                                                                                                                                                             
07-JUN-2002 12:00:00          4       36808                                                                                                                                                             
16-AUG-2002 12:00:00          1        9000                                                                                                                                                             
17-AUG-2002 12:00:00          1       12008                                                                                                                                                             
07-DEC-2002 12:00:00          1       11000                                                                                                                                                             
01-MAY-2003 12:00:00          1        7900                                                                                                                                                             
18-MAY-2003 12:00:00          1        3100                                                                                                                                                             
17-JUN-2003 12:00:00          1       24000                                                                                                                                                             
14-JUL-2003 12:00:00          1        3600                                                                                                                                                             
17-SEP-2003 12:00:00          1        4400                                                                                                                                                             
17-OCT-2003 12:00:00          1        3500                                                                                                                                                             
27-JAN-2004 12:00:00          1        4200                                                                                                                                                             
30-JAN-2004 12:00:00          1       10000                                                                                                                                                             
04-FEB-2004 12:00:00          1        4000                                                                                                                                                             
17-FEB-2004 12:00:00          1       13000                                                                                                                                                             
04-MAR-2004 12:00:00          1        9500                                                                                                                                                             
11-MAY-2004 12:00:00          1       11000                                                                                                                                                             
14-JUN-2004 12:00:00          1        3300                                                                                                                                                             
18-JUL-2004 12:00:00          1        8000                                                                                                                                                             
01-AUG-2004 12:00:00          1        9000                                                                                                                                                             
01-OCT-2004 12:00:00          1       14000                                                                                                                                                             
05-JAN-2005 12:00:00          1       13500                                                                                                                                                             
29-JAN-2005 12:00:00          1        3100                                                                                                                                                             
30-JAN-2005 12:00:00          1       10000                                                                                                                                                             
16-FEB-2005 12:00:00          1        2500                                                                                                                                                             
20-FEB-2005 12:00:00          1        4100                                                                                                                                                             
03-MAR-2005 12:00:00          1        3900                                                                                                                                                             
10-MAR-2005 12:00:00          2       20000                                                                                                                                                             
11-MAR-2005 12:00:00          1       11500                                                                                                                                                             
19-MAR-2005 12:00:00          1        8800                                                                                                                                                             
24-MAR-2005 12:00:00          1        9500                                                                                                                                                             
10-APR-2005 12:00:00          1        8200                                                                                                                                                             
14-JUN-2005 12:00:00          1        3800                                                                                                                                                             
16-JUL-2005 12:00:00          1        3200                                                                                                                                                             
24-JUL-2005 12:00:00          1        2800                                                                                                                                                             
13-AUG-2005 12:00:00          1        3600                                                                                                                                                             
17-AUG-2005 12:00:00          1        6000                                                                                                                                                             
20-AUG-2005 12:00:00          2       12300                                                                                                                                                             
21-SEP-2005 12:00:00          1       17000                                                                                                                                                             
28-SEP-2005 12:00:00          1        8200                                                                                                                                                             
30-SEP-2005 12:00:00          1        7700                                                                                                                                                             
10-OCT-2005 12:00:00          1        6500                                                                                                                                                             
26-OCT-2005 12:00:00          1        3200                                                                                                                                                             
30-OCT-2005 12:00:00          1        2800                                                                                                                                                             
11-NOV-2005 12:00:00          1       10500                                                                                                                                                             
15-DEC-2005 12:00:00          1        7500                                                                                                                                                             
24-DEC-2005 12:00:00          1        2900                                                                                                                                                             
24-JAN-2006 12:00:00          2       12800                                                                                                                                                             
12-FEB-2006 12:00:00          1        2700                                                                                                                                                             
23-FEB-2006 12:00:00          1        3100                                                                                                                                                             
07-MAR-2006 12:00:00          1        7800                                                                                                                                                             
15-MAR-2006 12:00:00          1        2600                                                                                                                                                             
23-MAR-2006 12:00:00          1       10000                                                                                                                                                             
24-MAR-2006 12:00:00          1        8600                                                                                                                                                             
30-MAR-2006 12:00:00          1        8000                                                                                                                                                             
06-APR-2006 12:00:00          1        2500                                                                                                                                                             
23-APR-2006 12:00:00          1        8400                                                                                                                                                             
24-APR-2006 12:00:00          1        3100                                                                                                                                                             
23-MAY-2006 12:00:00          1        3000                                                                                                                                                             
24-JUN-2006 12:00:00          1        3400                                                                                                                                                             
01-JUL-2006 12:00:00          1        3200                                                                                                                                                             
09-JUL-2006 12:00:00          1        2500                                                                                                                                                             
11-JUL-2006 12:00:00          1        2900                                                                                                                                                             
26-AUG-2006 12:00:00          1        2900                                                                                                                                                             
28-SEP-2006 12:00:00          1        2700                                                                                                                                                             
03-NOV-2006 12:00:00          1        7000                                                                                                                                                             
15-NOV-2006 12:00:00          1        2600                                                                                                                                                             
09-DEC-2006 12:00:00          1        7500                                                                                                                                                             
14-JAN-2007 12:00:00          1        2400                                                                                                                                                             
07-FEB-2007 12:00:00          1        3000                                                                                                                                                             
23-FEB-2007 12:00:00          1        7400                                                                                                                                                             
17-MAR-2007 12:00:00          1        2800                                                                                                                                                             
19-MAR-2007 12:00:00          1        9500                                                                                                                                                             
24-MAR-2007 12:00:00          1        7300                                                                                                                                                             
10-APR-2007 12:00:00          1        2100                                                                                                                                                             
24-MAY-2007 12:00:00          1        7000                                                                                                                                                             
21-JUN-2007 12:00:00          2        5100                                                                                                                                                             
10-AUG-2007 12:00:00          1        2500                                                                                                                                                             
15-OCT-2007 12:00:00          1       11000                                                                                                                                                             
16-NOV-2007 12:00:00          1        5800                                                                                                                                                             
23-NOV-2007 12:00:00          1        7000                                                                                                                                                             
07-DEC-2007 12:00:00          1        6900                                                                                                                                                             
12-DEC-2007 12:00:00          1        2400                                                                                                                                                             
19-DEC-2007 12:00:00          1        2500                                                                                                                                                             
04-JAN-2008 12:00:00          1        6200                                                                                                                                                             
13-JAN-2008 12:00:00          1        2600                                                                                                                                                             
24-JAN-2008 12:00:00          1        7200                                                                                                                                                             
29-JAN-2008 12:00:00          1       10500                                                                                                                                                             
03-FEB-2008 12:00:00          1        2800                                                                                                                                                             
06-FEB-2008 12:00:00          1        2200                                                                                                                                                             
23-FEB-2008 12:00:00          1        6800                                                                                                                                                             
08-MAR-2008 12:00:00          1        2200                                                                                                                                                             
24-MAR-2008 12:00:00          1        6400                                                                                                                                                             
21-APR-2008 12:00:00          2       12300                                                                                                                                                             
22-JUL-2025 02:28:43          5       28800                                                                                                                                                             

95 rows selected.

SQL> select * from employees where hiredate='22-JUL-2025';
select * from employees where hiredate='22-JUL-2025'
                              *
ERROR at line 1:
ORA-00904: "HIREDATE": invalid identifier 


SQL> select * from employees where hire_date='22-JUL-2025';

no rows selected

SQL> select * from employees where hire_date='22-JUL-2025 02:28:43';

no rows selected

SQL> select * from employees where trunc(hire_date)='22-JUL-2025';

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE            JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID            
----------- -------------------- ------------------------- ------------------------- -------------------- -------------------- ---------- ---------- -------------- ---------- -------------            
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         22-JUL-2025 02:28:43 IT_PROG          9000                       102            60            
        104 Bruce                Ernst                     BERNST                    590.423.4568         22-JUL-2025 02:28:43 IT_PROG          6000                       103            60            
        105 David                Austin                    DAUSTIN                   590.423.4569         22-JUL-2025 02:28:43 IT_PROG          4800                       103            60            
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         22-JUL-2025 02:28:43 IT_PROG          4800                       103            60            
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         22-JUL-2025 02:28:43 IT_PROG          4200                       103            60            

SQL> update employees set hire_date=sysdate where employee_id in(103,104,105);

3 rows updated.

SQL> select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3  order by hiredate;
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> l
  1  select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3* order by hiredate
SQL> 1
  1* select hire_date,count(*) staff sum(salary) from employees
SQL> c/staff/staff,
  1* select hire_date,count(*) staff, sum(salary) from employees
SQL> l
  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hiredate
  3* order by hiredate
SQL> /
order by hiredate
         *
ERROR at line 3:
ORA-00904: "HIREDATE": invalid identifier 


SQL> l
  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hiredate
  3* order by hiredate
SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> /

HIRE_DATE                 STAFF SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
13-JAN-2001 12:00:00          1       17000                                                                                                                                                             
07-JUN-2002 12:00:00          4       36808                                                                                                                                                             
16-AUG-2002 12:00:00          1        9000                                                                                                                                                             
17-AUG-2002 12:00:00          1       12008                                                                                                                                                             
07-DEC-2002 12:00:00          1       11000                                                                                                                                                             
01-MAY-2003 12:00:00          1        7900                                                                                                                                                             
18-MAY-2003 12:00:00          1        3100                                                                                                                                                             
17-JUN-2003 12:00:00          1       24000                                                                                                                                                             
14-JUL-2003 12:00:00          1        3600                                                                                                                                                             
17-SEP-2003 12:00:00          1        4400                                                                                                                                                             
17-OCT-2003 12:00:00          1        3500                                                                                                                                                             
27-JAN-2004 12:00:00          1        4200                                                                                                                                                             
30-JAN-2004 12:00:00          1       10000                                                                                                                                                             
04-FEB-2004 12:00:00          1        4000                                                                                                                                                             
17-FEB-2004 12:00:00          1       13000                                                                                                                                                             
04-MAR-2004 12:00:00          1        9500                                                                                                                                                             
11-MAY-2004 12:00:00          1       11000                                                                                                                                                             
14-JUN-2004 12:00:00          1        3300                                                                                                                                                             
18-JUL-2004 12:00:00          1        8000                                                                                                                                                             
01-AUG-2004 12:00:00          1        9000                                                                                                                                                             
01-OCT-2004 12:00:00          1       14000                                                                                                                                                             
05-JAN-2005 12:00:00          1       13500                                                                                                                                                             
29-JAN-2005 12:00:00          1        3100                                                                                                                                                             
30-JAN-2005 12:00:00          1       10000                                                                                                                                                             
16-FEB-2005 12:00:00          1        2500                                                                                                                                                             
20-FEB-2005 12:00:00          1        4100                                                                                                                                                             
03-MAR-2005 12:00:00          1        3900                                                                                                                                                             
10-MAR-2005 12:00:00          2       20000                                                                                                                                                             
11-MAR-2005 12:00:00          1       11500                                                                                                                                                             
19-MAR-2005 12:00:00          1        8800                                                                                                                                                             
24-MAR-2005 12:00:00          1        9500                                                                                                                                                             
10-APR-2005 12:00:00          1        8200                                                                                                                                                             
14-JUN-2005 12:00:00          1        3800                                                                                                                                                             
16-JUL-2005 12:00:00          1        3200                                                                                                                                                             
24-JUL-2005 12:00:00          1        2800                                                                                                                                                             
13-AUG-2005 12:00:00          1        3600                                                                                                                                                             
17-AUG-2005 12:00:00          1        6000                                                                                                                                                             
20-AUG-2005 12:00:00          2       12300                                                                                                                                                             
21-SEP-2005 12:00:00          1       17000                                                                                                                                                             
28-SEP-2005 12:00:00          1        8200                                                                                                                                                             
30-SEP-2005 12:00:00          1        7700                                                                                                                                                             
10-OCT-2005 12:00:00          1        6500                                                                                                                                                             
26-OCT-2005 12:00:00          1        3200                                                                                                                                                             
30-OCT-2005 12:00:00          1        2800                                                                                                                                                             
11-NOV-2005 12:00:00          1       10500                                                                                                                                                             
15-DEC-2005 12:00:00          1        7500                                                                                                                                                             
24-DEC-2005 12:00:00          1        2900                                                                                                                                                             
24-JAN-2006 12:00:00          2       12800                                                                                                                                                             
12-FEB-2006 12:00:00          1        2700                                                                                                                                                             
23-FEB-2006 12:00:00          1        3100                                                                                                                                                             
07-MAR-2006 12:00:00          1        7800                                                                                                                                                             
15-MAR-2006 12:00:00          1        2600                                                                                                                                                             
23-MAR-2006 12:00:00          1       10000                                                                                                                                                             
24-MAR-2006 12:00:00          1        8600                                                                                                                                                             
30-MAR-2006 12:00:00          1        8000                                                                                                                                                             
06-APR-2006 12:00:00          1        2500                                                                                                                                                             
23-APR-2006 12:00:00          1        8400                                                                                                                                                             
24-APR-2006 12:00:00          1        3100                                                                                                                                                             
23-MAY-2006 12:00:00          1        3000                                                                                                                                                             
24-JUN-2006 12:00:00          1        3400                                                                                                                                                             
01-JUL-2006 12:00:00          1        3200                                                                                                                                                             
09-JUL-2006 12:00:00          1        2500                                                                                                                                                             
11-JUL-2006 12:00:00          1        2900                                                                                                                                                             
26-AUG-2006 12:00:00          1        2900                                                                                                                                                             
28-SEP-2006 12:00:00          1        2700                                                                                                                                                             
03-NOV-2006 12:00:00          1        7000                                                                                                                                                             
15-NOV-2006 12:00:00          1        2600                                                                                                                                                             
09-DEC-2006 12:00:00          1        7500                                                                                                                                                             
14-JAN-2007 12:00:00          1        2400                                                                                                                                                             
07-FEB-2007 12:00:00          1        3000                                                                                                                                                             
23-FEB-2007 12:00:00          1        7400                                                                                                                                                             
17-MAR-2007 12:00:00          1        2800                                                                                                                                                             
19-MAR-2007 12:00:00          1        9500                                                                                                                                                             
24-MAR-2007 12:00:00          1        7300                                                                                                                                                             
10-APR-2007 12:00:00          1        2100                                                                                                                                                             
24-MAY-2007 12:00:00          1        7000                                                                                                                                                             
21-JUN-2007 12:00:00          2        5100                                                                                                                                                             
10-AUG-2007 12:00:00          1        2500                                                                                                                                                             
15-OCT-2007 12:00:00          1       11000                                                                                                                                                             
16-NOV-2007 12:00:00          1        5800                                                                                                                                                             
23-NOV-2007 12:00:00          1        7000                                                                                                                                                             
07-DEC-2007 12:00:00          1        6900                                                                                                                                                             
12-DEC-2007 12:00:00          1        2400                                                                                                                                                             
19-DEC-2007 12:00:00          1        2500                                                                                                                                                             
04-JAN-2008 12:00:00          1        6200                                                                                                                                                             
13-JAN-2008 12:00:00          1        2600                                                                                                                                                             
24-JAN-2008 12:00:00          1        7200                                                                                                                                                             
29-JAN-2008 12:00:00          1       10500                                                                                                                                                             
03-FEB-2008 12:00:00          1        2800                                                                                                                                                             
06-FEB-2008 12:00:00          1        2200                                                                                                                                                             
23-FEB-2008 12:00:00          1        6800                                                                                                                                                             
08-MAR-2008 12:00:00          1        2200                                                                                                                                                             
24-MAR-2008 12:00:00          1        6400                                                                                                                                                             
21-APR-2008 12:00:00          2       12300                                                                                                                                                             
22-JUL-2025 02:28:43          2        9000                                                                                                                                                             
01-AUG-2025 02:13:17          3       19800                                                                                                                                                             

96 rows selected.

SQL> update employees set hire_date=sysdate where employee_id in(103);

1 row updated.

SQL> select hire_date,count(*) staff sum(salary) from employees
  2  group by hiredate
  3  order by hiredate;
select hire_date,count(*) staff sum(salary) from employees
                                *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select hire_date,count(*) staff, sum(salary) from employees
  2  group by hire_date
  3* order by hire_date
SQL> /

HIRE_DATE                 STAFF SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
13-JAN-2001 12:00:00          1       17000                                                                                                                                                             
07-JUN-2002 12:00:00          4       36808                                                                                                                                                             
16-AUG-2002 12:00:00          1        9000                                                                                                                                                             
17-AUG-2002 12:00:00          1       12008                                                                                                                                                             
07-DEC-2002 12:00:00          1       11000                                                                                                                                                             
01-MAY-2003 12:00:00          1        7900                                                                                                                                                             
18-MAY-2003 12:00:00          1        3100                                                                                                                                                             
17-JUN-2003 12:00:00          1       24000                                                                                                                                                             
14-JUL-2003 12:00:00          1        3600                                                                                                                                                             
17-SEP-2003 12:00:00          1        4400                                                                                                                                                             
17-OCT-2003 12:00:00          1        3500                                                                                                                                                             
27-JAN-2004 12:00:00          1        4200                                                                                                                                                             
30-JAN-2004 12:00:00          1       10000                                                                                                                                                             
04-FEB-2004 12:00:00          1        4000                                                                                                                                                             
17-FEB-2004 12:00:00          1       13000                                                                                                                                                             
04-MAR-2004 12:00:00          1        9500                                                                                                                                                             
11-MAY-2004 12:00:00          1       11000                                                                                                                                                             
14-JUN-2004 12:00:00          1        3300                                                                                                                                                             
18-JUL-2004 12:00:00          1        8000                                                                                                                                                             
01-AUG-2004 12:00:00          1        9000                                                                                                                                                             
01-OCT-2004 12:00:00          1       14000                                                                                                                                                             
05-JAN-2005 12:00:00          1       13500                                                                                                                                                             
29-JAN-2005 12:00:00          1        3100                                                                                                                                                             
30-JAN-2005 12:00:00          1       10000                                                                                                                                                             
16-FEB-2005 12:00:00          1        2500                                                                                                                                                             
20-FEB-2005 12:00:00          1        4100                                                                                                                                                             
03-MAR-2005 12:00:00          1        3900                                                                                                                                                             
10-MAR-2005 12:00:00          2       20000                                                                                                                                                             
11-MAR-2005 12:00:00          1       11500                                                                                                                                                             
19-MAR-2005 12:00:00          1        8800                                                                                                                                                             
24-MAR-2005 12:00:00          1        9500                                                                                                                                                             
10-APR-2005 12:00:00          1        8200                                                                                                                                                             
14-JUN-2005 12:00:00          1        3800                                                                                                                                                             
16-JUL-2005 12:00:00          1        3200                                                                                                                                                             
24-JUL-2005 12:00:00          1        2800                                                                                                                                                             
13-AUG-2005 12:00:00          1        3600                                                                                                                                                             
17-AUG-2005 12:00:00          1        6000                                                                                                                                                             
20-AUG-2005 12:00:00          2       12300                                                                                                                                                             
21-SEP-2005 12:00:00          1       17000                                                                                                                                                             
28-SEP-2005 12:00:00          1        8200                                                                                                                                                             
30-SEP-2005 12:00:00          1        7700                                                                                                                                                             
10-OCT-2005 12:00:00          1        6500                                                                                                                                                             
26-OCT-2005 12:00:00          1        3200                                                                                                                                                             
30-OCT-2005 12:00:00          1        2800                                                                                                                                                             
11-NOV-2005 12:00:00          1       10500                                                                                                                                                             
15-DEC-2005 12:00:00          1        7500                                                                                                                                                             
24-DEC-2005 12:00:00          1        2900                                                                                                                                                             
24-JAN-2006 12:00:00          2       12800                                                                                                                                                             
12-FEB-2006 12:00:00          1        2700                                                                                                                                                             
23-FEB-2006 12:00:00          1        3100                                                                                                                                                             
07-MAR-2006 12:00:00          1        7800                                                                                                                                                             
15-MAR-2006 12:00:00          1        2600                                                                                                                                                             
23-MAR-2006 12:00:00          1       10000                                                                                                                                                             
24-MAR-2006 12:00:00          1        8600                                                                                                                                                             
30-MAR-2006 12:00:00          1        8000                                                                                                                                                             
06-APR-2006 12:00:00          1        2500                                                                                                                                                             
23-APR-2006 12:00:00          1        8400                                                                                                                                                             
24-APR-2006 12:00:00          1        3100                                                                                                                                                             
23-MAY-2006 12:00:00          1        3000                                                                                                                                                             
24-JUN-2006 12:00:00          1        3400                                                                                                                                                             
01-JUL-2006 12:00:00          1        3200                                                                                                                                                             
09-JUL-2006 12:00:00          1        2500                                                                                                                                                             
11-JUL-2006 12:00:00          1        2900                                                                                                                                                             
26-AUG-2006 12:00:00          1        2900                                                                                                                                                             
28-SEP-2006 12:00:00          1        2700                                                                                                                                                             
03-NOV-2006 12:00:00          1        7000                                                                                                                                                             
15-NOV-2006 12:00:00          1        2600                                                                                                                                                             
09-DEC-2006 12:00:00          1        7500                                                                                                                                                             
14-JAN-2007 12:00:00          1        2400                                                                                                                                                             
07-FEB-2007 12:00:00          1        3000                                                                                                                                                             
23-FEB-2007 12:00:00          1        7400                                                                                                                                                             
17-MAR-2007 12:00:00          1        2800                                                                                                                                                             
19-MAR-2007 12:00:00          1        9500                                                                                                                                                             
24-MAR-2007 12:00:00          1        7300                                                                                                                                                             
10-APR-2007 12:00:00          1        2100                                                                                                                                                             
24-MAY-2007 12:00:00          1        7000                                                                                                                                                             
21-JUN-2007 12:00:00          2        5100                                                                                                                                                             
10-AUG-2007 12:00:00          1        2500                                                                                                                                                             
15-OCT-2007 12:00:00          1       11000                                                                                                                                                             
16-NOV-2007 12:00:00          1        5800                                                                                                                                                             
23-NOV-2007 12:00:00          1        7000                                                                                                                                                             
07-DEC-2007 12:00:00          1        6900                                                                                                                                                             
12-DEC-2007 12:00:00          1        2400                                                                                                                                                             
19-DEC-2007 12:00:00          1        2500                                                                                                                                                             
04-JAN-2008 12:00:00          1        6200                                                                                                                                                             
13-JAN-2008 12:00:00          1        2600                                                                                                                                                             
24-JAN-2008 12:00:00          1        7200                                                                                                                                                             
29-JAN-2008 12:00:00          1       10500                                                                                                                                                             
03-FEB-2008 12:00:00          1        2800                                                                                                                                                             
06-FEB-2008 12:00:00          1        2200                                                                                                                                                             
23-FEB-2008 12:00:00          1        6800                                                                                                                                                             
08-MAR-2008 12:00:00          1        2200                                                                                                                                                             
24-MAR-2008 12:00:00          1        6400                                                                                                                                                             
21-APR-2008 12:00:00          2       12300                                                                                                                                                             
22-JUL-2025 02:28:43          2        9000                                                                                                                                                             
01-AUG-2025 02:13:17          2       10800                                                                                                                                                             
01-AUG-2025 02:14:43          1        9000                                                                                                                                                             

97 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  UPDATE employees
  2* SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MM-DD HH24:MI:SS');
SQL> /
SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MM-DD HH24:MI:SS');
                                                                            *
ERROR at line 2:
ORA-00911: invalid character 


SQL> ef
SP2-0042: unknown command "ef" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  UPDATE employees
  2* SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MON-DD HH:MI:SS');
SQL> ed
Wrote file afiedt.buf

  1  UPDATE mycopy
  2* SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MON-DD HH:MI:SS');
SQL> /
SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MON-DD HH:MI:SS');
                                                                           *
ERROR at line 2:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1  UPDATE mycopy
  2* SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MON-DD HH:MI:SS')
SQL> /
SET hire_date = TO_TIMESTAMP('2024-01-15 09:45:00', 'YYYY-MON-DD HH:MI:SS')
                             *
ERROR at line 2:
ORA-01843: not a valid month 


SQL> ed
Wrote file afiedt.buf

  1  UPDATE mycopy
  2* SET hire_date = TO_TIMESTAMP('15-FEB-2024 09:45:00', 'YYYY-MON-DD HH:MI:SS')
SQL> /
SET hire_date = TO_TIMESTAMP('15-FEB-2024 09:45:00', 'YYYY-MON-DD HH:MI:SS')
                             *
ERROR at line 2:
ORA-01849: hour must be between 1 and 12 


SQL> ed
Wrote file afiedt.buf

  1  UPDATE mycopy
  2* SET hire_date = TO_TIMESTAMP('15-JAN-2024 09:45:00', 'YYYY-MON-DD HH:MI:SS')
SQL> /
SET hire_date = TO_TIMESTAMP('15-JAN-2024 09:45:00', 'YYYY-MON-DD HH:MI:SS')
                             *
ERROR at line 2:
ORA-01849: hour must be between 1 and 12 


SQL> ED
Wrote file afiedt.buf

  1  UPDATE mycopy
  2* SET hire_date = TO_TIMESTAMP('15-JAN-2024 09:45:00', 'DD-MON-YYYY HH:MI:SS')
SQL> /

146 rows updated.

SQL> SELECT HIRE_DATE,COUNT(*),SUM(SALARY) FROM EMPLOYEES
  2  GROUP BY HIRE_DATE
  3  ORDER BY HIRE_DATE;

HIRE_DATE              COUNT(*) SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
13-JAN-2001 12:00:00          1       17000                                                                                                                                                             
07-JUN-2002 12:00:00          4       36808                                                                                                                                                             
16-AUG-2002 12:00:00          1        9000                                                                                                                                                             
17-AUG-2002 12:00:00          1       12008                                                                                                                                                             
07-DEC-2002 12:00:00          1       11000                                                                                                                                                             
01-MAY-2003 12:00:00          1        7900                                                                                                                                                             
18-MAY-2003 12:00:00          1        3100                                                                                                                                                             
17-JUN-2003 12:00:00          1       24000                                                                                                                                                             
14-JUL-2003 12:00:00          1        3600                                                                                                                                                             
17-SEP-2003 12:00:00          1        4400                                                                                                                                                             
17-OCT-2003 12:00:00          1        3500                                                                                                                                                             
27-JAN-2004 12:00:00          1        4200                                                                                                                                                             
30-JAN-2004 12:00:00          1       10000                                                                                                                                                             
04-FEB-2004 12:00:00          1        4000                                                                                                                                                             
17-FEB-2004 12:00:00          1       13000                                                                                                                                                             
04-MAR-2004 12:00:00          1        9500                                                                                                                                                             
11-MAY-2004 12:00:00          1       11000                                                                                                                                                             
14-JUN-2004 12:00:00          1        3300                                                                                                                                                             
18-JUL-2004 12:00:00          1        8000                                                                                                                                                             
01-AUG-2004 12:00:00          1        9000                                                                                                                                                             
01-OCT-2004 12:00:00          1       14000                                                                                                                                                             
05-JAN-2005 12:00:00          1       13500                                                                                                                                                             
29-JAN-2005 12:00:00          1        3100                                                                                                                                                             
30-JAN-2005 12:00:00          1       10000                                                                                                                                                             
16-FEB-2005 12:00:00          1        2500                                                                                                                                                             
20-FEB-2005 12:00:00          1        4100                                                                                                                                                             
03-MAR-2005 12:00:00          1        3900                                                                                                                                                             
10-MAR-2005 12:00:00          2       20000                                                                                                                                                             
11-MAR-2005 12:00:00          1       11500                                                                                                                                                             
19-MAR-2005 12:00:00          1        8800                                                                                                                                                             
24-MAR-2005 12:00:00          1        9500                                                                                                                                                             
10-APR-2005 12:00:00          1        8200                                                                                                                                                             
14-JUN-2005 12:00:00          1        3800                                                                                                                                                             
16-JUL-2005 12:00:00          1        3200                                                                                                                                                             
24-JUL-2005 12:00:00          1        2800                                                                                                                                                             
13-AUG-2005 12:00:00          1        3600                                                                                                                                                             
17-AUG-2005 12:00:00          1        6000                                                                                                                                                             
20-AUG-2005 12:00:00          2       12300                                                                                                                                                             
21-SEP-2005 12:00:00          1       17000                                                                                                                                                             
28-SEP-2005 12:00:00          1        8200                                                                                                                                                             
30-SEP-2005 12:00:00          1        7700                                                                                                                                                             
10-OCT-2005 12:00:00          1        6500                                                                                                                                                             
26-OCT-2005 12:00:00          1        3200                                                                                                                                                             
30-OCT-2005 12:00:00          1        2800                                                                                                                                                             
11-NOV-2005 12:00:00          1       10500                                                                                                                                                             
15-DEC-2005 12:00:00          1        7500                                                                                                                                                             
24-DEC-2005 12:00:00          1        2900                                                                                                                                                             
24-JAN-2006 12:00:00          2       12800                                                                                                                                                             
12-FEB-2006 12:00:00          1        2700                                                                                                                                                             
23-FEB-2006 12:00:00          1        3100                                                                                                                                                             
07-MAR-2006 12:00:00          1        7800                                                                                                                                                             
15-MAR-2006 12:00:00          1        2600                                                                                                                                                             
23-MAR-2006 12:00:00          1       10000                                                                                                                                                             
24-MAR-2006 12:00:00          1        8600                                                                                                                                                             
30-MAR-2006 12:00:00          1        8000                                                                                                                                                             
06-APR-2006 12:00:00          1        2500                                                                                                                                                             
23-APR-2006 12:00:00          1        8400                                                                                                                                                             
24-APR-2006 12:00:00          1        3100                                                                                                                                                             
23-MAY-2006 12:00:00          1        3000                                                                                                                                                             
24-JUN-2006 12:00:00          1        3400                                                                                                                                                             
01-JUL-2006 12:00:00          1        3200                                                                                                                                                             
09-JUL-2006 12:00:00          1        2500                                                                                                                                                             
11-JUL-2006 12:00:00          1        2900                                                                                                                                                             
26-AUG-2006 12:00:00          1        2900                                                                                                                                                             
28-SEP-2006 12:00:00          1        2700                                                                                                                                                             
03-NOV-2006 12:00:00          1        7000                                                                                                                                                             
15-NOV-2006 12:00:00          1        2600                                                                                                                                                             
09-DEC-2006 12:00:00          1        7500                                                                                                                                                             
14-JAN-2007 12:00:00          1        2400                                                                                                                                                             
07-FEB-2007 12:00:00          1        3000                                                                                                                                                             
23-FEB-2007 12:00:00          1        7400                                                                                                                                                             
17-MAR-2007 12:00:00          1        2800                                                                                                                                                             
19-MAR-2007 12:00:00          1        9500                                                                                                                                                             
24-MAR-2007 12:00:00          1        7300                                                                                                                                                             
10-APR-2007 12:00:00          1        2100                                                                                                                                                             
24-MAY-2007 12:00:00          1        7000                                                                                                                                                             
21-JUN-2007 12:00:00          2        5100                                                                                                                                                             
10-AUG-2007 12:00:00          1        2500                                                                                                                                                             
15-OCT-2007 12:00:00          1       11000                                                                                                                                                             
16-NOV-2007 12:00:00          1        5800                                                                                                                                                             
23-NOV-2007 12:00:00          1        7000                                                                                                                                                             
07-DEC-2007 12:00:00          1        6900                                                                                                                                                             
12-DEC-2007 12:00:00          1        2400                                                                                                                                                             
19-DEC-2007 12:00:00          1        2500                                                                                                                                                             
04-JAN-2008 12:00:00          1        6200                                                                                                                                                             
13-JAN-2008 12:00:00          1        2600                                                                                                                                                             
24-JAN-2008 12:00:00          1        7200                                                                                                                                                             
29-JAN-2008 12:00:00          1       10500                                                                                                                                                             
03-FEB-2008 12:00:00          1        2800                                                                                                                                                             
06-FEB-2008 12:00:00          1        2200                                                                                                                                                             
23-FEB-2008 12:00:00          1        6800                                                                                                                                                             
08-MAR-2008 12:00:00          1        2200                                                                                                                                                             
24-MAR-2008 12:00:00          1        6400                                                                                                                                                             
21-APR-2008 12:00:00          2       12300                                                                                                                                                             
22-JUL-2025 02:28:43          2        9000                                                                                                                                                             
01-AUG-2025 02:13:17          2       10800                                                                                                                                                             
01-AUG-2025 02:14:43          1        9000                                                                                                                                                             

97 rows selected.

SQL> SELECT HIRE_DATE,COUNT(*),SUM(SALARY) FROM MYCOPY
  2  GROUP BY HIRE_DATE
  3  ORDER BY HIRE_DATE;

HIRE_DATE              COUNT(*) SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
15-JAN-2024 09:45:00        146     1024716                                                                                                                                                             

SQL> SELECT * FROM MYCOPY;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE            JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID            
----------- -------------------- ------------------------- ------------------------- -------------------- -------------------- ---------- ---------- -------------- ---------- -------------            
        100 Steven               King                      SKING                     515.123.4567         15-JAN-2024 09:45:00 AD_PRES         24000                                      90            
        101 Neena                Kochhar                   NKOCHHAR                  515.123.4568         15-JAN-2024 09:45:00 AD_VP           17000                       100            90            
        102 Lex                  De Haan                   LDEHAAN                   515.123.4569         15-JAN-2024 09:45:00 AD_VP           17000                       100            90            
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         15-JAN-2024 09:45:00 IT_PROG          9000                       102            60            
        104 Bruce                Ernst                     BERNST                    590.423.4568         15-JAN-2024 09:45:00 IT_PROG          6000                       103            60            
        105 David                Austin                    DAUSTIN                   590.423.4569         15-JAN-2024 09:45:00 IT_PROG          4800                       103            60            
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         15-JAN-2024 09:45:00 IT_PROG          4800                       103            60            
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         15-JAN-2024 09:45:00 IT_PROG          4200                       103            60            
        108 Nancy                Greenberg                 NGREENBE                  515.124.4569         15-JAN-2024 09:45:00 FI_MGR          12008                       101           100            
        109 Daniel               Faviet                    DFAVIET                   515.124.4169         15-JAN-2024 09:45:00 FI_ACCOUNT       9000                       108           100            
        110 John                 Chen                      JCHEN                     515.124.4269         15-JAN-2024 09:45:00 FI_ACCOUNT       8200                       108           100            
        111 Ismael               Sciarra                   ISCIARRA                  515.124.4369         15-JAN-2024 09:45:00 FI_ACCOUNT       7700                       108           100            
        112 Jose Manuel          Urman                     JMURMAN                   515.124.4469         15-JAN-2024 09:45:00 FI_ACCOUNT       7800                       108           100            
        113 Luis                 Popp                      LPOPP                     515.124.4567         15-JAN-2024 09:45:00 FI_ACCOUNT       6900                       108           100            
        114 Den                  Raphaely                  DRAPHEAL                  515.127.4561         15-JAN-2024 09:45:00 PU_MAN          11000                       100            30            
        115 Alexander            Khoo                      AKHOO                     515.127.4562         15-JAN-2024 09:45:00 PU_CLERK         3100                       114            30            
        116 Shelli               Baida                     SBAIDA                    515.127.4563         15-JAN-2024 09:45:00 PU_CLERK         2900                       114            30            
        117 Sigal                Tobias                    STOBIAS                   515.127.4564         15-JAN-2024 09:45:00 PU_CLERK         2800                       114            30            
        118 Guy                  Himuro                    GHIMURO                   515.127.4565         15-JAN-2024 09:45:00 PU_CLERK         2600                       114            30            
        119 Karen                Colmenares                KCOLMENA                  515.127.4566         15-JAN-2024 09:45:00 PU_CLERK         2500                       114            30            
        120 Matthew              Weiss                     MWEISS                    650.123.1234         15-JAN-2024 09:45:00 ST_MAN           8000                       100            50            
        121 Adam                 Fripp                     AFRIPP                    650.123.2234         15-JAN-2024 09:45:00 ST_MAN           8200                       100            50            
        122 Payam                Kaufling                  PKAUFLIN                  650.123.3234         15-JAN-2024 09:45:00 ST_MAN           7900                       100            50            
        123 Shanta               Vollman                   SVOLLMAN                  650.123.4234         15-JAN-2024 09:45:00 ST_MAN           6500                       100            50            
        124 Kevin                Mourgos                   KMOURGOS                  650.123.5234         15-JAN-2024 09:45:00 ST_MAN           5800                       100            50            
        125 Julia                Nayer                     JNAYER                    650.124.1214         15-JAN-2024 09:45:00 ST_CLERK         3200                       120            50            
        126 Irene                Mikkilineni               IMIKKILI                  650.124.1224         15-JAN-2024 09:45:00 ST_CLERK         2700                       120            50            
        127 James                Landry                    JLANDRY                   650.124.1334         15-JAN-2024 09:45:00 ST_CLERK         2400                       120            50            
        128 Steven               Markle                    SMARKLE                   650.124.1434         15-JAN-2024 09:45:00 ST_CLERK         2200                       120            50            
        129 Laura                Bissot                    LBISSOT                   650.124.5234         15-JAN-2024 09:45:00 ST_CLERK         3300                       121            50            
        130 Mozhe                Atkinson                  MATKINSO                  650.124.6234         15-JAN-2024 09:45:00 ST_CLERK         2800                       121            50            
        131 James                Marlow                    JAMRLOW                   650.124.7234         15-JAN-2024 09:45:00 ST_CLERK         2500                       121            50            
        132 TJ                   Olson                     TJOLSON                   650.124.8234         15-JAN-2024 09:45:00 ST_CLERK         2100                       121            50            
        133 Jason                Mallin                    JMALLIN                   650.127.1934         15-JAN-2024 09:45:00 ST_CLERK         3300                       122            50            
        134 Michael              Rogers                    MROGERS                   650.127.1834         15-JAN-2024 09:45:00 ST_CLERK         2900                       122            50            
        135 Ki                   Gee                       KGEE                      650.127.1734         15-JAN-2024 09:45:00 ST_CLERK         2400                       122            50            
        136 Hazel                Philtanker                HPHILTAN                  650.127.1634         15-JAN-2024 09:45:00 ST_CLERK         2200                       122            50            
        137 Renske               Ladwig                    RLADWIG                   650.121.1234         15-JAN-2024 09:45:00 ST_CLERK         3600                       123            50            
        138 Stephen              Stiles                    SSTILES                   650.121.2034         15-JAN-2024 09:45:00 ST_CLERK         3200                       123            50            
        139 John                 Seo                       JSEO                      650.121.2019         15-JAN-2024 09:45:00 ST_CLERK         2700                       123            50            
        140 Joshua               Patel                     JPATEL                    650.121.1834         15-JAN-2024 09:45:00 ST_CLERK         2500                       123            50            
        141 Trenna               Rajs                      TRAJS                     650.121.8009         15-JAN-2024 09:45:00 ST_CLERK         3500                       124            50            
        142 Curtis               Davies                    CDAVIES                   650.121.2994         15-JAN-2024 09:45:00 ST_CLERK         3100                       124            50            
        143 Randall              Matos                     RMATOS                    650.121.2874         15-JAN-2024 09:45:00 ST_CLERK         2600                       124            50            
        144 Peter                Vargas                    PVARGAS                   650.121.2004         15-JAN-2024 09:45:00 ST_CLERK         2500                       124            50            
        145 John                 Russell                   JRUSSEL                   011.44.1344.429268   15-JAN-2024 09:45:00 SA_MAN          14000             .4        100            80            
        146 Karen                Partners                  KPARTNER                  011.44.1344.467268   15-JAN-2024 09:45:00 SA_MAN          13500             .3        100            80            
        147 Alberto              Errazuriz                 AERRAZUR                  011.44.1344.429278   15-JAN-2024 09:45:00 SA_MAN          12000             .3        100            80            
        148 Gerald               Cambrault                 GCAMBRAU                  011.44.1344.619268   15-JAN-2024 09:45:00 SA_MAN          11000             .3        100            80            
        149 Eleni                Zlotkey                   EZLOTKEY                  011.44.1344.429018   15-JAN-2024 09:45:00 SA_MAN          10500             .2        100            80            
        150 Peter                Tucker                    PTUCKER                   011.44.1344.129268   15-JAN-2024 09:45:00 SA_REP          10000             .3        145            80            
        151 David                Bernstein                 DBERNSTE                  011.44.1344.345268   15-JAN-2024 09:45:00 SA_REP           9500            .25        145            80            
        152 Peter                Hall                      PHALL                     011.44.1344.478968   15-JAN-2024 09:45:00 SA_REP           9000            .25        145            80            
        153 Christopher          Olsen                     COLSEN                    011.44.1344.498718   15-JAN-2024 09:45:00 SA_REP           8000             .2        145            80            
        154 Nanette              Cambrault                 NCAMBRAU                  011.44.1344.987668   15-JAN-2024 09:45:00 SA_REP           7500             .2        145            80            
        155 Oliver               Tuvault                   OTUVAULT                  011.44.1344.486508   15-JAN-2024 09:45:00 SA_REP           7000            .15        145            80            
        156 Janette              King                      JKING                     011.44.1345.429268   15-JAN-2024 09:45:00 SA_REP          10000            .35        146            80            
        157 Patrick              Sully                     PSULLY                    011.44.1345.929268   15-JAN-2024 09:45:00 SA_REP           9500            .35        146            80            
        158 Allan                McEwen                    AMCEWEN                   011.44.1345.829268   15-JAN-2024 09:45:00 SA_REP           9000            .35        146            80            
        159 Lindsey              Smith                     LSMITH                    011.44.1345.729268   15-JAN-2024 09:45:00 SA_REP           8000             .3        146            80            
        160 Louise               Doran                     LDORAN                    011.44.1345.629268   15-JAN-2024 09:45:00 SA_REP           7500             .3        146            80            
        161 Sarath               Sewall                    SSEWALL                   011.44.1345.529268   15-JAN-2024 09:45:00 SA_REP           7000            .25        146            80            
        162 Clara                Vishney                   CVISHNEY                  011.44.1346.129268   15-JAN-2024 09:45:00 SA_REP          10500            .25        147            80            
        163 Danielle             Greene                    DGREENE                   011.44.1346.229268   15-JAN-2024 09:45:00 SA_REP           9500            .15        147            80            
        164 Mattea               Marvins                   MMARVINS                  011.44.1346.329268   15-JAN-2024 09:45:00 SA_REP           7200             .1        147            80            
        165 David                Lee                       DLEE                      011.44.1346.529268   15-JAN-2024 09:45:00 SA_REP           6800             .1        147            80            
        166 Sundar               Ande                      SANDE                     011.44.1346.629268   15-JAN-2024 09:45:00 SA_REP           6400             .1        147            80            
        167 Amit                 Banda                     ABANDA                    011.44.1346.729268   15-JAN-2024 09:45:00 SA_REP           6200             .1        147            80            
        168 Lisa                 Ozer                      LOZER                     011.44.1343.929268   15-JAN-2024 09:45:00 SA_REP          11500            .25        148            80            
        169 Harrison             Bloom                     HBLOOM                    011.44.1343.829268   15-JAN-2024 09:45:00 SA_REP          10000             .2        148            80            
        170 Tayler               Fox                       TFOX                      011.44.1343.729268   15-JAN-2024 09:45:00 SA_REP           9600             .2        148            80            
        171 William              Smith                     WSMITH                    011.44.1343.629268   15-JAN-2024 09:45:00 SA_REP           7400            .15        148            80            
        172 Elizabeth            Bates                     EBATES                    011.44.1343.529268   15-JAN-2024 09:45:00 SA_REP           7300            .15        148            80            
        173 Sundita              Kumar                     SKUMAR                    011.44.1343.329268   15-JAN-2024 09:45:00 SA_REP           6100             .1        148            80            
        174 Ellen                Abel                      EABEL                     011.44.1644.429267   15-JAN-2024 09:45:00 SA_REP          11000             .3        149            80            
        175 Alyssa               Hutton                    AHUTTON                   011.44.1644.429266   15-JAN-2024 09:45:00 SA_REP           8800            .25        149            80            
        176 Jonathon             Taylor                    JTAYLOR                   011.44.1644.429265   15-JAN-2024 09:45:00 SA_REP           8600             .2        149            80            
        177 Jack                 Livingston                JLIVINGS                  011.44.1644.429264   15-JAN-2024 09:45:00 SA_REP           8400             .2        149            80            
        178 Kimberely            Grant                     KGRANT                    011.44.1644.429263   15-JAN-2024 09:45:00 SA_REP           7000            .15        149                          
        179 Charles              Johnson                   CJOHNSON                  011.44.1644.429262   15-JAN-2024 09:45:00 SA_REP           6200             .1        149            80            
        180 Winston              Taylor                    WTAYLOR                   650.507.9876         15-JAN-2024 09:45:00 SH_CLERK         3200                       120            50            
        181 Jean                                           JFLEAUR                   650.507.9877         15-JAN-2024 09:45:00 SH_CLERK         3100                       120            50            
        182 Martha               Sullivan                  MSULLIVA                  650.507.9878         15-JAN-2024 09:45:00 SH_CLERK         2500                       120            50            
        183 Girard               Geoni                     GGEONI                    650.507.9879         15-JAN-2024 09:45:00 SH_CLERK         2800                       120            50            
        184 Nandita              Sarchand                  NSARCHAN                  650.509.1876         15-JAN-2024 09:45:00 SH_CLERK         4200                       121            50            
        185 Alexis               Bull                      ABULL                     650.509.2876         15-JAN-2024 09:45:00 SH_CLERK         4100                       121            50            
        186 Julia                Dellinger                 JDELLING                  650.509.3876         15-JAN-2024 09:45:00 SH_CLERK         3400                       121            50            
        187 Anthony              Cabrio                    ACABRIO                   650.509.4876         15-JAN-2024 09:45:00 SH_CLERK         3000                       121            50            
        188 Kelly                Chung                     KCHUNG                    650.505.1876         15-JAN-2024 09:45:00 SH_CLERK         3800                       122            50            
        189 Jennifer             Dilly                     JDILLY                    650.505.2876         15-JAN-2024 09:45:00 SH_CLERK         3600                       122            50            
        190 Timothy              Gates                     TGATES                    650.505.3876         15-JAN-2024 09:45:00 SH_CLERK         2900                       122            50            
        191 Randall              Perkins                   RPERKINS                  650.505.4876         15-JAN-2024 09:45:00 SH_CLERK         2500                       122            50            
        192 Sarah                Bell                      SBELL                     650.501.1876         15-JAN-2024 09:45:00 SH_CLERK         4000                       123            50            
        193 Britney              Everett                   BEVERETT                  650.501.2876         15-JAN-2024 09:45:00 SH_CLERK         3900                       123            50            
        194 Samuel               McCain                    SMCCAIN                   650.501.3876         15-JAN-2024 09:45:00 SH_CLERK         3200                       123            50            
        195 Vance                Jones                     VJONES                    650.501.4876         15-JAN-2024 09:45:00 SH_CLERK         2800                       123            50            
        196 Alana                Walsh                     AWALSH                    650.507.9811         15-JAN-2024 09:45:00 SH_CLERK         3100                       124            50            
        197 Kevin                Feeney                    KFEENEY                   650.507.9822         15-JAN-2024 09:45:00 SH_CLERK         3000                       124            50            
        198 Donald               OConnell                  DOCONNEL                  650.507.9833         15-JAN-2024 09:45:00 SH_CLERK         2600                       124            50            
        199 Douglas              Grant                     DGRANT                    650.507.9844         15-JAN-2024 09:45:00 SH_CLERK         2600                       124            50            
        200 Jennifer             Whalen                    JWHALEN                   515.123.4444         15-JAN-2024 09:45:00 AD_ASST          4400                       101            10            
        201 Michael              Hartstein                 MHARTSTE                  515.123.5555         15-JAN-2024 09:45:00 MK_MAN          13000                       100            20            
        202 Pat                  Fay                       PFAY                      603.123.6666         15-JAN-2024 09:45:00 MK_REP           6000                       201            20            
        203 Susan                Mavris                    SMAVRIS                   515.123.7777         15-JAN-2024 09:45:00 HR_REP           6500                       101            40            
        204 Hermann              Baer                      HBAER                     515.123.8888         15-JAN-2024 09:45:00 PR_REP          10000                       101            70            
        205 Shelley              Higgins                   SHIGGINS                  515.123.8080         15-JAN-2024 09:45:00 AC_MGR          12008                       101           110            
        206 William              Gietz                     WGIETZ                    515.123.8181         15-JAN-2024 09:45:00 AC_ACCOUNT       8300                       205           110            
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         15-JAN-2024 09:45:00 IT_PROG          9000                       102            60            
        104 Bruce                Ernst                     BERNST                    590.423.4568         15-JAN-2024 09:45:00 IT_PROG          6000                       103            60            
        105 David                Austin                    DAUSTIN                   590.423.4569         15-JAN-2024 09:45:00 IT_PROG          4800                       103            60            
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         15-JAN-2024 09:45:00 IT_PROG          4800                       103            60            
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         15-JAN-2024 09:45:00 IT_PROG          4200                       103            60            
        145 John                 Russell                   JRUSSEL                   011.44.1344.429268   15-JAN-2024 09:45:00 SA_MAN          14000             .4        100            80            
        146 Karen                Partners                  KPARTNER                  011.44.1344.467268   15-JAN-2024 09:45:00 SA_MAN          13500             .3        100            80            
        147 Alberto              Errazuriz                 AERRAZUR                  011.44.1344.429278   15-JAN-2024 09:45:00 SA_MAN          12000             .3        100            80            
        148 Gerald               Cambrault                 GCAMBRAU                  011.44.1344.619268   15-JAN-2024 09:45:00 SA_MAN          11000             .3        100            80            
        149 Eleni                Zlotkey                   EZLOTKEY                  011.44.1344.429018   15-JAN-2024 09:45:00 SA_MAN          10500             .2        100            80            
        150 Peter                Tucker                    PTUCKER                   011.44.1344.129268   15-JAN-2024 09:45:00 SA_REP          10000             .3        145            80            
        151 David                Bernstein                 DBERNSTE                  011.44.1344.345268   15-JAN-2024 09:45:00 SA_REP           9500            .25        145            80            
        152 Peter                Hall                      PHALL                     011.44.1344.478968   15-JAN-2024 09:45:00 SA_REP           9000            .25        145            80            
        153 Christopher          Olsen                     COLSEN                    011.44.1344.498718   15-JAN-2024 09:45:00 SA_REP           8000             .2        145            80            
        154 Nanette              Cambrault                 NCAMBRAU                  011.44.1344.987668   15-JAN-2024 09:45:00 SA_REP           7500             .2        145            80            
        155 Oliver               Tuvault                   OTUVAULT                  011.44.1344.486508   15-JAN-2024 09:45:00 SA_REP           7000            .15        145            80            
        156 Janette              King                      JKING                     011.44.1345.429268   15-JAN-2024 09:45:00 SA_REP          10000            .35        146            80            
        157 Patrick              Sully                     PSULLY                    011.44.1345.929268   15-JAN-2024 09:45:00 SA_REP           9500            .35        146            80            
        158 Allan                McEwen                    AMCEWEN                   011.44.1345.829268   15-JAN-2024 09:45:00 SA_REP           9000            .35        146            80            
        159 Lindsey              Smith                     LSMITH                    011.44.1345.729268   15-JAN-2024 09:45:00 SA_REP           8000             .3        146            80            
        160 Louise               Doran                     LDORAN                    011.44.1345.629268   15-JAN-2024 09:45:00 SA_REP           7500             .3        146            80            
        161 Sarath               Sewall                    SSEWALL                   011.44.1345.529268   15-JAN-2024 09:45:00 SA_REP           7000            .25        146            80            
        162 Clara                Vishney                   CVISHNEY                  011.44.1346.129268   15-JAN-2024 09:45:00 SA_REP          10500            .25        147            80            
        163 Danielle             Greene                    DGREENE                   011.44.1346.229268   15-JAN-2024 09:45:00 SA_REP           9500            .15        147            80            
        164 Mattea               Marvins                   MMARVINS                  011.44.1346.329268   15-JAN-2024 09:45:00 SA_REP           7200             .1        147            80            
        165 David                Lee                       DLEE                      011.44.1346.529268   15-JAN-2024 09:45:00 SA_REP           6800             .1        147            80            
        166 Sundar               Ande                      SANDE                     011.44.1346.629268   15-JAN-2024 09:45:00 SA_REP           6400             .1        147            80            
        167 Amit                 Banda                     ABANDA                    011.44.1346.729268   15-JAN-2024 09:45:00 SA_REP           6200             .1        147            80            
        168 Lisa                 Ozer                      LOZER                     011.44.1343.929268   15-JAN-2024 09:45:00 SA_REP          11500            .25        148            80            
        169 Harrison             Bloom                     HBLOOM                    011.44.1343.829268   15-JAN-2024 09:45:00 SA_REP          10000             .2        148            80            
        170 Tayler               Fox                       TFOX                      011.44.1343.729268   15-JAN-2024 09:45:00 SA_REP           9600             .2        148            80            
        171 William              Smith                     WSMITH                    011.44.1343.629268   15-JAN-2024 09:45:00 SA_REP           7400            .15        148            80            
        172 Elizabeth            Bates                     EBATES                    011.44.1343.529268   15-JAN-2024 09:45:00 SA_REP           7300            .15        148            80            
        173 Sundita              Kumar                     SKUMAR                    011.44.1343.329268   15-JAN-2024 09:45:00 SA_REP           6100             .1        148            80            
        174 Ellen                Abel                      EABEL                     011.44.1644.429267   15-JAN-2024 09:45:00 SA_REP          11000             .3        149            80            
        175 Alyssa               Hutton                    AHUTTON                   011.44.1644.429266   15-JAN-2024 09:45:00 SA_REP           8800            .25        149            80            
        176 Jonathon             Taylor                    JTAYLOR                   011.44.1644.429265   15-JAN-2024 09:45:00 SA_REP           8600             .2        149            80            
        177 Jack                 Livingston                JLIVINGS                  011.44.1644.429264   15-JAN-2024 09:45:00 SA_REP           8400             .2        149            80            
        179 Charles              Johnson                   CJOHNSON                  011.44.1644.429262   15-JAN-2024 09:45:00 SA_REP           6200             .1        149            80            

146 rows selected.

SQL> ED
Wrote file afiedt.buf

  1  UPDATE MYCOPY
  2* SET HIRE_DATE='1-FEB-1992 12:45:00'
SQL> /

146 rows updated.

SQL> SELECT * FROM MYCOPY;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE            JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID            
----------- -------------------- ------------------------- ------------------------- -------------------- -------------------- ---------- ---------- -------------- ---------- -------------            
        100 Steven               King                      SKING                     515.123.4567         01-FEB-1992 12:45:00 AD_PRES         24000                                      90            
        101 Neena                Kochhar                   NKOCHHAR                  515.123.4568         01-FEB-1992 12:45:00 AD_VP           17000                       100            90            
        102 Lex                  De Haan                   LDEHAAN                   515.123.4569         01-FEB-1992 12:45:00 AD_VP           17000                       100            90            
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         01-FEB-1992 12:45:00 IT_PROG          9000                       102            60            
        104 Bruce                Ernst                     BERNST                    590.423.4568         01-FEB-1992 12:45:00 IT_PROG          6000                       103            60            
        105 David                Austin                    DAUSTIN                   590.423.4569         01-FEB-1992 12:45:00 IT_PROG          4800                       103            60            
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         01-FEB-1992 12:45:00 IT_PROG          4800                       103            60            
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         01-FEB-1992 12:45:00 IT_PROG          4200                       103            60            
        108 Nancy                Greenberg                 NGREENBE                  515.124.4569         01-FEB-1992 12:45:00 FI_MGR          12008                       101           100            
        109 Daniel               Faviet                    DFAVIET                   515.124.4169         01-FEB-1992 12:45:00 FI_ACCOUNT       9000                       108           100            
        110 John                 Chen                      JCHEN                     515.124.4269         01-FEB-1992 12:45:00 FI_ACCOUNT       8200                       108           100            
        111 Ismael               Sciarra                   ISCIARRA                  515.124.4369         01-FEB-1992 12:45:00 FI_ACCOUNT       7700                       108           100            
        112 Jose Manuel          Urman                     JMURMAN                   515.124.4469         01-FEB-1992 12:45:00 FI_ACCOUNT       7800                       108           100            
        113 Luis                 Popp                      LPOPP                     515.124.4567         01-FEB-1992 12:45:00 FI_ACCOUNT       6900                       108           100            
        114 Den                  Raphaely                  DRAPHEAL                  515.127.4561         01-FEB-1992 12:45:00 PU_MAN          11000                       100            30            
        115 Alexander            Khoo                      AKHOO                     515.127.4562         01-FEB-1992 12:45:00 PU_CLERK         3100                       114            30            
        116 Shelli               Baida                     SBAIDA                    515.127.4563         01-FEB-1992 12:45:00 PU_CLERK         2900                       114            30            
        117 Sigal                Tobias                    STOBIAS                   515.127.4564         01-FEB-1992 12:45:00 PU_CLERK         2800                       114            30            
        118 Guy                  Himuro                    GHIMURO                   515.127.4565         01-FEB-1992 12:45:00 PU_CLERK         2600                       114            30            
        119 Karen                Colmenares                KCOLMENA                  515.127.4566         01-FEB-1992 12:45:00 PU_CLERK         2500                       114            30            
        120 Matthew              Weiss                     MWEISS                    650.123.1234         01-FEB-1992 12:45:00 ST_MAN           8000                       100            50            
        121 Adam                 Fripp                     AFRIPP                    650.123.2234         01-FEB-1992 12:45:00 ST_MAN           8200                       100            50            
        122 Payam                Kaufling                  PKAUFLIN                  650.123.3234         01-FEB-1992 12:45:00 ST_MAN           7900                       100            50            
        123 Shanta               Vollman                   SVOLLMAN                  650.123.4234         01-FEB-1992 12:45:00 ST_MAN           6500                       100            50            
        124 Kevin                Mourgos                   KMOURGOS                  650.123.5234         01-FEB-1992 12:45:00 ST_MAN           5800                       100            50            
        125 Julia                Nayer                     JNAYER                    650.124.1214         01-FEB-1992 12:45:00 ST_CLERK         3200                       120            50            
        126 Irene                Mikkilineni               IMIKKILI                  650.124.1224         01-FEB-1992 12:45:00 ST_CLERK         2700                       120            50            
        127 James                Landry                    JLANDRY                   650.124.1334         01-FEB-1992 12:45:00 ST_CLERK         2400                       120            50            
        128 Steven               Markle                    SMARKLE                   650.124.1434         01-FEB-1992 12:45:00 ST_CLERK         2200                       120            50            
        129 Laura                Bissot                    LBISSOT                   650.124.5234         01-FEB-1992 12:45:00 ST_CLERK         3300                       121            50            
        130 Mozhe                Atkinson                  MATKINSO                  650.124.6234         01-FEB-1992 12:45:00 ST_CLERK         2800                       121            50            
        131 James                Marlow                    JAMRLOW                   650.124.7234         01-FEB-1992 12:45:00 ST_CLERK         2500                       121            50            
        132 TJ                   Olson                     TJOLSON                   650.124.8234         01-FEB-1992 12:45:00 ST_CLERK         2100                       121            50            
        133 Jason                Mallin                    JMALLIN                   650.127.1934         01-FEB-1992 12:45:00 ST_CLERK         3300                       122            50            
        134 Michael              Rogers                    MROGERS                   650.127.1834         01-FEB-1992 12:45:00 ST_CLERK         2900                       122            50            
        135 Ki                   Gee                       KGEE                      650.127.1734         01-FEB-1992 12:45:00 ST_CLERK         2400                       122            50            
        136 Hazel                Philtanker                HPHILTAN                  650.127.1634         01-FEB-1992 12:45:00 ST_CLERK         2200                       122            50            
        137 Renske               Ladwig                    RLADWIG                   650.121.1234         01-FEB-1992 12:45:00 ST_CLERK         3600                       123            50            
        138 Stephen              Stiles                    SSTILES                   650.121.2034         01-FEB-1992 12:45:00 ST_CLERK         3200                       123            50            
        139 John                 Seo                       JSEO                      650.121.2019         01-FEB-1992 12:45:00 ST_CLERK         2700                       123            50            
        140 Joshua               Patel                     JPATEL                    650.121.1834         01-FEB-1992 12:45:00 ST_CLERK         2500                       123            50            
        141 Trenna               Rajs                      TRAJS                     650.121.8009         01-FEB-1992 12:45:00 ST_CLERK         3500                       124            50            
        142 Curtis               Davies                    CDAVIES                   650.121.2994         01-FEB-1992 12:45:00 ST_CLERK         3100                       124            50            
        143 Randall              Matos                     RMATOS                    650.121.2874         01-FEB-1992 12:45:00 ST_CLERK         2600                       124            50            
        144 Peter                Vargas                    PVARGAS                   650.121.2004         01-FEB-1992 12:45:00 ST_CLERK         2500                       124            50            
        145 John                 Russell                   JRUSSEL                   011.44.1344.429268   01-FEB-1992 12:45:00 SA_MAN          14000             .4        100            80            
        146 Karen                Partners                  KPARTNER                  011.44.1344.467268   01-FEB-1992 12:45:00 SA_MAN          13500             .3        100            80            
        147 Alberto              Errazuriz                 AERRAZUR                  011.44.1344.429278   01-FEB-1992 12:45:00 SA_MAN          12000             .3        100            80            
        148 Gerald               Cambrault                 GCAMBRAU                  011.44.1344.619268   01-FEB-1992 12:45:00 SA_MAN          11000             .3        100            80            
        149 Eleni                Zlotkey                   EZLOTKEY                  011.44.1344.429018   01-FEB-1992 12:45:00 SA_MAN          10500             .2        100            80            
        150 Peter                Tucker                    PTUCKER                   011.44.1344.129268   01-FEB-1992 12:45:00 SA_REP          10000             .3        145            80            
        151 David                Bernstein                 DBERNSTE                  011.44.1344.345268   01-FEB-1992 12:45:00 SA_REP           9500            .25        145            80            
        152 Peter                Hall                      PHALL                     011.44.1344.478968   01-FEB-1992 12:45:00 SA_REP           9000            .25        145            80            
        153 Christopher          Olsen                     COLSEN                    011.44.1344.498718   01-FEB-1992 12:45:00 SA_REP           8000             .2        145            80            
        154 Nanette              Cambrault                 NCAMBRAU                  011.44.1344.987668   01-FEB-1992 12:45:00 SA_REP           7500             .2        145            80            
        155 Oliver               Tuvault                   OTUVAULT                  011.44.1344.486508   01-FEB-1992 12:45:00 SA_REP           7000            .15        145            80            
        156 Janette              King                      JKING                     011.44.1345.429268   01-FEB-1992 12:45:00 SA_REP          10000            .35        146            80            
        157 Patrick              Sully                     PSULLY                    011.44.1345.929268   01-FEB-1992 12:45:00 SA_REP           9500            .35        146            80            
        158 Allan                McEwen                    AMCEWEN                   011.44.1345.829268   01-FEB-1992 12:45:00 SA_REP           9000            .35        146            80            
        159 Lindsey              Smith                     LSMITH                    011.44.1345.729268   01-FEB-1992 12:45:00 SA_REP           8000             .3        146            80            
        160 Louise               Doran                     LDORAN                    011.44.1345.629268   01-FEB-1992 12:45:00 SA_REP           7500             .3        146            80            
        161 Sarath               Sewall                    SSEWALL                   011.44.1345.529268   01-FEB-1992 12:45:00 SA_REP           7000            .25        146            80            
        162 Clara                Vishney                   CVISHNEY                  011.44.1346.129268   01-FEB-1992 12:45:00 SA_REP          10500            .25        147            80            
        163 Danielle             Greene                    DGREENE                   011.44.1346.229268   01-FEB-1992 12:45:00 SA_REP           9500            .15        147            80            
        164 Mattea               Marvins                   MMARVINS                  011.44.1346.329268   01-FEB-1992 12:45:00 SA_REP           7200             .1        147            80            
        165 David                Lee                       DLEE                      011.44.1346.529268   01-FEB-1992 12:45:00 SA_REP           6800             .1        147            80            
        166 Sundar               Ande                      SANDE                     011.44.1346.629268   01-FEB-1992 12:45:00 SA_REP           6400             .1        147            80            
        167 Amit                 Banda                     ABANDA                    011.44.1346.729268   01-FEB-1992 12:45:00 SA_REP           6200             .1        147            80            
        168 Lisa                 Ozer                      LOZER                     011.44.1343.929268   01-FEB-1992 12:45:00 SA_REP          11500            .25        148            80            
        169 Harrison             Bloom                     HBLOOM                    011.44.1343.829268   01-FEB-1992 12:45:00 SA_REP          10000             .2        148            80            
        170 Tayler               Fox                       TFOX                      011.44.1343.729268   01-FEB-1992 12:45:00 SA_REP           9600             .2        148            80            
        171 William              Smith                     WSMITH                    011.44.1343.629268   01-FEB-1992 12:45:00 SA_REP           7400            .15        148            80            
        172 Elizabeth            Bates                     EBATES                    011.44.1343.529268   01-FEB-1992 12:45:00 SA_REP           7300            .15        148            80            
        173 Sundita              Kumar                     SKUMAR                    011.44.1343.329268   01-FEB-1992 12:45:00 SA_REP           6100             .1        148            80            
        174 Ellen                Abel                      EABEL                     011.44.1644.429267   01-FEB-1992 12:45:00 SA_REP          11000             .3        149            80            
        175 Alyssa               Hutton                    AHUTTON                   011.44.1644.429266   01-FEB-1992 12:45:00 SA_REP           8800            .25        149            80            
        176 Jonathon             Taylor                    JTAYLOR                   011.44.1644.429265   01-FEB-1992 12:45:00 SA_REP           8600             .2        149            80            
        177 Jack                 Livingston                JLIVINGS                  011.44.1644.429264   01-FEB-1992 12:45:00 SA_REP           8400             .2        149            80            
        178 Kimberely            Grant                     KGRANT                    011.44.1644.429263   01-FEB-1992 12:45:00 SA_REP           7000            .15        149                          
        179 Charles              Johnson                   CJOHNSON                  011.44.1644.429262   01-FEB-1992 12:45:00 SA_REP           6200             .1        149            80            
        180 Winston              Taylor                    WTAYLOR                   650.507.9876         01-FEB-1992 12:45:00 SH_CLERK         3200                       120            50            
        181 Jean                                           JFLEAUR                   650.507.9877         01-FEB-1992 12:45:00 SH_CLERK         3100                       120            50            
        182 Martha               Sullivan                  MSULLIVA                  650.507.9878         01-FEB-1992 12:45:00 SH_CLERK         2500                       120            50            
        183 Girard               Geoni                     GGEONI                    650.507.9879         01-FEB-1992 12:45:00 SH_CLERK         2800                       120            50            
        184 Nandita              Sarchand                  NSARCHAN                  650.509.1876         01-FEB-1992 12:45:00 SH_CLERK         4200                       121            50            
        185 Alexis               Bull                      ABULL                     650.509.2876         01-FEB-1992 12:45:00 SH_CLERK         4100                       121            50            
        186 Julia                Dellinger                 JDELLING                  650.509.3876         01-FEB-1992 12:45:00 SH_CLERK         3400                       121            50            
        187 Anthony              Cabrio                    ACABRIO                   650.509.4876         01-FEB-1992 12:45:00 SH_CLERK         3000                       121            50            
        188 Kelly                Chung                     KCHUNG                    650.505.1876         01-FEB-1992 12:45:00 SH_CLERK         3800                       122            50            
        189 Jennifer             Dilly                     JDILLY                    650.505.2876         01-FEB-1992 12:45:00 SH_CLERK         3600                       122            50            
        190 Timothy              Gates                     TGATES                    650.505.3876         01-FEB-1992 12:45:00 SH_CLERK         2900                       122            50            
        191 Randall              Perkins                   RPERKINS                  650.505.4876         01-FEB-1992 12:45:00 SH_CLERK         2500                       122            50            
        192 Sarah                Bell                      SBELL                     650.501.1876         01-FEB-1992 12:45:00 SH_CLERK         4000                       123            50            
        193 Britney              Everett                   BEVERETT                  650.501.2876         01-FEB-1992 12:45:00 SH_CLERK         3900                       123            50            
        194 Samuel               McCain                    SMCCAIN                   650.501.3876         01-FEB-1992 12:45:00 SH_CLERK         3200                       123            50            
        195 Vance                Jones                     VJONES                    650.501.4876         01-FEB-1992 12:45:00 SH_CLERK         2800                       123            50            
        196 Alana                Walsh                     AWALSH                    650.507.9811         01-FEB-1992 12:45:00 SH_CLERK         3100                       124            50            
        197 Kevin                Feeney                    KFEENEY                   650.507.9822         01-FEB-1992 12:45:00 SH_CLERK         3000                       124            50            
        198 Donald               OConnell                  DOCONNEL                  650.507.9833         01-FEB-1992 12:45:00 SH_CLERK         2600                       124            50            
        199 Douglas              Grant                     DGRANT                    650.507.9844         01-FEB-1992 12:45:00 SH_CLERK         2600                       124            50            
        200 Jennifer             Whalen                    JWHALEN                   515.123.4444         01-FEB-1992 12:45:00 AD_ASST          4400                       101            10            
        201 Michael              Hartstein                 MHARTSTE                  515.123.5555         01-FEB-1992 12:45:00 MK_MAN          13000                       100            20            
        202 Pat                  Fay                       PFAY                      603.123.6666         01-FEB-1992 12:45:00 MK_REP           6000                       201            20            
        203 Susan                Mavris                    SMAVRIS                   515.123.7777         01-FEB-1992 12:45:00 HR_REP           6500                       101            40            
        204 Hermann              Baer                      HBAER                     515.123.8888         01-FEB-1992 12:45:00 PR_REP          10000                       101            70            
        205 Shelley              Higgins                   SHIGGINS                  515.123.8080         01-FEB-1992 12:45:00 AC_MGR          12008                       101           110            
        206 William              Gietz                     WGIETZ                    515.123.8181         01-FEB-1992 12:45:00 AC_ACCOUNT       8300                       205           110            
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         01-FEB-1992 12:45:00 IT_PROG          9000                       102            60            
        104 Bruce                Ernst                     BERNST                    590.423.4568         01-FEB-1992 12:45:00 IT_PROG          6000                       103            60            
        105 David                Austin                    DAUSTIN                   590.423.4569         01-FEB-1992 12:45:00 IT_PROG          4800                       103            60            
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         01-FEB-1992 12:45:00 IT_PROG          4800                       103            60            
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         01-FEB-1992 12:45:00 IT_PROG          4200                       103            60            
        145 John                 Russell                   JRUSSEL                   011.44.1344.429268   01-FEB-1992 12:45:00 SA_MAN          14000             .4        100            80            
        146 Karen                Partners                  KPARTNER                  011.44.1344.467268   01-FEB-1992 12:45:00 SA_MAN          13500             .3        100            80            
        147 Alberto              Errazuriz                 AERRAZUR                  011.44.1344.429278   01-FEB-1992 12:45:00 SA_MAN          12000             .3        100            80            
        148 Gerald               Cambrault                 GCAMBRAU                  011.44.1344.619268   01-FEB-1992 12:45:00 SA_MAN          11000             .3        100            80            
        149 Eleni                Zlotkey                   EZLOTKEY                  011.44.1344.429018   01-FEB-1992 12:45:00 SA_MAN          10500             .2        100            80            
        150 Peter                Tucker                    PTUCKER                   011.44.1344.129268   01-FEB-1992 12:45:00 SA_REP          10000             .3        145            80            
        151 David                Bernstein                 DBERNSTE                  011.44.1344.345268   01-FEB-1992 12:45:00 SA_REP           9500            .25        145            80            
        152 Peter                Hall                      PHALL                     011.44.1344.478968   01-FEB-1992 12:45:00 SA_REP           9000            .25        145            80            
        153 Christopher          Olsen                     COLSEN                    011.44.1344.498718   01-FEB-1992 12:45:00 SA_REP           8000             .2        145            80            
        154 Nanette              Cambrault                 NCAMBRAU                  011.44.1344.987668   01-FEB-1992 12:45:00 SA_REP           7500             .2        145            80            
        155 Oliver               Tuvault                   OTUVAULT                  011.44.1344.486508   01-FEB-1992 12:45:00 SA_REP           7000            .15        145            80            
        156 Janette              King                      JKING                     011.44.1345.429268   01-FEB-1992 12:45:00 SA_REP          10000            .35        146            80            
        157 Patrick              Sully                     PSULLY                    011.44.1345.929268   01-FEB-1992 12:45:00 SA_REP           9500            .35        146            80            
        158 Allan                McEwen                    AMCEWEN                   011.44.1345.829268   01-FEB-1992 12:45:00 SA_REP           9000            .35        146            80            
        159 Lindsey              Smith                     LSMITH                    011.44.1345.729268   01-FEB-1992 12:45:00 SA_REP           8000             .3        146            80            
        160 Louise               Doran                     LDORAN                    011.44.1345.629268   01-FEB-1992 12:45:00 SA_REP           7500             .3        146            80            
        161 Sarath               Sewall                    SSEWALL                   011.44.1345.529268   01-FEB-1992 12:45:00 SA_REP           7000            .25        146            80            
        162 Clara                Vishney                   CVISHNEY                  011.44.1346.129268   01-FEB-1992 12:45:00 SA_REP          10500            .25        147            80            
        163 Danielle             Greene                    DGREENE                   011.44.1346.229268   01-FEB-1992 12:45:00 SA_REP           9500            .15        147            80            
        164 Mattea               Marvins                   MMARVINS                  011.44.1346.329268   01-FEB-1992 12:45:00 SA_REP           7200             .1        147            80            
        165 David                Lee                       DLEE                      011.44.1346.529268   01-FEB-1992 12:45:00 SA_REP           6800             .1        147            80            
        166 Sundar               Ande                      SANDE                     011.44.1346.629268   01-FEB-1992 12:45:00 SA_REP           6400             .1        147            80            
        167 Amit                 Banda                     ABANDA                    011.44.1346.729268   01-FEB-1992 12:45:00 SA_REP           6200             .1        147            80            
        168 Lisa                 Ozer                      LOZER                     011.44.1343.929268   01-FEB-1992 12:45:00 SA_REP          11500            .25        148            80            
        169 Harrison             Bloom                     HBLOOM                    011.44.1343.829268   01-FEB-1992 12:45:00 SA_REP          10000             .2        148            80            
        170 Tayler               Fox                       TFOX                      011.44.1343.729268   01-FEB-1992 12:45:00 SA_REP           9600             .2        148            80            
        171 William              Smith                     WSMITH                    011.44.1343.629268   01-FEB-1992 12:45:00 SA_REP           7400            .15        148            80            
        172 Elizabeth            Bates                     EBATES                    011.44.1343.529268   01-FEB-1992 12:45:00 SA_REP           7300            .15        148            80            
        173 Sundita              Kumar                     SKUMAR                    011.44.1343.329268   01-FEB-1992 12:45:00 SA_REP           6100             .1        148            80            
        174 Ellen                Abel                      EABEL                     011.44.1644.429267   01-FEB-1992 12:45:00 SA_REP          11000             .3        149            80            
        175 Alyssa               Hutton                    AHUTTON                   011.44.1644.429266   01-FEB-1992 12:45:00 SA_REP           8800            .25        149            80            
        176 Jonathon             Taylor                    JTAYLOR                   011.44.1644.429265   01-FEB-1992 12:45:00 SA_REP           8600             .2        149            80            
        177 Jack                 Livingston                JLIVINGS                  011.44.1644.429264   01-FEB-1992 12:45:00 SA_REP           8400             .2        149            80            
        179 Charles              Johnson                   CJOHNSON                  011.44.1644.429262   01-FEB-1992 12:45:00 SA_REP           6200             .1        149            80            

146 rows selected.

SQL> SELECT HIRE_DATE,COUNT(*)
  2  FROM MYCOPY
  3  HAVING HIRE_DATE>1
  4  GROUP BY HIRE_DATE;
HAVING HIRE_DATE>1
                *
ERROR at line 3:
ORA-00932: inconsistent datatypes: expected DATE got NUMBER 


SQL> ED
Wrote file afiedt.buf

  1  SELECT HIRE_DATE,COUNT(*)
  2  FROM MYCOPY
  3  HAVING HIRE_DATE>1
  4* GROUP BY HIRE_DATE
SQL> /
HAVING HIRE_DATE>1
                *
ERROR at line 3:
ORA-00932: inconsistent datatypes: expected DATE got NUMBER 


SQL> SELECT HIRE_DATE,COUNT(*) STAFF,SUM(SALARY) FROM MYCOPY
  2  GROUP BY HIRE_DATE
  3  ORDER BY HIRE_DATE;

HIRE_DATE                 STAFF SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
01-FEB-1992 12:45:00        146     1024716                                                                                                                                                             

SQL> ROLLBACK
  2  /

Rollback complete.

SQL> SELECT HIRE_DATE,COUNT(*) STAFF FROM MYCOPY
  2  GROUP BY HIRE_DATE
  3  ORDER BY HIRE_DATE;

HIRE_DATE                 STAFF                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
13-JAN-2001 12:00:00          1                                                                                                                                                                         
07-JUN-2002 12:00:00          4                                                                                                                                                                         
16-AUG-2002 12:00:00          1                                                                                                                                                                         
17-AUG-2002 12:00:00          1                                                                                                                                                                         
07-DEC-2002 12:00:00          1                                                                                                                                                                         
01-MAY-2003 12:00:00          1                                                                                                                                                                         
18-MAY-2003 12:00:00          1                                                                                                                                                                         
17-JUN-2003 12:00:00          1                                                                                                                                                                         
14-JUL-2003 12:00:00          1                                                                                                                                                                         
17-SEP-2003 12:00:00          1                                                                                                                                                                         
17-OCT-2003 12:00:00          1                                                                                                                                                                         
27-JAN-2004 12:00:00          1                                                                                                                                                                         
30-JAN-2004 12:00:00          2                                                                                                                                                                         
04-FEB-2004 12:00:00          1                                                                                                                                                                         
17-FEB-2004 12:00:00          1                                                                                                                                                                         
04-MAR-2004 12:00:00          2                                                                                                                                                                         
11-MAY-2004 12:00:00          2                                                                                                                                                                         
14-JUN-2004 12:00:00          1                                                                                                                                                                         
18-JUL-2004 12:00:00          1                                                                                                                                                                         
01-AUG-2004 12:00:00          2                                                                                                                                                                         
01-OCT-2004 12:00:00          2                                                                                                                                                                         
05-JAN-2005 12:00:00          2                                                                                                                                                                         
29-JAN-2005 12:00:00          1                                                                                                                                                                         
30-JAN-2005 12:00:00          2                                                                                                                                                                         
16-FEB-2005 12:00:00          1                                                                                                                                                                         
20-FEB-2005 12:00:00          1                                                                                                                                                                         
03-MAR-2005 12:00:00          1                                                                                                                                                                         
10-MAR-2005 12:00:00          4                                                                                                                                                                         
11-MAR-2005 12:00:00          2                                                                                                                                                                         
19-MAR-2005 12:00:00          2                                                                                                                                                                         
24-MAR-2005 12:00:00          2                                                                                                                                                                         
10-APR-2005 12:00:00          1                                                                                                                                                                         
14-JUN-2005 12:00:00          1                                                                                                                                                                         
16-JUL-2005 12:00:00          1                                                                                                                                                                         
24-JUL-2005 12:00:00          1                                                                                                                                                                         
13-AUG-2005 12:00:00          1                                                                                                                                                                         
17-AUG-2005 12:00:00          1                                                                                                                                                                         
20-AUG-2005 12:00:00          3                                                                                                                                                                         
21-SEP-2005 12:00:00          1                                                                                                                                                                         
28-SEP-2005 12:00:00          1                                                                                                                                                                         
30-SEP-2005 12:00:00          1                                                                                                                                                                         
10-OCT-2005 12:00:00          1                                                                                                                                                                         
26-OCT-2005 12:00:00          1                                                                                                                                                                         
30-OCT-2005 12:00:00          1                                                                                                                                                                         
11-NOV-2005 12:00:00          2                                                                                                                                                                         
15-DEC-2005 12:00:00          2                                                                                                                                                                         
24-DEC-2005 12:00:00          1                                                                                                                                                                         
24-JAN-2006 12:00:00          3                                                                                                                                                                         
12-FEB-2006 12:00:00          1                                                                                                                                                                         
23-FEB-2006 12:00:00          1                                                                                                                                                                         
07-MAR-2006 12:00:00          1                                                                                                                                                                         
15-MAR-2006 12:00:00          1                                                                                                                                                                         
23-MAR-2006 12:00:00          2                                                                                                                                                                         
24-MAR-2006 12:00:00          2                                                                                                                                                                         
30-MAR-2006 12:00:00          2                                                                                                                                                                         
06-APR-2006 12:00:00          1                                                                                                                                                                         
23-APR-2006 12:00:00          2                                                                                                                                                                         
24-APR-2006 12:00:00          1                                                                                                                                                                         
23-MAY-2006 12:00:00          1                                                                                                                                                                         
24-JUN-2006 12:00:00          1                                                                                                                                                                         
01-JUL-2006 12:00:00          1                                                                                                                                                                         
09-JUL-2006 12:00:00          1                                                                                                                                                                         
11-JUL-2006 12:00:00          1                                                                                                                                                                         
26-AUG-2006 12:00:00          1                                                                                                                                                                         
28-SEP-2006 12:00:00          1                                                                                                                                                                         
03-NOV-2006 12:00:00          2                                                                                                                                                                         
15-NOV-2006 12:00:00          1                                                                                                                                                                         
09-DEC-2006 12:00:00          2                                                                                                                                                                         
14-JAN-2007 12:00:00          1                                                                                                                                                                         
07-FEB-2007 12:00:00          1                                                                                                                                                                         
23-FEB-2007 12:00:00          2                                                                                                                                                                         
17-MAR-2007 12:00:00          1                                                                                                                                                                         
19-MAR-2007 12:00:00          2                                                                                                                                                                         
24-MAR-2007 12:00:00          2                                                                                                                                                                         
10-APR-2007 12:00:00          1                                                                                                                                                                         
24-MAY-2007 12:00:00          1                                                                                                                                                                         
21-JUN-2007 12:00:00          2                                                                                                                                                                         
10-AUG-2007 12:00:00          1                                                                                                                                                                         
15-OCT-2007 12:00:00          2                                                                                                                                                                         
16-NOV-2007 12:00:00          1                                                                                                                                                                         
23-NOV-2007 12:00:00          2                                                                                                                                                                         
07-DEC-2007 12:00:00          1                                                                                                                                                                         
12-DEC-2007 12:00:00          1                                                                                                                                                                         
19-DEC-2007 12:00:00          1                                                                                                                                                                         
04-JAN-2008 12:00:00          2                                                                                                                                                                         
13-JAN-2008 12:00:00          1                                                                                                                                                                         
24-JAN-2008 12:00:00          2                                                                                                                                                                         
29-JAN-2008 12:00:00          2                                                                                                                                                                         
03-FEB-2008 12:00:00          1                                                                                                                                                                         
06-FEB-2008 12:00:00          1                                                                                                                                                                         
23-FEB-2008 12:00:00          2                                                                                                                                                                         
08-MAR-2008 12:00:00          1                                                                                                                                                                         
24-MAR-2008 12:00:00          2                                                                                                                                                                         
21-APR-2008 12:00:00          4                                                                                                                                                                         
22-JUL-2025 02:28:43         10                                                                                                                                                                         

95 rows selected.

SQL> SELECT TO_CHAR(HIRE_DATE,'DD:MON:YYYY') FROM MYCOPY
  2  GROUP BY TO_CHAR(HIRE_DATE,'DD:MON:YYYY');

TO_CHAR(HIRE_DATE,'D                                                                                                                                                                                    
--------------------                                                                                                                                                                                    
24:DEC:2005                                                                                                                                                                                             
10:APR:2005                                                                                                                                                                                             
16:JUL:2005                                                                                                                                                                                             
10:APR:2007                                                                                                                                                                                             
01:OCT:2004                                                                                                                                                                                             
30:JAN:2005                                                                                                                                                                                             
03:NOV:2006                                                                                                                                                                                             
23:FEB:2007                                                                                                                                                                                             
24:MAR:2006                                                                                                                                                                                             
23:APR:2006                                                                                                                                                                                             
24:MAY:2007                                                                                                                                                                                             
27:JAN:2004                                                                                                                                                                                             
17:MAR:2007                                                                                                                                                                                             
30:SEP:2005                                                                                                                                                                                             
07:DEC:2007                                                                                                                                                                                             
18:MAY:2003                                                                                                                                                                                             
10:AUG:2007                                                                                                                                                                                             
16:FEB:2005                                                                                                                                                                                             
26:AUG:2006                                                                                                                                                                                             
06:FEB:2008                                                                                                                                                                                             
06:APR:2006                                                                                                                                                                                             
10:MAR:2005                                                                                                                                                                                             
19:MAR:2007                                                                                                                                                                                             
17:AUG:2005                                                                                                                                                                                             
15:DEC:2005                                                                                                                                                                                             
23:MAR:2006                                                                                                                                                                                             
04:JAN:2008                                                                                                                                                                                             
03:MAR:2005                                                                                                                                                                                             
17:SEP:2003                                                                                                                                                                                             
17:FEB:2004                                                                                                                                                                                             
07:JUN:2002                                                                                                                                                                                             
17:JUN:2003                                                                                                                                                                                             
22:JUL:2025                                                                                                                                                                                             
14:JAN:2007                                                                                                                                                                                             
09:JUL:2006                                                                                                                                                                                             
05:JAN:2005                                                                                                                                                                                             
03:FEB:2008                                                                                                                                                                                             
04:FEB:2004                                                                                                                                                                                             
16:AUG:2002                                                                                                                                                                                             
12:DEC:2007                                                                                                                                                                                             
15:OCT:2007                                                                                                                                                                                             
04:MAR:2004                                                                                                                                                                                             
24:JAN:2006                                                                                                                                                                                             
23:FEB:2006                                                                                                                                                                                             
13:AUG:2005                                                                                                                                                                                             
19:DEC:2007                                                                                                                                                                                             
13:JAN:2008                                                                                                                                                                                             
21:SEP:2005                                                                                                                                                                                             
13:JAN:2001                                                                                                                                                                                             
24:JUL:2005                                                                                                                                                                                             
10:OCT:2005                                                                                                                                                                                             
30:OCT:2005                                                                                                                                                                                             
26:OCT:2005                                                                                                                                                                                             
29:JAN:2008                                                                                                                                                                                             
30:MAR:2006                                                                                                                                                                                             
23:NOV:2007                                                                                                                                                                                             
11:NOV:2005                                                                                                                                                                                             
24:MAR:2008                                                                                                                                                                                             
11:MAR:2005                                                                                                                                                                                             
24:MAR:2007                                                                                                                                                                                             
11:MAY:2004                                                                                                                                                                                             
07:FEB:2007                                                                                                                                                                                             
14:JUN:2005                                                                                                                                                                                             
01:JUL:2006                                                                                                                                                                                             
24:APR:2006                                                                                                                                                                                             
23:MAY:2006                                                                                                                                                                                             
17:AUG:2002                                                                                                                                                                                             
01:MAY:2003                                                                                                                                                                                             
08:MAR:2008                                                                                                                                                                                             
20:AUG:2005                                                                                                                                                                                             
12:FEB:2006                                                                                                                                                                                             
17:OCT:2003                                                                                                                                                                                             
15:MAR:2006                                                                                                                                                                                             
24:MAR:2005                                                                                                                                                                                             
09:DEC:2006                                                                                                                                                                                             
24:JAN:2008                                                                                                                                                                                             
23:FEB:2008                                                                                                                                                                                             
21:APR:2008                                                                                                                                                                                             
19:MAR:2005                                                                                                                                                                                             
28:SEP:2005                                                                                                                                                                                             
07:MAR:2006                                                                                                                                                                                             
07:DEC:2002                                                                                                                                                                                             
15:NOV:2006                                                                                                                                                                                             
18:JUL:2004                                                                                                                                                                                             
16:NOV:2007                                                                                                                                                                                             
28:SEP:2006                                                                                                                                                                                             
14:JUN:2004                                                                                                                                                                                             
14:JUL:2003                                                                                                                                                                                             
29:JAN:2005                                                                                                                                                                                             
30:JAN:2004                                                                                                                                                                                             
01:AUG:2004                                                                                                                                                                                             
21:JUN:2007                                                                                                                                                                                             
20:FEB:2005                                                                                                                                                                                             
24:JUN:2006                                                                                                                                                                                             
11:JUL:2006                                                                                                                                                                                             

95 rows selected.

SQL> SELECT HIRE_DATE,COUNT(*) STAFF,SUM(SALARY) FROM MYCOPY
  2  GROUP BY HIRE_DATE
  3  ORDER BY HIRE_DATE;

HIRE_DATE                 STAFF SUM(SALARY)                                                                                                                                                             
-------------------- ---------- -----------                                                                                                                                                             
13-JAN-2001 12:00:00          1       17000                                                                                                                                                             
07-JUN-2002 12:00:00          4       36808                                                                                                                                                             
16-AUG-2002 12:00:00          1        9000                                                                                                                                                             
17-AUG-2002 12:00:00          1       12008                                                                                                                                                             
07-DEC-2002 12:00:00          1       11000                                                                                                                                                             
01-MAY-2003 12:00:00          1        7900                                                                                                                                                             
18-MAY-2003 12:00:00          1        3100                                                                                                                                                             
17-JUN-2003 12:00:00          1       24000                                                                                                                                                             
14-JUL-2003 12:00:00          1        3600                                                                                                                                                             
17-SEP-2003 12:00:00          1        4400                                                                                                                                                             
17-OCT-2003 12:00:00          1        3500                                                                                                                                                             
27-JAN-2004 12:00:00          1        4200                                                                                                                                                             
30-JAN-2004 12:00:00          2       20000                                                                                                                                                             
04-FEB-2004 12:00:00          1        4000                                                                                                                                                             
17-FEB-2004 12:00:00          1       13000                                                                                                                                                             
04-MAR-2004 12:00:00          2       19000                                                                                                                                                             
11-MAY-2004 12:00:00          2       22000                                                                                                                                                             
14-JUN-2004 12:00:00          1        3300                                                                                                                                                             
18-JUL-2004 12:00:00          1        8000                                                                                                                                                             
01-AUG-2004 12:00:00          2       18000                                                                                                                                                             
01-OCT-2004 12:00:00          2       28000                                                                                                                                                             
05-JAN-2005 12:00:00          2       27000                                                                                                                                                             
29-JAN-2005 12:00:00          1        3100                                                                                                                                                             
30-JAN-2005 12:00:00          2       20000                                                                                                                                                             
16-FEB-2005 12:00:00          1        2500                                                                                                                                                             
20-FEB-2005 12:00:00          1        4100                                                                                                                                                             
03-MAR-2005 12:00:00          1        3900                                                                                                                                                             
10-MAR-2005 12:00:00          4       40000                                                                                                                                                             
11-MAR-2005 12:00:00          2       23000                                                                                                                                                             
19-MAR-2005 12:00:00          2       17600                                                                                                                                                             
24-MAR-2005 12:00:00          2       19000                                                                                                                                                             
10-APR-2005 12:00:00          1        8200                                                                                                                                                             
14-JUN-2005 12:00:00          1        3800                                                                                                                                                             
16-JUL-2005 12:00:00          1        3200                                                                                                                                                             
24-JUL-2005 12:00:00          1        2800                                                                                                                                                             
13-AUG-2005 12:00:00          1        3600                                                                                                                                                             
17-AUG-2005 12:00:00          1        6000                                                                                                                                                             
20-AUG-2005 12:00:00          3       21300                                                                                                                                                             
21-SEP-2005 12:00:00          1       17000                                                                                                                                                             
28-SEP-2005 12:00:00          1        8200                                                                                                                                                             
30-SEP-2005 12:00:00          1        7700                                                                                                                                                             
10-OCT-2005 12:00:00          1        6500                                                                                                                                                             
26-OCT-2005 12:00:00          1        3200                                                                                                                                                             
30-OCT-2005 12:00:00          1        2800                                                                                                                                                             
11-NOV-2005 12:00:00          2       21000                                                                                                                                                             
15-DEC-2005 12:00:00          2       15000                                                                                                                                                             
24-DEC-2005 12:00:00          1        2900                                                                                                                                                             
24-JAN-2006 12:00:00          3       22400                                                                                                                                                             
12-FEB-2006 12:00:00          1        2700                                                                                                                                                             
23-FEB-2006 12:00:00          1        3100                                                                                                                                                             
07-MAR-2006 12:00:00          1        7800                                                                                                                                                             
15-MAR-2006 12:00:00          1        2600                                                                                                                                                             
23-MAR-2006 12:00:00          2       20000                                                                                                                                                             
24-MAR-2006 12:00:00          2       17200                                                                                                                                                             
30-MAR-2006 12:00:00          2       16000                                                                                                                                                             
06-APR-2006 12:00:00          1        2500                                                                                                                                                             
23-APR-2006 12:00:00          2       16800                                                                                                                                                             
24-APR-2006 12:00:00          1        3100                                                                                                                                                             
23-MAY-2006 12:00:00          1        3000                                                                                                                                                             
24-JUN-2006 12:00:00          1        3400                                                                                                                                                             
01-JUL-2006 12:00:00          1        3200                                                                                                                                                             
09-JUL-2006 12:00:00          1        2500                                                                                                                                                             
11-JUL-2006 12:00:00          1        2900                                                                                                                                                             
26-AUG-2006 12:00:00          1        2900                                                                                                                                                             
28-SEP-2006 12:00:00          1        2700                                                                                                                                                             
03-NOV-2006 12:00:00          2       14000                                                                                                                                                             
15-NOV-2006 12:00:00          1        2600                                                                                                                                                             
09-DEC-2006 12:00:00          2       15000                                                                                                                                                             
14-JAN-2007 12:00:00          1        2400                                                                                                                                                             
07-FEB-2007 12:00:00          1        3000                                                                                                                                                             
23-FEB-2007 12:00:00          2       14800                                                                                                                                                             
17-MAR-2007 12:00:00          1        2800                                                                                                                                                             
19-MAR-2007 12:00:00          2       19000                                                                                                                                                             
24-MAR-2007 12:00:00          2       14600                                                                                                                                                             
10-APR-2007 12:00:00          1        2100                                                                                                                                                             
24-MAY-2007 12:00:00          1        7000                                                                                                                                                             
21-JUN-2007 12:00:00          2        5100                                                                                                                                                             
10-AUG-2007 12:00:00          1        2500                                                                                                                                                             
15-OCT-2007 12:00:00          2       22000                                                                                                                                                             
16-NOV-2007 12:00:00          1        5800                                                                                                                                                             
23-NOV-2007 12:00:00          2       14000                                                                                                                                                             
07-DEC-2007 12:00:00          1        6900                                                                                                                                                             

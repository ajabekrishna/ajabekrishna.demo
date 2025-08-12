SQL> --Write a query to fetch all those transactions in which AccountID is either 102 or 104 or 106.
SQL> SELECT * FROM Transactions
  2  WHERE AccountID IN (1, 2, 3);

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                   
------------- ---------- --------- ---------- --------------------              
            1          1 01-JAN-23        500 Deposit                           
            2          2 08-JUL-23        900 Credit                            
            3          3 17-DEC-23       2000 Deposit                           

SQL> --Write a SQL query to retrieve all accounts whose Balance is in the range of 1000 to 5000.
SQL> SELECT * FROM Accounts
  2  WHERE BALANCE BETWEEN 1000 AND 5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                           
---------- ---------- -------------------- ----------                           
         1          1 Savings                    1500                           
         3          3 SAVING                     5000                           

SQL> --Find all customers who do not provide a phone number, such as Phone is NULL.
SQL> SELECT * FROM Customers
  2  WHERE PHONE IS NULL;
SELECT * FROM Customers
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * FROM Customer1
  2* WHERE PHONE IS NULL
SQL> /

no rows selected

SQL> --Write a query to return all transactions where the Amount is NULL, if possible in your database.
SQL> SELECT * FROM Transactions
  2  WHERE Amount IS NULL;

no rows selected

SQL> --Write a query to find customers who have not provided their address (i.e., Address is NULL ).
SQL> select * from customer1
  2  where address is NULL;

no rows selected

SQL> --Write query to retrieve balance of accounts where AccountID is NULL.
SQL> SELECT BALANCE FROM ACCOUNTS
  2  WHERE AccountID IS NULL;

no rows selected

SQL> --Write a query to get all inactive customers (IsActive is NULL or 0).
SQL> SELECT ALL FROM Customer1 WHERE IsActive IS NULL OR IsActive = 0;
SELECT ALL FROM Customer1 WHERE IsActive IS NULL OR IsActive = 0
           *
ERROR at line 1:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1* SELECT * FROM Customer1 WHERE IsActive IS NULL OR IsActive = 0
SQL> /
SELECT * FROM Customer1 WHERE IsActive IS NULL OR IsActive = 0
                                                  *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1* SELECT * FROM Customer1 WHERE ISActive IS NULL OR IsActive = 0
SQL> /
SELECT * FROM Customer1 WHERE ISActive IS NULL OR IsActive = 0
                                                  *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> spool on

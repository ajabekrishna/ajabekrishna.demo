SQL> --Write a query to retrieve the details of customers whose Name starts with 'J'.
SQL> SELECT * FROM Customer1 WHERE Name LIKE 'J%';

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         2                                                                      
John Balley                                                                     
john43@gmail.com                                                                

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
8798654323                                                                      
America                                                                         
                                                                                

SQL> --.Write a query to fetch customers who have an email address that contains "gmail.com".
SQL> SELECT * FROM Customer1 WHERE Email LIKE '%gmail.com';

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         1                                                                      
Stev Harington                                                                  
stevharing23@gmail.com                                                          

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
9876452309                                                                      
Washington                                                                      
                                                                                

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         2                                                                      
John Balley                                                                     
john43@gmail.com                                                                

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
8798654323                                                                      
America                                                                         
                                                                                

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         3                                                                      
Ronny dex                                                                       
ronny87@gmail.com                                                               

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
9065342567                                                                      
South Africa                                                                    
                                                                                

SQL> --Write a query to list all transactions for the month of January 2024 (assuming tDate column exists in the Transactions table).
SQL> SELECT *
  2  FROM Transactions
  3  WHERE tDate BETWEEN TO_DATE('2024-01-01', 'YYYY-MM-DD')
  4  AND TO_DATE('2023-12-17', 'YYYY-MM-DD');

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  SELECT *
  2  FROM Transactions
  3  WHERE tDate BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD')
  4* AND TO_DATE('2023-12-17', 'YYYY-MM-DD')
SQL> /

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                   
------------- ---------- --------- ---------- --------------------              
            1          1 01-JAN-23        500 Deposit                           
            2          2 08-JUL-23        900 Credit                            
            3          3 17-DEC-23       2000 Deposit                           

SQL> --Write a query to find all accounts with a balance less than 500.
SQL> --Write a query to find all accounts with a balance less than 1200.
SQL> SELECT * FROM Accounts WHERE Balance < 12000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                           
---------- ---------- -------------------- ----------                           
         1          1 Savings                    1500                           
         3          3 SAVING                     5000                           

SQL> --Write a query to retrieve customers whose Phone number contains '89'.
SQL> SELECT * FROM Customer1 WHERE Phone LIKE '%89%';

no rows selected

SQL> --Write a query to find all customers who have an address starting with 'America'.
SQL> SELECT * FROM Customers WHERE Address LIKE 'America%';
SELECT * FROM Customers WHERE Address LIKE 'America%'
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* SELECT * FROM Customer1 WHERE Address LIKE 'America%'
SQL> /

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         2                                                                      
John Balley                                                                     
john43@gmail.com                                                                

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
8798654323                                                                      
America                                                                         
                                                                                

SQL> --Write a query to list all transactions for a specific TransactionType (e.g., 'Deposit').
SQL> SELECT * FROM Transactions
  2  WHERE TransactionType = 'Deposit';

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                   
------------- ---------- --------- ---------- --------------------              
            1          1 01-JAN-23        500 Deposit                           
            3          3 17-DEC-23       2000 Deposit                           

SQL> --Write a query that will return all transactions whose TransactionType is 'Deposit' or 'Withdrawal'.
SQL> SELECT * FROM Transactions
  2  WHERE TransactionType IN ('Deposit', 'Withdrawal');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                   
------------- ---------- --------- ---------- --------------------              
            1          1 01-JAN-23        500 Deposit                           
            3          3 17-DEC-23       2000 Deposit                           

SQL> Write a query that will list customers whose account type is either 'Savings' or 'Checking'.
SP2-0734: unknown command beginning "Write a qu..." - rest of line ignored.
SQL> --Write a query that will list customers whose account type is either 'Savings' or 'Checking'.
SQL> SELECT * FROM Customers
  2  WHERE CustomerID
  3  IN
  4  (SELECT CustomerID FROM Accounts WHERE AccountType IN ('Savings, 'Checking'));
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * FROM Customer1
  2  WHERE CustomerID
  3  IN
  4* (SELECT CustomerID FROM Accounts WHERE AccountType IN ('Savings, 'Checking'))
SQL> /
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * FROM Customer1
  2  WHERE CustomerID
  3  IN
  4* (SELECT CustomerID FROM Accounts WHERE AccountType IN ('Savings', 'Checking'))
SQL> /

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
         1                                                                      
Stev Harington                                                                  
stevharing23@gmail.com                                                          

CUSTOMERID                                                                      
----------                                                                      
NAME                                                                            
--------------------------------------------------------------------------------
EMAIL                                                                           
--------------------------------------------------------------------------------
PHONE                                                                           
---------------                                                                 
ADDRESS                                                                         
--------------------------------------------------------------------------------
9876452309                                                                      
Washington                                                                      
                                                                                

SQL> 

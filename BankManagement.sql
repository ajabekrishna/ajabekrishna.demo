SQL> create table customer1(
  2  customerid number primary key,
  3  name varchar2(100) not null,
  4  email varchar2(100) unique,
  5  phone varchar2(15) not null,
  6  address varchar2(255))
  7  /

Table created.

SQL> INSERT INTO CUSTOMER1(CUSTOMERID,NAME,EMAIL,PHONE,ADDRESS)
  2  VALUES(1,'Stev Harington','stevharing23@gmail.com','9876452309','Washington');

1 row created.

SQL> INSERT INTO CUSTOMER1(CUSTOMERID,NAME,EMAIL,PHONE,ADDRESS)
  2  VALUES(2,'John Balley','john43@gmail.com','8798654323','America');

1 row created.

SQL> INSERT INTO CUSTOMER1(CUSTOMERID,NAME,EMAIL,PHONE,ADDRESS)
  2   VALUES(3,'Ronny dex','ronny87@gmail.com','9065342567','South Africa');

1 row created.

SQL> 
SQL> set pagesize 200
SQL> set linesize 200
SQL> select * from customer1;

CUSTOMERID NAME                                                                                                                                                                                         
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                PHONE                                                                                              
---------------------------------------------------------------------------------------------------- ---------------                                                                                    
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         1 Stev Harington                                                                                                                                                                               
stevharing23@gmail.com                                                                               9876452309                                                                                         
Washington                                                                                                                                                                                              
                                                                                                                                                                                                        
         2 John Balley                                                                                                                                                                                  
john43@gmail.com                                                                                     8798654323                                                                                         
America                                                                                                                                                                                                 
                                                                                                                                                                                                        
         3 Ronny dex                                                                                                                                                                                    
ronny87@gmail.com                                                                                    9065342567                                                                                         
South Africa                                                                                                                                                                                            
                                                                                                                                                                                                        

SQL>  CREATE TABLE ACCOUNTS(
  2      ACCOUNTID NUMBER PRIMARY KEY,
  3      CUSTOMERID NUMBER,
  4      ACCOUNTTYPE VARCHAR2(20) NOT NULL,
  5      BALANCE NUMBER DEFAULT 0 CHECK(BALANCE>=0),
  6      FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER1(CUSTOMERID)
  7      )
  8  /

Table created.

SQL> INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance)
  2   VALUES (1, 1, 'Savings', 1500);

1 row created.

SQL> INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance)
  2  VALUES(2,2,'Current',12000);

1 row created.

SQL> 
SQL> INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance)
  2  VALUES(3,3,'SAVING',5000);

1 row created.

SQL> 
SQL> CREATE TABLE TRANSACTIONS(
  2  TRANSACTIONID NUMBER PRIMARY KEY,
  3  ACCOUNTID NUMBER,
  4  TDATE DATE NOT NULL,
  5  AMOUNT NUMBER NOT NULL CHECK(AMOUNT>=0),
  6  TRANSACTIONTYPE VARCHAR2(20) NOT NULL,
  7  FOREIGN KEY(ACCOUNTID) REFERENCES ACCOUNTS(ACCOUNTID)
  8  )
  9  /

Table created.

SQL> 
SQL> INSERT INTO Transactions (TransactionID, AccountID, tDate, Amount, TransactionType)
  2  VALUES (1, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 500.00, 'Deposit');

1 row created.

SQL> 
SQL> INSERT INTO Transactions (TransactionID, AccountID, tDate, Amount, TransactionType)
  2  VALUES (2, 2, TO_DATE('2023-07-08', 'YYYY-MM-DD'), 900.00, 'Credit');

1 row created.

SQL> 
SQL> INSERT INTO Transactions (TransactionID, AccountID, tDate, Amount, TransactionType)
  2  VALUES (3, 3, TO_DATE('2023-12-17', 'YYYY-MM-DD'), 2000.00, 'Deposit');

1 row created.

SQL> select * from accounts;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
         1          1 Savings                    1500                                                                                                                                                   
         2          2 Current                   12000                                                                                                                                                   
         3          3 SAVING                     5000                                                                                                                                                   

SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-23        500 Deposit                                                                                                                                                   
            2          2 08-JUL-23        900 Credit                                                                                                                                                    
            3          3 17-DEC-23       2000 Deposit                                                                                                                                                   

SQL> --Write a query to retrieve the Name and Email of all customers from the Customers table.
SQL> SELECT Name, Email FROM Customer1;

NAME                                                                                                                                                                                                    
----------------------------------------------------------------------------------------------------                                                                                                    
EMAIL                                                                                                                                                                                                   
----------------------------------------------------------------------------------------------------                                                                                                    
Stev Harington                                                                                                                                                                                          
stevharing23@gmail.com                                                                                                                                                                                  
                                                                                                                                                                                                        
John Balley                                                                                                                                                                                             
john43@gmail.com                                                                                                                                                                                        
                                                                                                                                                                                                        
Ronny dex                                                                                                                                                                                               
ronny87@gmail.com                                                                                                                                                                                       
                                                                                                                                                                                                        

SQL> --Write a query to fetch AccountID and Balance from the Accounts table.
SQL> SELECT AccountID, Balance FROM Accounts;

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         1       1500                                                                                                                                                                                   
         2      12000                                                                                                                                                                                   
         3       5000                                                                                                                                                                                   

SQL> --Write a query to retrieve all columns from the Transactions table.
SQL> SELECT * FROM Transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-23        500 Deposit                                                                                                                                                   
            2          2 08-JUL-23        900 Credit                                                                                                                                                    
            3          3 17-DEC-23       2000 Deposit                                                                                                                                                   

SQL> --Write a query to fetch the CustomerID, Name, and Email of customer1.
SQL> SELECT CustomerID, Name, Email FROM Customer1;

CUSTOMERID NAME                                                                                                                                                                                         
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                                                                                                                   
----------------------------------------------------------------------------------------------------                                                                                                    
         1 Stev Harington                                                                                                                                                                               
stevharing23@gmail.com                                                                                                                                                                                  
                                                                                                                                                                                                        
         2 John Balley                                                                                                                                                                                  
john43@gmail.com                                                                                                                                                                                        
                                                                                                                                                                                                        
         3 Ronny dex                                                                                                                                                                                    
ronny87@gmail.com                                                                                                                                                                                       
                                                                                                                                                                                                        

SQL> --Write a query to retrieve all columns from the Customers table.
SQL> SELECT * FROM Customer1;

CUSTOMERID NAME                                                                                                                                                                                         
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                PHONE                                                                                              
---------------------------------------------------------------------------------------------------- ---------------                                                                                    
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         1 Stev Harington                                                                                                                                                                               
stevharing23@gmail.com                                                                               9876452309                                                                                         
Washington                                                                                                                                                                                              
                                                                                                                                                                                                        
         2 John Balley                                                                                                                                                                                  
john43@gmail.com                                                                                     8798654323                                                                                         
America                                                                                                                                                                                                 
                                                                                                                                                                                                        
         3 Ronny dex                                                                                                                                                                                    
ronny87@gmail.com                                                                                    9065342567                                                                                         
South Africa                                                                                                                                                                                            
                                                                                                                                                                                                        

SQL> --.Write a query to retrieve all columns from the Transactions table where the transaction amount is greater than 500.
SQL> SELECT *
  2  FROM Transactions
  3  WHERE Amount > 500;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            2          2 08-JUL-23        900 Credit                                                                                                                                                    
            3          3 17-DEC-23       2000 Deposit                                                                                                                                                   

SQL> --Write a query to fetch all customer records without using *.
SQL> SELECT CustomerID, Name, Email, Phone, Address FROM Customer1;

CUSTOMERID NAME                                                                                                                                                                                         
---------- ----------------------------------------------------------------------------------------------------                                                                                         
EMAIL                                                                                                PHONE                                                                                              
---------------------------------------------------------------------------------------------------- ---------------                                                                                    
ADDRESS                                                                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         1 Stev Harington                                                                                                                                                                               
stevharing23@gmail.com                                                                               9876452309                                                                                         
Washington                                                                                                                                                                                              
                                                                                                                                                                                                        
         2 John Balley                                                                                                                                                                                  
john43@gmail.com                                                                                     8798654323                                                                                         
America                                                                                                                                                                                                 
                                                                                                                                                                                                        
         3 Ronny dex                                                                                                                                                                                    
ronny87@gmail.com                                                                                    9065342567                                                                                         
South Africa                                                                                                                                                                                            
                                                                                                                                                                                                        

SQL> --Write a query to retrieve all transaction details for a specific AccountID
SQL> SELECT * FROM Transactions WHERE AccountID = 1;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1          1 01-JAN-23        500 Deposit                                                                                                                                                   

SQL> --Write a query to find customers who are active (assuming IsActive = 1 exists in the Customers table).
SQL> SELECT * FROM Customer1 WHERE IsActive = 1;
SELECT * FROM Customer1 WHERE IsActive = 1
                              *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> 

SQL> SELECT i.Name, iat.Address_Type, ici.Phone_Number1, ici.Phone_Number2
  2  FROM Instructor i
  3  JOIN Instructor_Address_Type iat
  4  ON i.Instructor_ID = iat.Instructor_ID
  5  JOIN Instructor_Address ia
  6  ON iat.Instructor_Address_ID = ia.Instructor_Address_ID
  7  JOIN Instructor_Contact_Info ici
  8  ON ici.House_Number = ia.House_Number
  9  WHERE Instructor_Position = 'Module Leader'
 10  ORDER BY i.Name;

NAME                 ADDRESS_TYPE    PHONE_NUMBER1 PHONE_NUMBER2                                                                                                                                                                                                                                                                                                                                                
-------------------- --------------- ------------- -------------                                                                                                                                                                                                                                                                                                                                                
Rohan Khatiwada      Temporary          9876543210                                                                                                                                                                                                                                                                                                                                                              
Rohan Khatiwada      Permanent          9876543336    9803758269                                                                                                                                                                                                                                                                                                                                                
Surendra KC          Temporary          9876558643                                                                                                                                                                                                                                                                                                                                                              
Surendra KC          Permanent          9876541167    9878262620                                                                                                                                                                                                                                                                                                                                                
Umesh Nepal          Permanent          9812345678    9808734828                                                                                                                                                                                                                                                                                                                                                
Umesh Nepal          Temporary          9863468368                                                                                                                                                                                                                                                                                                                                                              
Yurisha Banjade      Permanent          9808639273    9897564827                                                                                                                                                                                                                                                                                                                                                
Yurisha Banjade      Temporary          9875643210    9808765432                                                                                                                                                                                                                                                                                                                                                

8 rows selected.

SQL> SPOOL OFF;

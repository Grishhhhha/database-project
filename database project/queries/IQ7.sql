SQL> SELECT i.Name, iat.Address_Type, ici.Fax_Number
  2  FROM Instructor_Contact_Info ici
  3  JOIN Instructor_Address ia
  4  ON ici.House_Number = ia.House_Number
  5  JOIN Instructor_Address_Type iat
  6  ON iat.Instructor_Address_ID = ia.Instructor_Address_ID
  7  JOIN Instructor i
  8  ON i.Instructor_ID = iat.Instructor_ID
  9  JOIN Instructor_Info ii
 10  ON i.Instructor_ID =  ii.Instructor_ID
 11  JOIN Module m
 12  ON m.Module_ID =  ii.Module_ID
 13  WHERE m.Module_Name = 'Database'
 14  ORDER BY i.Name;

NAME                 ADDRESS_TYPE    FAX_NUMBER                                                                                                                                                                                                                                                                                                                                                                 
-------------------- --------------- ----------                                                                                                                                                                                                                                                                                                                                                                 
Biwash Adhikari      Temporary           779765                                                                                                                                                                                                                                                                                                                                                                 
Biwash Adhikari      Permanent           786553                                                                                                                                                                                                                                                                                                                                                                 
Yurisha Banjade      Permanent                                                                                                                                                                                                                                                                                                                                                                                  
Yurisha Banjade      Temporary                                                                                                                                                                                                                                                                                                                                                                                  

SQL> SPOOL OFF;

SQL> SELECT s.Name, sp.Specification_name
  2  FROM Student s
  3  JOIN Marks m
  4  ON m.Student_ID = s.Student_ID
  5  JOIN Specification sp
  6  ON sp.Specification_ID = m.Specification_ID
  7  WHERE sp.Specification_Name = 'Networking';

NAME                 SPECIFICATION_NAME                                                                                                                                                                                                                                                                                                                                                                         
-------------------- --------------------                                                                                                                                                                                                                                                                                                                                                                       
Srijan Adhikari      Networking                                                                                                                                                                                                                                                                                                                                                                                 
Simran Ranjit        Networking                                                                                                                                                                                                                                                                                                                                                                                 

SQL> SPOOL OFF;

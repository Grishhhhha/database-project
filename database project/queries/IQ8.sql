SQL> SELECT s.Specification_Name, c.Course_Name
  2  FROM Specification s
  3  JOIN Specification_Info si
  4  ON s.Specification_ID = si.Specification_ID
  5  JOIN Course c
  6  ON si.Course_ID = c.Course_ID
  7  WHERE c.Course_Name = 'B.Sc.IT'
  8  ORDER BY s.Specification_Name;

SPECIFICATION_NAME   COURSE_NAME                                                                                                                                                                                                                                                                                                                                                                                
-------------------- --------------------                                                                                                                                                                                                                                                                                                                                                                       
Computing            B.Sc.IT                                                                                                                                                                                                                                                                                                                                                                                    
Multimedia           B.Sc.IT                                                                                                                                                                                                                                                                                                                                                                                    
Networking           B.Sc.IT                                                                                                                                                                                                                                                                                                                                                                                    

SQL> SPOOL OFF;

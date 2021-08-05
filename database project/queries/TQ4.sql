SQL> SELECT i1.Name, x1.Salary, x1.Specification_Name
  2          From (
  3  SELECT * FROM (
  4  SELECT i.Instructor_ID, p.Salary, s.Specification_Name
  5   FROM Instructor i
  6         JOIN Instructor_Info ii ON ii.Instructor_ID = i.Instructor_ID
  7         JOIN Specification s ON s.Specification_ID = ii.Specification_ID
  8         JOIN Position p ON p.Instructor_Position = i.Instructor_Position
  9  GROUP BY s.Specification_Name, p.Salary, i.Instructor_ID) y1
 10         WHERE (
 11      SELECT COUNT(*) FROM (
 12          SELECT i.Instructor_ID, p.Salary, s.Specification_Name
 13   FROM Instructor i
 14         JOIN Instructor_Info ii ON ii.Instructor_ID = i.Instructor_ID
 15         JOIN Specification s ON s.Specification_ID = ii.Specification_ID
 16         JOIN Position p ON p.Instructor_Position = i.Instructor_Position
 17  GROUP BY s.Specification_Name, p.Salary, i.Instructor_ID) y2
 18  WHERE y1.Salary = y2.Salary
 19  AND
 20  y1.Specification_Name =y2.Specification_Name) >1
 21  ) x1
 22  JOIN Instructor i1 on x1.Instructor_ID = i1.Instructor_ID
 23  ORDER BY x1.Salary, x1.specification_Name, i1.Name;

NAME                     SALARY SPECIFICATION_NAME                                                                                                                                                                                                                                                                                                                                                              
-------------------- ---------- --------------------                                                                                                                                                                                                                                                                                                                                                            
Sangita Poudyal           90500 Computing                                                                                                                                                                                                                                                                                                                                                                       
Supriya Shrestha          90500 Computing                                                                                                                                                                                                                                                                                                                                                                       
Rohan Khatiwada           93500 Business                                                                                                                                                                                                                                                                                                                                                                        
Surendra KC               93500 Business                                                                                                                                                                                                                                                                                                                                                                        

SQL> SPOOL OFF;

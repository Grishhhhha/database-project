SQL> SELECT c.Course_Name, COUNT(m.Student_ID) AS "Total Students", MAX(m.Marks) AS "Highest Marks"
  2  FROM Course c
  3  JOIN Marks m
  4  ON c.Course_ID = m.Course_ID
  5  GROUP BY Course_Name;

COURSE_NAME          Total Students Highest Marks                                                                                                                                                                                                                                                                                                                                                               
-------------------- -------------- -------------                                                                                                                                                                                                                                                                                                                                                               
MBA                               1            69                                                                                                                                                                                                                                                                                                                                                               
M.Sc.IT                           1            80                                                                                                                                                                                                                                                                                                                                                               
B.Sc.IT                           6            90                                                                                                                                                                                                                                                                                                                                                               
BBA                               4            95                                                                                                                                                                                                                                                                                                                                                               

SQL> SPOOL OFF;

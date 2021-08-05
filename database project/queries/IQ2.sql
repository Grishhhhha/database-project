SQL> SELECT ii.Module_ID,m.Module_Name,Count(ii.Instructor_ID) AS "No of Instructor"
  2  FROM Instructor_Info ii
  3  JOIN Module m
  4  ON m.Module_ID = ii.Module_ID
  5  GROUP BY ii.Module_ID,m.Module_Name
  6  HAVING COUNT(ii.Module_ID)>1;

MODULE_ID  MODULE_NAME          No of Instructor                                                                                                                                                                                                                                                                                                                                                                
---------- -------------------- ----------------                                                                                                                                                                                                                                                                                                                                                                
SCM3       Cyber Security Mgmt                 2                                                                                                                                                                                                                                                                                                                                                                
ES3        Economics                           2                                                                                                                                                                                                                                                                                                                                                                
D3         Database                            2                                                                                                                                                                                                                                                                                                                                                                
SM3        Service Marketing                   2                                                                                                                                                                                                                                                                                                                                                                

SQL> SPOOL OFF;

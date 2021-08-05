SQL> SELECT s.Specification_Name, m.Module_Name
  2  FROM Module m
  3  JOIN Module_Info mi
  4  ON m.Module_ID = mi.Module_ID
  5  JOIN Specification s
  6  ON mi.Specification_ID = s.Specification_ID
  7  WHERE Specification_Name = 'Multimedia';

SPECIFICATION_NAME   MODULE_NAME                                                                                                                                                                                                                                                                                                                                                                                
-------------------- --------------------                                                                                                                                                                                                                                                                                                                                                                       
Multimedia           3D Modelling                                                                                                                                                                                                                                                                                                                                                                               

SQL> SPOOL OFF;

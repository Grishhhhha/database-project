SQL> SELECT Name, (SYSDATE-Enrollment_Date)/7 AS "No. of weeks since Enrollment"
  2  FROM Student;

NAME                 No. of weeks since Enrollment                                                                                                                                                                                                                                                                                                                                                              
-------------------- -----------------------------                                                                                                                                                                                                                                                                                                                                                              
Grisha Giri                             96.6484392                                                                                                                                                                                                                                                                                                                                                              
Srijan Adhikari                         109.362725                                                                                                                                                                                                                                                                                                                                                              
Rojan Shrestha                          57.0770106                                                                                                                                                                                                                                                                                                                                                              
Aditi Dhakal                            96.0770106                                                                                                                                                                                                                                                                                                                                                              
Labbi Karmasta                          96.7912963                                                                                                                                                                                                                                                                                                                                                              
Prince Panjiyar                         148.648439                                                                                                                                                                                                                                                                                                                                                              
Rohit Parajuli                          160.362725                                                                                                                                                                                                                                                                                                                                                              
Pragati Gautam                          160.219868                                                                                                                                                                                                                                                                                                                                                              
Alisha Basnet                           109.362725                                                                                                                                                                                                                                                                                                                                                              
Roman Bhandari                          148.791296                                                                                                                                                                                                                                                                                                                                                              
Ashish Gautam                           160.362725                                                                                                                                                                                                                                                                                                                                                              

NAME                 No. of weeks since Enrollment                                                                                                                                                                                                                                                                                                                                                              
-------------------- -----------------------------                                                                                                                                                                                                                                                                                                                                                              
Simran Ranjit                           160.219868                                                                                                                                                                                                                                                                                                                                                              

12 rows selected.

SQL> SPOOL OFF;
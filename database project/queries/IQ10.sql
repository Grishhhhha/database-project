SQL> SELECT i.Name, ia.Country, ia.Province, ia.City, ia.Street, ia.House_Number, iat.Address_type
  2  FROM Instructor i
  3  JOIN Instructor_Address_Type iat
  4  ON i.Instructor_ID = iat.Instructor_ID
  5  JOIN Instructor_Address ia
  6  ON iat.Instructor_Address_ID = ia.Instructor_Address_ID
  7  WHERE SUBSTR(i.Name, 1, INSTR(i.Name, ' ') - 1) LIKE '%a';

NAME                 COUNTRY              PROVINCE             CITY                 STREET               HOUSE_NUMBER ADDRESS_TYPE                                                                                                                                                                                                                                                                              
-------------------- -------------------- -------------------- -------------------- -------------------- ------------ ---------------                                                                                                                                                                                                                                                                           
Yurisha Banjade      Nepal                Bagmati              Kathmandu            Thamel                        100 Temporary                                                                                                                                                                                                                                                                                 
Yurisha Banjade      Nepal                Gandaki              Pokhara              Prithivi Chowk                240 Permanent                                                                                                                                                                                                                                                                                 
Supriya Shrestha     Nepal                Bagmati              Kathmandu            Baluwatar                     140 Permanent                                                                                                                                                                                                                                                                                 
Sangita Poudyal      Nepal                Province 1           Illam                Chiya Bagan                   666 Permanent                                                                                                                                                                                                                                                                                 
Surendra KC          Nepal                Bagmati              Kathmandu            Kamalpokhari                  191 Temporary                                                                                                                                                                                                                                                                                 
Surendra KC          Nepal                Sudarpashim          Dhangadhi            Hasanpur                      998 Permanent                                                                                                                                                                                                                                                                                 
Sangita Poudyal      Nepal                Bagmati              Kathmandu            169                           169 Temporary                                                                                                                                                                                                                                                                                 

7 rows selected.

SQL> SPOOL OFF;

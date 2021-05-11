--------------------------------------------------------
--  File created - wtorek-maja-11-2021   
--------------------------------------------------------
REM INSERTING into CATHEDRAL
SET DEFINE OFF;
Insert into CATHEDRAL (ID,CATHEDRAL_NAME,FACULTY_ID) values ('1','Katedra Informatyki Stosowanej i Modelowania','1');
Insert into CATHEDRAL (ID,CATHEDRAL_NAME,FACULTY_ID) values ('2','Katedra Techniki Cieplnej i Ochrony Środowiska','1');
REM INSERTING into CLASSES
SET DEFINE OFF;
Insert into CLASSES (ID,CLASSES_TYPE,WORK_GROUP_ID,SUBJECT_ID,EMPLOYEE_ID) values ('1','w','1','1','1');
Insert into CLASSES (ID,CLASSES_TYPE,WORK_GROUP_ID,SUBJECT_ID,EMPLOYEE_ID) values ('2','l','1','1','1');
Insert into CLASSES (ID,CLASSES_TYPE,WORK_GROUP_ID,SUBJECT_ID,EMPLOYEE_ID) values ('3','l','2','1','1');
Insert into CLASSES (ID,CLASSES_TYPE,WORK_GROUP_ID,SUBJECT_ID,EMPLOYEE_ID) values ('4','w','1','2','2');
Insert into CLASSES (ID,CLASSES_TYPE,WORK_GROUP_ID,SUBJECT_ID,EMPLOYEE_ID) values ('5','w','3','3','1');
REM INSERTING into EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (ID,FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_EMPLOYMENT,DATE_OF_RELEASE,POSITION_ID,FACULTY_ID,CATHEDRAL_ID) values ('1','Tomasz','Lechłas','88876789890','Kraków','32-021','666555444','leclas@agh.pl',to_date('99/01/01','RR/MM/DD'),null,'2','1','1');
Insert into EMPLOYEE (ID,FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_EMPLOYMENT,DATE_OF_RELEASE,POSITION_ID,FACULTY_ID,CATHEDRAL_ID) values ('2','Jadwiga','Smolka','99887678769','Kraków','32-021','666533322','smolka@agh.pl',to_date('19/01/01','RR/MM/DD'),null,'3','1','2');
Insert into EMPLOYEE (ID,FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_EMPLOYMENT,DATE_OF_RELEASE,POSITION_ID,FACULTY_ID,CATHEDRAL_ID) values ('3','Mikołaj','Wiecławski','99887678765','Kraków','32-021','666533111','wiecha@agh.pl',to_date('71/01/01','RR/MM/DD'),to_date('18/01/01','RR/MM/DD'),'2','1','1');
REM INSERTING into FACULTY
SET DEFINE OFF;
Insert into FACULTY (ID,FACULTY_NAME,ABBREVIATION) values ('1','Wydział Inżynierii Metali i Informatyki Przemysłowej','WIMiIP');
Insert into FACULTY (ID,FACULTY_NAME,ABBREVIATION) values ('2','Wydział Informatyki, Eleketroniki i Telekomunikacji','WIET');
REM INSERTING into MARK
SET DEFINE OFF;
Insert into MARK (ID,MARK,CLASSES_ID,STUDENT_INDEX) values ('1','3,5','1','111111');
Insert into MARK (ID,MARK,CLASSES_ID,STUDENT_INDEX) values ('2','2,5','5','222222');
Insert into MARK (ID,MARK,CLASSES_ID,STUDENT_INDEX) values ('3','4,5','5','333333');
Insert into MARK (ID,MARK,CLASSES_ID,STUDENT_INDEX) values ('4','4,5','5','111111');
Insert into MARK (ID,MARK,CLASSES_ID,STUDENT_INDEX) values ('5','2,5','5','111111');
REM INSERTING into POSITION
SET DEFINE OFF;
Insert into POSITION (ID,NAME_OF_POSITION) values ('1','sekretarz');
Insert into POSITION (ID,NAME_OF_POSITION) values ('2','wykładowca');
Insert into POSITION (ID,NAME_OF_POSITION) values ('3','doktorant');
REM INSERTING into STUDENT
SET DEFINE OFF;
Insert into STUDENT ("index",FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_ENROLLMENT,DATE_OF_DISCHARGE,FACULTY_ID) values ('111111','Arkadiusz','Wichurka','8887678999','Kraków','32-021','666555422','wichurka@student.agh.pl',to_date('20/10/01','RR/MM/DD'),null,'1');
Insert into STUDENT ("index",FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_ENROLLMENT,DATE_OF_DISCHARGE,FACULTY_ID) values ('222222','Mariusz','Kałabunga','8887678922','Kraków','32-021','663355422','kałabunga@student.agh.pl',to_date('19/10/01','RR/MM/DD'),to_date('20/10/01','RR/MM/DD'),'1');
Insert into STUDENT ("index",FIRST_NAME,LAST_NAME,PESEL,LOCALITY,POSTAL_CODE,PHONE,EMAIL,DATE_OF_ENROLLMENT,DATE_OF_DISCHARGE,FACULTY_ID) values ('333333','Izebedeusz','Palestizra','8887678910','Kraków','32-021','223355422','palestr@student.agh.pl',to_date('10/10/01','RR/MM/DD'),null,'1');
REM INSERTING into STUDENT_WORK_GROUP
SET DEFINE OFF;
Insert into STUDENT_WORK_GROUP (STUDENT_INDEX,WORK_GROUP_ID) values ('111111','3');
Insert into STUDENT_WORK_GROUP (STUDENT_INDEX,WORK_GROUP_ID) values ('222222','2');
Insert into STUDENT_WORK_GROUP (STUDENT_INDEX,WORK_GROUP_ID) values ('222222','3');
Insert into STUDENT_WORK_GROUP (STUDENT_INDEX,WORK_GROUP_ID) values ('333333','1');
REM INSERTING into SUBJECT
SET DEFINE OFF;
Insert into SUBJECT (ID,SUBJECT_NAME) values ('1','podstawy mechaniki ciała stałego');
Insert into SUBJECT (ID,SUBJECT_NAME) values ('2','metody numeryczne');
Insert into SUBJECT (ID,SUBJECT_NAME) values ('3','bazy danych');
REM INSERTING into WORK_GROUP
SET DEFINE OFF;
Insert into WORK_GROUP (ID,GROUP_CODE) values ('1','g1_it_2020');
Insert into WORK_GROUP (ID,GROUP_CODE) values ('2','g2_it_2020');
Insert into WORK_GROUP (ID,GROUP_CODE) values ('3','g3_it_2020');

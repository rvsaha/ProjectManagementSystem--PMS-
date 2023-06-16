--------------------------------------------------------
--  File created - Friday-November-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."DEPARTMENT" 
   (	"DEPTNUMBER" NUMBER(2 BYTE), 
	"DEPTNAME" VARCHAR2(30 BYTE), 
	"HODDEPT" VARCHAR2(30 BYTE)
   ) 
   
   
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (1,'Testing','Rishav');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (3,'CSE','UJJWAL');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (8,'Stationary','Vijay');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (9,'Oracle','Rishav');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (12,'HRIS','MR. Shashii');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (6,'Transportation','Balbir SIngh');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (4,'ECE','SIDD');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (2,'ISE','VIJAYI');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (5,'MAS','shashi');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (7,'FMG','Chaitanya Teja Chondulu');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (11,'GSE','Shashi');
Insert into TEAM3.DEPARTMENT (DEPTNUMBER,DEPTNAME,HODDEPT) values (20,'Manufacturing','Vijay');
  
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_PK" PRIMARY KEY ("DEPTNUMBER")
 
  ALTER TABLE "TEAM3"."DEPARTMENT" MODIFY ("DEPTNUMBER" NOT NULL);
 
  ALTER TABLE "TEAM3"."DEPARTMENT" MODIFY ("DEPTNAME" NOT NULL);
 
  ALTER TABLE "TEAM3"."DEPARTMENT" MODIFY ("HODDEPT" NOT NULL);

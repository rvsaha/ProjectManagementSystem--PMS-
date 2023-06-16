--------------------------------------------------------
--  File created - Friday-November-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "TEAM3"."EMPLOYEE" 
   (	"EMPNUMBER" NUMBER(10,BYTE), 
	"SALUTATION" VARCHAR2(5 BYTE), 
	"FIRSTNAME" VARCHAR2(30 BYTE), 
	"LASTNAME" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(50 BYTE), 
	"CITY" VARCHAR2(35 BYTE), 
	"STATE" VARCHAR2(40 BYTE), 
	"PINCODE" NUMBER(6,BYTE), 
	"OPHONE" VARCHAR2(20 BYTE), 
	"MOBILE" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE), 
	"DEPTNUMBER" NUMBER(2,BYTE), 
	"ROLE" VARCHAR2(20 BYTE) DEFAULT 'Employee', 
	"DOB" VARCHAR2(20 BYTE), 
	"GENDER" VARCHAR2(10 BYTE)
   ) 
   
   
Insert into TEAM3.EMPLOYEE (EMPNUMBER,SALUTATION,FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,PINCODE,OPHONE,MOBILE,EMAIL,USERNAME,PASSWORD,DEPTNUMBER,ROLE,DOB,GENDER) values (14,'Mr','KK ','Singh','  MG road, Jaipur, Rajasthan','Jaipur','Rajasthan',565652,'7894582613','7534896120','kksingh@gmail.com','e','e',7,'employee','1990-07-04','male');
Insert into TEAM3.EMPLOYEE (EMPNUMBER,SALUTATION,FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,PINCODE,OPHONE,MOBILE,EMAIL,USERNAME,PASSWORD,DEPTNUMBER,ROLE,DOB,GENDER) values (2,'Mr','Farman','Khan','  Ghadighat','kotdwar','Uttarakhand',246149,'9837459698','7404838623','farmanKhan.fk07@gmail.com','Farman','abc@123A',9,'employee','1997-01-09','male');
Insert into TEAM3.EMPLOYEE (EMPNUMBER,SALUTATION,FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,PINCODE,OPHONE,MOBILE,EMAIL,USERNAME,PASSWORD,DEPTNUMBER,ROLE,DOB,GENDER) values (101,'Mrs','Arti','Gupta','Durga Asthan Manpur','Gaya','Bihar',823003,'0631-2451391','9883984565','artigupta@gmail.com','arti123','Arti@123',1,'employee','2014-10-22','female');
Insert into TEAM3.EMPLOYEE (EMPNUMBER,SALUTATION,FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,PINCODE,OPHONE,MOBILE,EMAIL,USERNAME,PASSWORD,DEPTNUMBER,ROLE,DOB,GENDER) values (123,'Mr','Vijay','Gupta','  45,Kothra Road','Ahmedabad','Gujarat',104845,'9898989898','9898989898','vijay@gmail.com','vijay','vijay',20,'employee','2019-11-21','male');
Insert into TEAM3.EMPLOYEE (EMPNUMBER,SALUTATION,FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,PINCODE,OPHONE,MOBILE,EMAIL,USERNAME,PASSWORD,DEPTNUMBER,ROLE,DOB,GENDER) values (1,'Mr','Varsha','G.Naik','Eden Woods Apartment','Konkan','Karnataka',568935,'9865754632','6589354789','varsh@Gnaik.com','admin','admin',1,'admin','1998-07-04','female');
 
  
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "TEAM3"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_UK1" UNIQUE ("USERNAME")
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("EMPNUMBER" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("SALUTATION" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("FIRSTNAME" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("LASTNAME" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("MOBILE" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("EMAIL" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("USERNAME" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" MODIFY ("PASSWORD" NOT NULL);
 
  ALTER TABLE "TEAM3"."EMPLOYEE" ADD PRIMARY KEY ("EMPNUMBER")
 
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "TEAM3"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_FK1" FOREIGN KEY ("DEPTNUMBER")
	  REFERENCES "TEAM3"."DEPARTMENT" ("DEPTNUMBER"));

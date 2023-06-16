--------------------------------------------------------
--  File created - Friday-November-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONTACT
--------------------------------------------------------

  CREATE TABLE "TEAM3"."CONTACT" 
   (	"NAME" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"CONTACTNUMBER" VARCHAR2(20 BYTE), 
	"MESSAGE" VARCHAR2(500 BYTE)
   ) 
   
   
Insert into TEAM3.CONTACT (NAME,EMAIL,CONTACTNUMBER,MESSAGE) values ('Ujjwal','ujjwlaab@hsag.com','7897456178','hey this is good.');
Insert into TEAM3.CONTACT (NAME,EMAIL,CONTACTNUMBER,MESSAGE) values ('Bansal','bansal@gmail.com','7821738239','hi');
Insert into TEAM3.CONTACT (NAME,EMAIL,CONTACTNUMBER,MESSAGE) values ('sad','null','null','akjhdbkjsahj');
Insert into TEAM3.CONTACT (NAME,EMAIL,CONTACTNUMBER,MESSAGE) values (';ouhgkjhgf.1235612561','null','null','414141');
--------------------------------------------------------
--  Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "TEAM3"."CONTACT" MODIFY ("NAME" NOT NULL);
 
  ALTER TABLE "TEAM3"."CONTACT" MODIFY ("EMAIL" NOT NULL);
 
  ALTER TABLE "TEAM3"."CONTACT" MODIFY ("CONTACTNUMBER" NOT NULL);
 
  ALTER TABLE "TEAM3"."CONTACT" MODIFY ("MESSAGE" NOT NULL);

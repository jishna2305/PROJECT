# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_medicalcard
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2023-05-18 00:55:10
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_medicalcard'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_medicalcard" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_medicalcard";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_name" varchar(50) NOT NULL,
  "admin_email" varchar(100) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_name", "admin_email", "admin_password") VALUES
	('1','Jishna','jishna@adminmc.com','admin@mc');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_appointment'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_appointment" (
  "appointment_id" int(10) unsigned NOT NULL auto_increment,
  "appointment_date" date default NULL,
  "appointment_fordate" date default NULL,
  "appointment_status" varchar(50) default '0',
  "user_id" int(10) unsigned default NULL,
  "doctor_id" int(10) unsigned default NULL,
  "slot_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("appointment_id")
) AUTO_INCREMENT=50;



#
# Dumping data for table 'tbl_appointment'
#

LOCK TABLES "tbl_appointment" WRITE;
/*!40000 ALTER TABLE "tbl_appointment" DISABLE KEYS;*/
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('42','2023-05-09','2023-05-20','0','13','14','11');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('43','2023-05-09','2023-05-09','0','13','14','13');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('44','2023-05-09','2023-05-09','0','13','16','15');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('46','2023-05-09','2023-05-09','0','15','16','14');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('47','2023-05-09','2023-05-12','0','15','16','15');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('48','2023-05-09','2023-05-13','0','15','16','14');
REPLACE INTO "tbl_appointment" ("appointment_id", "appointment_date", "appointment_fordate", "appointment_status", "user_id", "doctor_id", "slot_id") VALUES
	('49','2023-05-09','2023-05-10','0','15','14','11');
/*!40000 ALTER TABLE "tbl_appointment" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_category'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_category" (
  "category_id" int(10) unsigned NOT NULL auto_increment,
  "category_name" varchar(50) default NULL,
  PRIMARY KEY  ("category_id")
);



#
# Dumping data for table 'tbl_category'
#

# No data found.



#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(10) unsigned NOT NULL auto_increment,
  "complaint_date" date default NULL,
  "complaint_title" varchar(50) default NULL,
  "complaint_details" varchar(50) default NULL,
  "complaint_status" varchar(50) default '0',
  "complaint_reply" varchar(50) default '0',
  "user_id" int(10) unsigned default NULL,
  "doctor_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_date", "complaint_title", "complaint_details", "complaint_status", "complaint_reply", "user_id", "doctor_id") VALUES
	('12','2023-05-09','Slow','Slow running','1','We will check it',NULL,'14');
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_date", "complaint_title", "complaint_details", "complaint_status", "complaint_reply", "user_id", "doctor_id") VALUES
	('13','2023-05-09','Error','Network error','0','0',NULL,'16');
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_date", "complaint_title", "complaint_details", "complaint_status", "complaint_reply", "user_id", "doctor_id") VALUES
	('14','2023-05-09','Connection Problem','Poor connection','1','Sorry for the inconvenience','13',NULL);
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_date", "complaint_title", "complaint_details", "complaint_status", "complaint_reply", "user_id", "doctor_id") VALUES
	('15','2023-05-09','Slow','Slow loading','0','0','15',NULL);
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) default NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=69;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('54','Alappuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('56','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('57','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('58','Kannur');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('59','Kasaragod');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('60','Kollam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('61','Kottayam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('62','Kozhikode');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('63','Malappuram');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('64','Palakkad');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('65','Pathanamthitta');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('66','Thiruvananthapuram');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('67','Thrissur');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('68','Wayanad');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_doctor'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_doctor" (
  "doctor_name" varchar(50) NOT NULL,
  "doctor_id" int(10) unsigned NOT NULL auto_increment,
  "doctor_contact" varchar(15) NOT NULL,
  "doctor_email" varchar(50) NOT NULL,
  "doctor_address" varchar(50) NOT NULL,
  "doctor_hospitalname" varchar(50) NOT NULL,
  "doctor_photo" varchar(50) NOT NULL,
  "doctor_proof" varchar(50) NOT NULL,
  "doctor_password" varchar(50) NOT NULL,
  "place_id" int(10) unsigned NOT NULL,
  "doctor_gender" varchar(50) NOT NULL,
  "doctor_status" int(10) NOT NULL default '0',
  "doctor_doj" date default NULL,
  PRIMARY KEY  ("doctor_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_doctor'
#

LOCK TABLES "tbl_doctor" WRITE;
/*!40000 ALTER TABLE "tbl_doctor" DISABLE KEYS;*/
REPLACE INTO "tbl_doctor" ("doctor_name", "doctor_id", "doctor_contact", "doctor_email", "doctor_address", "doctor_hospitalname", "doctor_photo", "doctor_proof", "doctor_password", "place_id", "doctor_gender", "doctor_status", "doctor_doj") VALUES
	('Basima','13','7412589630','basima@gmail.com','Basima Manzil','Little Flower','Doctorphoto_1610.jpg','Doctorproof_1748.png','basima','34','Female',-1,'2023-05-08');
REPLACE INTO "tbl_doctor" ("doctor_name", "doctor_id", "doctor_contact", "doctor_email", "doctor_address", "doctor_hospitalname", "doctor_photo", "doctor_proof", "doctor_password", "place_id", "doctor_gender", "doctor_status", "doctor_doj") VALUES
	('James','14','9874563210','james@gmail.com','James Villa','MIMS','Doctorphoto_1586.jpg','Doctorproof_1266.png','james','38','Male',1,'2023-05-08');
REPLACE INTO "tbl_doctor" ("doctor_name", "doctor_id", "doctor_contact", "doctor_email", "doctor_address", "doctor_hospitalname", "doctor_photo", "doctor_proof", "doctor_password", "place_id", "doctor_gender", "doctor_status", "doctor_doj") VALUES
	('Deepak Kumar','15','7894561230','deepak@gmail.com','Deepak House','Rajagiri Hospital','Doctorphoto_1254.jpg','Doctorproof_1291.jpg','deepak','42','Male',0,'2023-05-08');
REPLACE INTO "tbl_doctor" ("doctor_name", "doctor_id", "doctor_contact", "doctor_email", "doctor_address", "doctor_hospitalname", "doctor_photo", "doctor_proof", "doctor_password", "place_id", "doctor_gender", "doctor_status", "doctor_doj") VALUES
	('John Doe','16','7896541230','john@gmail.com','Johns villa','Aster','Doctorphoto_1897.jpg','Doctorproof_1057.jpg','john','40','Male',1,'2023-05-09');
/*!40000 ALTER TABLE "tbl_doctor" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(10) unsigned NOT NULL auto_increment,
  "feedback_description" varchar(50) default NULL,
  "doctor_id" int(10) unsigned default NULL,
  "user_id" int(10) unsigned default NULL,
  "feedback_date" date default NULL,
  PRIMARY KEY  ("feedback_id")
);



#
# Dumping data for table 'tbl_feedback'
#

# No data found.



#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) default NULL,
  "place_pincode" varchar(10) default NULL,
  "district_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=45;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('31','Ambalapuzha','688561','54');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('32','Aluva','683101','56');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('33','Mattannur','670702','58');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('34','Thodupuzha','685584','57');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('35','Manjeshwaram','671323','59');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('36','Karunagappally','690518','60');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('37','Kanjirappally','686507','61');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('38','Vatakara','673101','62');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('39','Ponnani','679577','63');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('40','Pattambi','679303','64');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('41','Adoor','691523','65');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('42','Varkala','695141','66');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('43','Chalakudy','680307','67');
REPLACE INTO "tbl_place" ("place_id", "place_name", "place_pincode", "district_id") VALUES
	('44','Mananthavady','670645','68');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_prescription'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_prescription" (
  "prescription_id" int(10) unsigned NOT NULL auto_increment,
  "prescription_note" varchar(50) default NULL,
  "prescription_days" varchar(50) default NULL,
  "prescription_timing" varchar(50) default NULL,
  "prescription_dose" varchar(50) default NULL,
  "prescription_medicine" varchar(50) default NULL,
  "record_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("prescription_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_prescription'
#

LOCK TABLES "tbl_prescription" WRITE;
/*!40000 ALTER TABLE "tbl_prescription" DISABLE KEYS;*/
REPLACE INTO "tbl_prescription" ("prescription_id", "prescription_note", "prescription_days", "prescription_timing", "prescription_dose", "prescription_medicine", "record_id") VALUES
	('7','After food','3','3','1','Paracetamol','36');
REPLACE INTO "tbl_prescription" ("prescription_id", "prescription_note", "prescription_days", "prescription_timing", "prescription_dose", "prescription_medicine", "record_id") VALUES
	('8','Before food','3','2','1','Cetirzine','36');
REPLACE INTO "tbl_prescription" ("prescription_id", "prescription_note", "prescription_days", "prescription_timing", "prescription_dose", "prescription_medicine", "record_id") VALUES
	('9','After food','5','3','1','Desloratadine','37');
/*!40000 ALTER TABLE "tbl_prescription" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_product'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_product" (
  "subcategory_id" int(10) unsigned default NULL,
  "product_name" varchar(50) default NULL,
  "product_price" varchar(50) default NULL,
  "product_details" varchar(100) default NULL,
  "product_id" int(10) unsigned NOT NULL auto_increment,
  "product_image" varchar(100) NOT NULL,
  PRIMARY KEY  ("product_id")
);



#
# Dumping data for table 'tbl_product'
#

# No data found.



#
# Table structure for table 'tbl_record'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_record" (
  "record_id" int(10) unsigned NOT NULL auto_increment,
  "record_date" date default NULL,
  "record_time" time default NULL,
  "record_details" varchar(50) default NULL,
  "visit_id" int(10) unsigned default NULL,
  "record_file" varchar(50) default NULL,
  PRIMARY KEY  ("record_id")
) AUTO_INCREMENT=38;



#
# Dumping data for table 'tbl_record'
#

LOCK TABLES "tbl_record" WRITE;
/*!40000 ALTER TABLE "tbl_record" DISABLE KEYS;*/
REPLACE INTO "tbl_record" ("record_id", "record_date", "record_time", "record_details", "visit_id", "record_file") VALUES
	('36','2023-05-09','12:16:28','Moderate Fever','38','Record_1628.jpg');
REPLACE INTO "tbl_record" ("record_id", "record_date", "record_time", "record_details", "visit_id", "record_file") VALUES
	('37','2023-05-09','15:21:14','Allergy','40','Record_1041.jpg');
/*!40000 ALTER TABLE "tbl_record" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_slot'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_slot" (
  "slot_time" time default NULL,
  "slot_id" int(10) unsigned NOT NULL auto_increment,
  "doctor_id" int(10) unsigned default NULL,
  "slot_date" varchar(50) NOT NULL,
  PRIMARY KEY  ("slot_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_slot'
#

LOCK TABLES "tbl_slot" WRITE;
/*!40000 ALTER TABLE "tbl_slot" DISABLE KEYS;*/
REPLACE INTO "tbl_slot" ("slot_time", "slot_id", "doctor_id", "slot_date") VALUES
	('10:00:00','11','14','2023-05-10');
REPLACE INTO "tbl_slot" ("slot_time", "slot_id", "doctor_id", "slot_date") VALUES
	('11:00:00','12','14','');
REPLACE INTO "tbl_slot" ("slot_time", "slot_id", "doctor_id", "slot_date") VALUES
	('12:00:00','13','14','');
REPLACE INTO "tbl_slot" ("slot_time", "slot_id", "doctor_id", "slot_date") VALUES
	('10:00:00','14','16','');
REPLACE INTO "tbl_slot" ("slot_time", "slot_id", "doctor_id", "slot_date") VALUES
	('14:00:00','15','16','2023-05-10');
/*!40000 ALTER TABLE "tbl_slot" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_subcategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_subcategory" (
  "subcategory_id" int(10) unsigned NOT NULL auto_increment,
  "category_id" int(10) unsigned default NULL,
  "subcategory_name" varchar(50) default NULL,
  PRIMARY KEY  ("subcategory_id")
);



#
# Dumping data for table 'tbl_subcategory'
#

# No data found.



#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "user_name" varchar(50) default NULL,
  "user_email" varchar(50) default NULL,
  "user_dob" date default NULL,
  "user_contact" varchar(50) default NULL,
  "user_gender" varchar(50) default NULL,
  "place_id" int(10) unsigned default NULL,
  "user_photo" varchar(50) default NULL,
  "user_address" varchar(100) NOT NULL,
  "user_password" varchar(50) NOT NULL,
  "user_status" varchar(50) default '0',
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_dob", "user_contact", "user_gender", "place_id", "user_photo", "user_address", "user_password", "user_status") VALUES
	('13','Diya S','diya@gmail.com','2000-09-19','7907370125','Female','33','User_1512.jpg','Diyas Villa','diya','1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_dob", "user_contact", "user_gender", "place_id", "user_photo", "user_address", "user_password", "user_status") VALUES
	('14','Varun R','varun@gmail.com','1999-06-09','9632587410','Male','32','User_1296.jpg','Rose villa','varun','-1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_dob", "user_contact", "user_gender", "place_id", "user_photo", "user_address", "user_password", "user_status") VALUES
	('15','Jiya','jiya@gmail.com','1999-06-09','7458963210','Female','44','User_1708.jpg','Sreenilayam','jiya','1');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_email", "user_dob", "user_contact", "user_gender", "place_id", "user_photo", "user_address", "user_password", "user_status") VALUES
	('16','Stephen Mathew','stephen@gmail.com','1999-12-18','7463218901','Male','42','User_1166.jpg','Haven','stephen','0');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_visit'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_visit" (
  "visit_id" int(10) unsigned NOT NULL auto_increment,
  "visit_time" time default NULL,
  "visit_date" date default NULL,
  "appointment_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("visit_id")
) AUTO_INCREMENT=41;



#
# Dumping data for table 'tbl_visit'
#

LOCK TABLES "tbl_visit" WRITE;
/*!40000 ALTER TABLE "tbl_visit" DISABLE KEYS;*/
REPLACE INTO "tbl_visit" ("visit_id", "visit_time", "visit_date", "appointment_id") VALUES
	('38','12:16:04','2023-05-09','43');
REPLACE INTO "tbl_visit" ("visit_id", "visit_time", "visit_date", "appointment_id") VALUES
	('39','13:12:00','2023-05-09','44');
REPLACE INTO "tbl_visit" ("visit_id", "visit_time", "visit_date", "appointment_id") VALUES
	('40','15:19:57','2023-05-09','46');
/*!40000 ALTER TABLE "tbl_visit" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/

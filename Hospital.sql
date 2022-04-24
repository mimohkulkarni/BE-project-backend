BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS `doctor` (
	`drcode`	INTEGER NOT NULL,
	`dname`	TEXT NOT NULL,
	`designation`	TEXT,
	PRIMARY KEY (`drcode`)
);

CREATE TABLE IF NOT EXISTS `staff` (
	`staffid`	INTEGER NOT NULL,
	`sname`	TEXT NOT NULL,
	`dept`	TEXT NOT NULL,
	`cell`	INTEGER NOT NULL,
	`drcode`	INTEGER NOT NULL,
	FOREIGN KEY (`drcode`) REFERENCES `doctor`(`drcode`),
	PRIMARY KEY (`staffid`)
);



CREATE TABLE IF NOT EXISTS `patient` (
	`pid`	INTEGER NOT NULL,
	`pname`	TEXT NOT NULL,
	`gender`	TEXT NOT NULL,
	`address`	TEXT NOT NULL,
	`phonenumber`	INTEGER NOT NULL,
	`drcode`	INTEGER NOT NULL,
	`amount`	INTEGER,
	FOREIGN KEY (`drcode`) REFERENCES `doctor`(`drcode`),
	PRIMARY KEY (`pid`)
);

CREATE TABLE IF NOT EXISTS `patientdiag` (
	`diagno`	INTEGER NOT NULL,
	`disease`	TEXT NOT NULL,
	`remark`	TEXT NOT NULL,
	`pid`	INTEGER NOT NULL,
	FOREIGN KEY (`pid`) REFERENCES `patient`(`pid`)
);

INSERT INTO `doctor` VALUES (1,'Rakesh','D.D.S');
INSERT INTO `doctor` VALUES (2,'Dharmendra','P.A');
INSERT INTO `doctor` VALUES (3,'Digvijay ','M.D');
INSERT INTO `doctor` VALUES (4,'Digvijay Jagtap','M.D');
INSERT INTO `doctor` VALUES (5,'Sangram','Cardiologist');
INSERT INTO `doctor` VALUES (6,'Satish ','Physiotherapist');
INSERT INTO `doctor` VALUES (7,'Viraj','Dermatologists');
INSERT INTO `doctor` VALUES (8,'Preeti','Family Physicians');
INSERT INTO `doctor` VALUES (9,'Mansi ','Gastroenterologist');
INSERT INTO `doctor` VALUES (10,'Neha','Pediatrician');
INSERT INTO `doctor` VALUES (11,'Kshitij','M.D');
INSERT INTO `patientdiag` VALUES (1001,'OHF','OPD',1);
INSERT INTO `patientdiag` VALUES (1002,'Occupational Stress','OPD',2);
INSERT INTO `patientdiag` VALUES (1003,'Obesity','OPD',3);
INSERT INTO `patientdiag` VALUES (1004,'Oral Cancer','Severe',4);
INSERT INTO `patientdiag` VALUES (1005,'Alzheimers','',5);
INSERT INTO `patientdiag` VALUES (1006,'Diabetes','',6);
INSERT INTO `patientdiag` VALUES (1007,'Hernia','',7);
INSERT INTO `patientdiag` VALUES (1008,'Asthama','',8);
INSERT INTO `patientdiag` VALUES (1009,'psoriasis','Severe',9);
INSERT INTO `patientdiag` VALUES (1010,'Hernia','',10);
INSERT INTO `patientdiag` VALUES (1011,'Asthama','Severe',11);
INSERT INTO `patientdiag` VALUES (1012,'Viral','OPD',12);
INSERT INTO `patientdiag` VALUES (1013,'Asthama','',13);
INSERT INTO `patientdiag` VALUES (1014,'Diabetes','',14);
INSERT INTO `patientdiag` VALUES (1015,'Allergies','',15);
INSERT INTO `patientdiag` VALUES (1016,'Hernia','',16);
INSERT INTO `patientdiag` VALUES (1017,'Viral','OPD',17);
INSERT INTO `patientdiag` VALUES (1018,'Diabetes','',18);
INSERT INTO `patientdiag` VALUES (1019,'Viral','OPD',19);
INSERT INTO `patientdiag` VALUES (1020,'psoriasis','',20);
INSERT INTO `patientdiag` VALUES (1021,'Asthama','',21);
INSERT INTO `patientdiag` VALUES (1022,'Viral','OPD',22);
INSERT INTO `patientdiag` VALUES (1023,'Hernia','ICU',23);
INSERT INTO `patientdiag` VALUES (1024,'psoriasis','Severe',24);
INSERT INTO `patientdiag` VALUES (1025,'Allergies','',25);
INSERT INTO `patientdiag` VALUES (1026,'Viral','OPD',26);
INSERT INTO `patientdiag` VALUES (1027,'psoriasis','',27);
INSERT INTO `patientdiag` VALUES (1028,'Hernia','ICU',28);
INSERT INTO `patientdiag` VALUES (1029,'Viral','OPD',29);
INSERT INTO `patientdiag` VALUES (1030,'CANCER','Severe',30);
INSERT INTO `patientdiag` VALUES (1031,'Asthama','ICU',31);
INSERT INTO `patientdiag` VALUES (1032,'Allergies','',32);
INSERT INTO `patientdiag` VALUES (1033,'psoriasis','',33);
INSERT INTO `patientdiag` VALUES (1034,'Hernia','',34);
INSERT INTO `patientdiag` VALUES (1035,'Viral','OPD',35);
INSERT INTO `patientdiag` VALUES (1036,'H1N1','Severe',36);
INSERT INTO `patientdiag` VALUES (1037,'psoriasis','',37);
INSERT INTO `patientdiag` VALUES (1038,'STROKE','Severe',38);
INSERT INTO `patientdiag` VALUES (1039,'Viral','OPD',39);
INSERT INTO `patientdiag` VALUES (1040,'Hernia','ICU',40);
INSERT INTO `patientdiag` VALUES (1041,'H1N1','',41);
INSERT INTO `patientdiag` VALUES (1042,'STROKE','Severe',42);
INSERT INTO `patientdiag` VALUES (1043,'Allergies','',43);
INSERT INTO `patientdiag` VALUES (1044,'Viral','OPD',44);
INSERT INTO `patientdiag` VALUES (1045,'Diabetes','',45);
INSERT INTO `patientdiag` VALUES (1046,'Viral','OPD',46);
INSERT INTO `patientdiag` VALUES (1047,'psoriasis','',47);
INSERT INTO `patientdiag` VALUES (1048,'AIDS','ICU',48);
INSERT INTO `patientdiag` VALUES (1049,'Asthama','',49);
INSERT INTO `patientdiag` VALUES (1050,'Allergies','',50);
INSERT INTO `patientdiag` VALUES (1051,'psoriasis','',51);
INSERT INTO `patientdiag` VALUES (1052,'Viral','OPD',52);
INSERT INTO `patientdiag` VALUES (1053,'Diabetes','',53);
INSERT INTO `patientdiag` VALUES (1054,'psoriasis','',54);
INSERT INTO `patientdiag` VALUES (1055,'Asthama','ICU',55);
INSERT INTO `patientdiag` VALUES (1056,'Hernia','',56);
INSERT INTO `patientdiag` VALUES (1057,'CANCER','Severe',57);
INSERT INTO `patientdiag` VALUES (1058,'Allergies','',58);
INSERT INTO `patientdiag` VALUES (1059,'Diabetes','',59);
INSERT INTO `patientdiag` VALUES (1060,'STROKE','Severe',60);
INSERT INTO `patientdiag` VALUES (1061,'Asthama','',61);
INSERT INTO `patientdiag` VALUES (1062,'Diabetes','',62);
INSERT INTO `patientdiag` VALUES (1063,'AIDS','',63);
INSERT INTO `patientdiag` VALUES (1064,'Asthama','',64);
INSERT INTO `patientdiag` VALUES (1065,'Hernia','',65);
INSERT INTO `patientdiag` VALUES (1066,'H1N1','Severe',66);
INSERT INTO `patientdiag` VALUES (1067,'Asthama','',67);
INSERT INTO `patientdiag` VALUES (1068,'psoriasis','',68);
INSERT INTO `patientdiag` VALUES (1069,'STROKE','Severe',69);
INSERT INTO `patientdiag` VALUES (1070,'Diabetes','',70);
INSERT INTO `patientdiag` VALUES (1071,'AIDS','',71);
INSERT INTO `patientdiag` VALUES (1072,'H1N1','Severe',72);
INSERT INTO `patientdiag` VALUES (1073,'Asthama','',73);
INSERT INTO `patientdiag` VALUES (1074,'CANCER','ICU',74);
INSERT INTO `patientdiag` VALUES (1075,'Diabetes','',75);
INSERT INTO `patientdiag` VALUES (1076,'STROKE','Severe',76);
INSERT INTO `patientdiag` VALUES (1077,'Diabetes','',77);
INSERT INTO `patientdiag` VALUES (1078,'Allergies','OPD',78);
INSERT INTO `patientdiag` VALUES (1079,'Hernia','',79);
INSERT INTO `patientdiag` VALUES (1080,'CANCER','Severe',80);
INSERT INTO `patientdiag` VALUES (1081,'Allergies','',81);
INSERT INTO `patientdiag` VALUES (1082,'Diabetes','',82);
INSERT INTO `patientdiag` VALUES (1083,'O','',83);
INSERT INTO `patientdiag` VALUES (1084,'AIDS','',84);
INSERT INTO `patientdiag` VALUES (1085,'psoriasis','',85);
INSERT INTO `patientdiag` VALUES (1086,'Allergies','',86);
INSERT INTO `patientdiag` VALUES (1087,'Diabetes','',87);
INSERT INTO `patientdiag` VALUES (1088,'CANCER','Severe',88);
INSERT INTO `patientdiag` VALUES (1089,'Hernia','',89);
INSERT INTO `patientdiag` VALUES (1090,'psoriasis','',90);
INSERT INTO `patientdiag` VALUES (1091,'AIDS','ICU',91);
INSERT INTO `patientdiag` VALUES (1092,'Diabetes','',92);
INSERT INTO `patientdiag` VALUES (1093,'Viral','',93);
INSERT INTO `patientdiag` VALUES (1094,'Viral','',94);
INSERT INTO `patientdiag` VALUES (1095,'Allergies','',95);
INSERT INTO `patientdiag` VALUES (1096,'CANCER','ICU',96);
INSERT INTO `patientdiag` VALUES (1097,'STROKE','ICU',97);
INSERT INTO `patientdiag` VALUES (1098,'Diabetes','',98);
INSERT INTO `patientdiag` VALUES (1099,'Viral','',99);
INSERT INTO `patientdiag` VALUES (1100,'psoriasis','',100);
INSERT INTO `patientdiag` VALUES (1101,'Asthama','',101);
INSERT INTO `patientdiag` VALUES (1102,'Allergies','',102);
INSERT INTO `patientdiag` VALUES (1103,'Asthama','',103);
INSERT INTO `patientdiag` VALUES (1104,'AIDS','Severe',104);
INSERT INTO `patientdiag` VALUES (1105,'CANCER','Severe',105);
INSERT INTO `patientdiag` VALUES (1106,'Diabetes','',106);
INSERT INTO `patientdiag` VALUES (1107,'Allergies','',107);
INSERT INTO `patientdiag` VALUES (1108,'Viral','',108);
INSERT INTO `patientdiag` VALUES (1109,'Hernia','',109);
INSERT INTO `patientdiag` VALUES (1110,'CANCER','',110);
INSERT INTO `patientdiag` VALUES (1111,'Asthama','',111);
INSERT INTO `patientdiag` VALUES (1112,'CANCER','',112);
INSERT INTO `patientdiag` VALUES (1113,'Allergies','OPD',113);
INSERT INTO `patientdiag` VALUES (1114,'Diabetes','',114);
INSERT INTO `patientdiag` VALUES (1115,'Viral','OPD',115);
INSERT INTO `patientdiag` VALUES (1116,'Viral','OPD',116);
INSERT INTO `patientdiag` VALUES (1117,'Diabetes','OPD',117);
INSERT INTO `patientdiag` VALUES (1118,'Allergies','OPD',118);
INSERT INTO `patientdiag` VALUES (1119,'Diabetes','OPD',119);
INSERT INTO `patientdiag` VALUES (1120,'Diabetes','OPD',120);
INSERT INTO `patientdiag` VALUES (1121,'cancer','Sever',121);
INSERT INTO `patient` VALUES (1,'Satish','Male','Bella Vista ,Pune',8999020799,10,899);
INSERT INTO `patient` VALUES (2,'Makesh','Male',' Vista Luxaria ,Pune',8999040799,8,2456);
INSERT INTO `patient` VALUES (3,'Anuradha','female','Grand Bay ,Pune',8456040799,6,2563);
INSERT INTO `patient` VALUES (4,'Richa','female',' Kumar Astonia ,Pune',8989340799,4,445);
INSERT INTO `patient` VALUES (5,'Veena','female','Green Village ,Pune',8999156799,2,225);
INSERT INTO `patient` VALUES (6,'Anuradha','female','Hadpasar',8963040799,5,5454);
INSERT INTO `patient` VALUES (7,'Kashish ','female',' Saswad',8989302599,3,8436);
INSERT INTO `patient` VALUES (8,'Sujit','male','Chinchwad',9799156799,1,2546);
INSERT INTO `patient` VALUES (9,'Kamaldeep','male','Wagholi',8456456799,4,889);
INSERT INTO `patient` VALUES (10,'Risha','female','Baner',8989300099,4,10236);
INSERT INTO `patient` VALUES (11,'Nitin','male','Baner',8999789799,8,20000);
INSERT INTO `patient` VALUES (12,'Indira','female','Khadki',8456036999,10,5632);
INSERT INTO `patient` VALUES (13,'rajiv','male','Kumbharwalan',8989347419,2,458);
INSERT INTO `patient` VALUES (14,'Gangubai','female','Kumbharwada',8999149699,2,223);
INSERT INTO `patient` VALUES (15,'Suri','female','Wadki',8456012699,4,126);
INSERT INTO `patient` VALUES (16,'Bhavesh Joshi','male','Balewadi',8989314799,4,2226);
INSERT INTO `patient` VALUES (17,'Saurabh shitole','male','Balewadi',8999195299,2,45962);
INSERT INTO `patient` VALUES (18,'Prachi Kad','female','Latur',8456952799,7,2635);
INSERT INTO `patient` VALUES (19,'Aashna Mujawar','female',' Sus ,Pune',8989375299,5,336);
INSERT INTO `patient` VALUES (20,'Pranjali Ghule','female','Lavasa,Pune',8999125799,7,4587);
INSERT INTO `patient` VALUES (21,'Joya Adhikari','female','Bhekrai ,Pune',8456045999,5,2555);
INSERT INTO `patient` VALUES (22,'Praful jadhav','male',' Magarpatta,Pune',8989347529,3,6548);
INSERT INTO `patient` VALUES (23,'Aaryan Rajguru','male','Salkhunke Vihar',8992566799,1,975);
INSERT INTO `patient` VALUES (24,'Dippal Solanki','male','Wanorie,Pune',8456452799,9,2365);
INSERT INTO `patient` VALUES (25,'Junaid Sayeed','male',' Vadgaon ,Pune',8982530799,10,233);
INSERT INTO `patient` VALUES (26,'Sammena Quershi','female','Katraj,Pune',8999112599,10,658);
INSERT INTO `patient` VALUES (27,'Pratik Lole','Male','Saswad',9370650055,8,336);
INSERT INTO `patient` VALUES (28,'Ashok Hole','male','NIBM,Pune',9546132807,5,698);
INSERT INTO `patient` VALUES (29,'Sangram Shinde','Male','Undri,Pune',7648134912,1,333);
INSERT INTO `patient` VALUES (30,'Milind Pawar','male','Pimpri Chinchwad',8788789461,6,566);
INSERT INTO `patient` VALUES (31,'Pratik Jagtap','male','Mahabaleshwar',9648196498,8,352);
INSERT INTO `patient` VALUES (32,'Lokesh Jagtap','male','Guwahati',9647967496,2,556);
INSERT INTO `patient` VALUES (33,'Ganesh Jagtap','male','Noida,Delhi',9674694700,3,125);
INSERT INTO `patient` VALUES (34,'Shivam Yadav','male','Patas,Pune',7564100324,2,11256);
INSERT INTO `patient` VALUES (35,'Amit Sigh','male','Jalandar,Punjab',7008007004,7,3364);
INSERT INTO `patient` VALUES (36,'Pranay Raut','male','Uri,Jammu Kashmir',9080705060,9,2567);
INSERT INTO `patient` VALUES (37,'Vaibhav Date','male','Nalasopara,Mumbai',9465812730,5,698);
INSERT INTO `patient` VALUES (38,'Rutika Dhoka','female','Dombiwali,Mumbai',9648513720,3,2045);
INSERT INTO `patient` VALUES (39,'Aishwarya Pawar','female','Baner,Pune',7536124208,5,30);
INSERT INTO `patient` VALUES (40,'Smita Rman','female','Balewadi,Pune',8520963741,4,48);
INSERT INTO `patient` VALUES (41,'Digvijay Jagtap','male','Hadpsar,Pune',9517538520,9,3056);
INSERT INTO `patient` VALUES (42,'Kaustubh Raskar','male','Manjri,Pune',7589641230,3,9855);
INSERT INTO `patient` VALUES (43,'Tushar Phadatre','male','Shewalwadi,Pune',7586941232,7,6578);
INSERT INTO `patient` VALUES (44,'Om Jagtap','male','Undri,Pune',8453120954,1,7833);
INSERT INTO `patient` VALUES (45,'Prajakta Gaikwad','female','Gopalpatti,Pune',9453476166,2,3785);
INSERT INTO `patient` VALUES (46,'Pranita Jagtap','female','Kaharadi,Pune',8649999212,6,563);
INSERT INTO `patient` VALUES (47,'Mrudula Sonawane','female','Khadaki,Pune',8546954254,3,654);
INSERT INTO `patient` VALUES (48,'Sanjeet Shah','male','Kirkee,Pune',7844364546,7,999);
INSERT INTO `patient` VALUES (49,'Aniket Yadav','male','Anand,Gujarat',8595464164,2,2365);
INSERT INTO `patient` VALUES (50,'Sangram Chowghule','male','Assam',9467432674,9,689);
INSERT INTO `patient` VALUES (51,'Sonali Khenar','female','Mizoram',8464566564,10,2013);
INSERT INTO `patient` VALUES (52,'Zeel Nagnur','female','Telangana',7586952005,3,2066);
INSERT INTO `patient` VALUES (53,'Padmaja Jagtap','female','UttarPradesh',8469542544,2,2046);
INSERT INTO `patient` VALUES (54,'Padmaja Mhaske','female','Bikaner',9554196385,4,2047);
INSERT INTO `patient` VALUES (55,'Ranjit Jagtap ','male','Jiapur',8946852965,9,963);
INSERT INTO `patient` VALUES (56,'Vijay Tathwadkar','male','Jodhpur',9685274103,8,951);
INSERT INTO `patient` VALUES (57,'Vijay Gholap','male','Mumbai',8998596264,3,753);
INSERT INTO `patient` VALUES (58,'Harshal Nimbde','male','Swaragate',8529637410,7,456);
INSERT INTO `patient` VALUES (59,'Saurabh Jadhav','male','Katraj',7598428520,5,6548);
INSERT INTO `patient` VALUES (60,'Nilesh Bawiskar','male','Vadgaon',9645581514,1,159);
INSERT INTO `patient` VALUES (61,'Arpan Patla','male','Kondhwa',7546135423,9,357);
INSERT INTO `patient` VALUES (62,'Saurabh Kulkarni','male','Mundhwa',9658742310,8,753);
INSERT INTO `patient` VALUES (63,'Ankush zanwar','male','Katraj',7964582310,6,658);
INSERT INTO `patient` VALUES (64,'Swapnil Shinde','male','Shivaji nagar',8794651324,2,555);
INSERT INTO `patient` VALUES (65,'Apurva Mishra','female','Warje',9518524063,6,489);
INSERT INTO `patient` VALUES (66,'Gurubaksh','male','camp,pune',7539638420,4,687);
INSERT INTO `patient` VALUES (67,'Swayam Gore','male','Golibar Maidan',8529637401,2,9855);
INSERT INTO `patient` VALUES (68,'Prithvi Sajay','male','Pulgate',7569841230,8,20000);
INSERT INTO `patient` VALUES (69,'Piyush Agrawal','male','Fatima Nagar',8520369741,7,3456);
INSERT INTO `patient` VALUES (70,'Husaif Ahmed','male','Lonavala',8465213908,5,658);
INSERT INTO `patient` VALUES (71,'Harsh T ','male','B.T KawadeRoad',7654912830,6,9654);
INSERT INTO `patient` VALUES (72,'Ganesh Gawali','male','Viman Nagar',7632541809,3,4896);
INSERT INTO `patient` VALUES (73,'Prashant Kadam','male','Keshav Nagar ',9461325780,1,789);
INSERT INTO `patient` VALUES (74,'Omakar Chowdhary','male','Pune Railway St.',9764513250,2,4200);
INSERT INTO `patient` VALUES (75,'Rohit Shivtare','male','D.P Road',9510357486,1,236);
INSERT INTO `patient` VALUES (76,'Virat Shukla','male','S.K.S nagar',9512346807,8,125);
INSERT INTO `patient` VALUES (77,'Aryan Shukla','male','Wakad',8520147741,3,2153);
INSERT INTO `patient` VALUES (78,'Viraj Sharma','male','St. Mira Road',8523641097,5,659);
INSERT INTO `patient` VALUES (79,'Sachin Shinde','male','Ganesh Khind',7963741852,4,456);
INSERT INTO `patient` VALUES (80,'Ashwin Gotmare','male','Alka Nagar',8520369741,9,225);
INSERT INTO `patient` VALUES (81,'Sadesh Walke','male','Nainital,Assam',7632541089,2,365);
INSERT INTO `patient` VALUES (82,'Prajakta Koli','female','Tripura',9203651487,5,4496);
INSERT INTO `patient` VALUES (83,'Nikhil Sharma','male','Anjuna',7532684910,6,6531);
INSERT INTO `patient` VALUES (84,'Waseem Ahmed','male','Candolim',9356214870,4,3362);
INSERT INTO `patient` VALUES (85,'Zheeshan Khan','male','Baga ',8652394710,2,4586);
INSERT INTO `patient` VALUES (86,'Ashish Chand','male','ozram',8563201479,3,266);
INSERT INTO `patient` VALUES (87,'Mehul Patil','male','Goa',8380204161,8,599);
INSERT INTO `patient` VALUES (88,'Imran Chinckar','male','Vagetor',9822398501,10,12599);
INSERT INTO `patient` VALUES (89,'Sagar Mahadik','male','Kullu',9921629629,9,5988);
INSERT INTO `patient` VALUES (90,'Tushar Shelar','male','Manali',7000232005,4,544);
INSERT INTO `patient` VALUES (91,'Ashish daga','male','Chandigarh',8569231475,7,233);
INSERT INTO `patient` VALUES (92,'Ajay Nagar','male','Delhi',8613257231,6,897);
INSERT INTO `patient` VALUES (93,'Nikunj','male','Bangalore',7659123485,4,786);
INSERT INTO `patient` VALUES (94,'Dishant Sharama','male','Mumbai',8561320369,5,9456);
INSERT INTO `patient` VALUES (95,'Shantanu Raut','male','Jejuri',7586954821,1,8456);
INSERT INTO `patient` VALUES (96,'Shivank Nimbalkar','male','Nagaland',9630258741,10,542);
INSERT INTO `patient` VALUES (97,'Priyal Hore','male','Bengal',9658032125,3,3652);
INSERT INTO `patient` VALUES (98,'Parikshit Hore','male','Kokan',8563201457,9,2330);
INSERT INTO `patient` VALUES (99,'Akash Patil','male','Lavasa,Pune',9568742013,4,2362);
INSERT INTO `patient` VALUES (100,'Pratik Girme','male','',9680070075,6,496);
INSERT INTO `patient` VALUES (101,'Ashish Girme','male','Delhi',9758000360,5,2564);
INSERT INTO `patient` VALUES (102,'Apurva Abhyankar','female','Kerala,Aalapi',8555023650,7,2333);
INSERT INTO `patient` VALUES (103,'abhay Joshi','male','Nagpur',9876543210,10,5489);
INSERT INTO `patient` VALUES (104,'Digambar Phadtare','male','Vijaywada',9457612308,5,5663);
INSERT INTO `patient` VALUES (105,'Sandesh Kolte','male','Pondicherry',8999902797,9,4566);
INSERT INTO `patient` VALUES (106,'Shravni Kolte','female','Leh',7846912354,4,7896);
INSERT INTO `patient` VALUES (107,'Shivani Kolte','female','Vadora,Gujarat',8654912376,3,9898);
INSERT INTO `patient` VALUES (108,'Shivani Inamke','female','Kondhwa,Pune',7245625356,10,6932);
INSERT INTO `patient` VALUES (109,'Sushil Shinde','Male','Saswad',4567542466,9,6624);
INSERT INTO `patient` VALUES (110,'Shyam Kumar Singh','Male','India',755642344,3,2653);
INSERT INTO `patient` VALUES (111,'Suyog Badadhe','Male','Rajasthan',7223654846,3,6332);
INSERT INTO `patient` VALUES (112,'Rajyog Badadhe','Male','Garade',8446572456,2,6531);
INSERT INTO `patient` VALUES (113,'Vilas Malusare','Male','Mahalaxmi Road',7788854698,1,825);
INSERT INTO `patient` VALUES (114,'Anusmani','Female','Latur',9224563412,4,6334);
INSERT INTO `patient` VALUES (115,'Sayli Shinde','Female','Gujrat ',7622456765,7,6963);
INSERT INTO `patient` VALUES (116,'Sangram Shinde','Male','Taraduta',8882564131,2,2536);
INSERT INTO `patient` VALUES (117,'Trupti Kapse','Female','Sahara Silver',7896584624,4,5553);
INSERT INTO `patient` VALUES (118,'Anikta Lole','Female','Shara GOld',9456722535,5,7596);
INSERT INTO `patient` VALUES (119,'Nikata Lole','Female','Sahara Gold',8634567258,6,2265);
INSERT INTO `patient` VALUES (120,'Pankaj Hole','Male','Panwadi',9370658655,10,NULL);
INSERT INTO `patient` VALUES (121,'Test','MAle','Pune',8380914383,11,253);
COMMIT;

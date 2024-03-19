# IPL-SQL-Case-Study
The matches' past is examined in this Indian Premier League case study. The tables include the name of the team, the result, the player of the game, and a tonne of other details. We may determine the answer to the question below with the use of the IPL Case Study.
Create database indiaipl;
use indiaipl;
**Creating Table**
CREATE TABLE matches(
   id              INTEGER  NOT NULL PRIMARY KEY,
   season          INTEGER  NOT NULL,
   city            VARCHAR(14) NOT NULL,
   date            DATE  NOT NULL,
   team1           VARCHAR(27) NOT NULL,
   team2           VARCHAR(27) NOT NULL,
   toss_winner     VARCHAR(27) NOT NULL,
   toss_decision   VARCHAR(5) NOT NULL,
   result          VARCHAR(6) NOT NULL,
   dl_applied      BIT  NOT NULL,
   winner          VARCHAR(27) NOT NULL,
   win_by_runs     INTEGER  NOT NULL,
   win_by_wickets  INTEGER  NOT NULL,
   player_of_match VARCHAR(17) NOT NULL,
   venue           VARCHAR(52) NOT NULL,
   umpire1         VARCHAR(21),
   umpire2         VARCHAR(14),
   umpire3         VARCHAR(30));

**Filling data into table**
Insert into Matches
VALUES ('1','2017','Hyderabad','2017-04-05','Sunrisers Hyderabad','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Sunrisers Hyderabad',35,0,'Yuvraj Singh','Rajiv Gandhi International Stadium, Uppal','AY Dandekar','NJ Llong',NULL),
('2','2017','Pune','2017-04-06','Mumbai Indians','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Rising Pune Supergiant',0,7,'SPD Smith','Maharashtra Cricket Association Stadium','A Nand Kishore','S Ravi',NULL),
('3','2017','Rajkot','2017-04-07','Gujarat Lions','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kolkata Knight Riders',0,10,'CA Lynn','Saurashtra Cricket Association Stadium','Nitin Menon','CK Nandan',NULL),
('4','2017','Indore','2017-04-08','Rising Pune Supergiant','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Kings XI Punjab',0,6,'GJ Maxwell','Holkar Cricket Stadium','AK Chaudhary','C Shamshuddin',NULL),
('5','2017','Bangalore','2017-04-08','Royal Challengers Bangalore','Delhi Daredevils','Royal Challengers Bangalore','bat','normal',0,'Royal Challengers Bangalore',15,0,'KM Jadhav','M Chinnaswamy Stadium',NULL,NULL,NULL),
('6','2017','Hyderabad','2017-04-09','Gujarat Lions','Sunrisers Hyderabad','Sunrisers Hyderabad','field','normal',0,'Sunrisers Hyderabad',0,9,'Rashid Khan','Rajiv Gandhi International Stadium, Uppal','A Deshmukh','NJ Llong',NULL),
('7','2017','Mumbai','2017-04-09','Kolkata Knight Riders','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,4,'N Rana','Wankhede Stadium','Nitin Menon','CK Nandan',NULL),
('8','2017','Indore','2017-04-10','Royal Challengers Bangalore','Kings XI Punjab','Royal Challengers Bangalore','bat','normal',0,'Kings XI Punjab',0,8,'AR Patel','Holkar Cricket Stadium','AK Chaudhary','C Shamshuddin',NULL),
('9','2017','Pune','2017-04-11','Delhi Daredevils','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Delhi Daredevils',97,0,'SV Samson','Maharashtra Cricket Association Stadium','AY Dandekar','S Ravi',NULL),
('10','2017','Mumbai','2017-04-12','Sunrisers Hyderabad','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,4,'JJ Bumrah','Wankhede Stadium','Nitin Menon','CK Nandan',NULL),
('11','2017','Kolkata','2017-04-13','Kings XI Punjab','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kolkata Knight Riders',0,8,'SP Narine','Eden Gardens','A Deshmukh','NJ Llong',NULL),
('12','2017','Bangalore','2017-04-14','Royal Challengers Bangalore','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,4,'KA Pollard','M Chinnaswamy Stadium','KN Ananthapadmanabhan','AK Chaudhary',NULL),
('13','2017','Rajkot','2017-04-14','Kolkata Knight Riders','Sunrisers Hyderabad','Sunrisers Hyderabad','field','normal',0,'Kolkata Knight Riders',17,0,'RV Uthappa','Eden Gardens','AY Dandekar','NJ Llong',NULL),
('15','2017','Delhi','2017-04-15','Delhi Daredevils','Kings XI Punjab','Delhi Daredevils','bat','normal',0,'Delhi Daredevils',51,0,'CJ Anderson','Feroz Shah Kotla','YC Barde','Nitin Menon',NULL),
('16','2017','Mumbai','2017-04-16','Gujarat Lions','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,6,'N Rana','Wankhede Stadium','A Nand Kishore','S Ravi',NULL),
('17','2017','Bangalore','2017-04-16','Rising Pune Supergiant','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Rising Pune Supergiant',27,0,'BA Stokes','M Chinnaswamy Stadium','KN Ananthapadmanabhan','C Shamshuddin',NULL),
('18','2017','Delhi','2017-04-17','Delhi Daredevils','Kolkata Knight Riders','Delhi Daredevils','bat','normal',0,'Kolkata Knight Riders',0,4,'NM Coulter-Nile','Feroz Shah Kotla','Nitin Menon','CK Nandan',NULL),
('19','2017','Hyderabad','2017-04-17','Sunrisers Hyderabad','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Sunrisers Hyderabad',5,0,'B Kumar','Rajiv Gandhi International Stadium, Uppal','AY Dandekar','A Deshmukh',NULL),
('20','2017','Rajkot','2017-04-18','Royal Challengers Bangalore','Gujarat Lions','Gujarat Lions','field','normal',0,'Royal Challengers Bangalore',21,0,'CH Gayle','Saurashtra Cricket Association Stadium','S Ravi','VK Sharma',NULL),
('21','2017','Hyderabad','2017-04-19','Sunrisers Hyderabad','Delhi Daredevils','Sunrisers Hyderabad','bat','normal',0,'Sunrisers Hyderabad',15,0,'KS Williamson','Rajiv Gandhi International Stadium, Uppal','CB Gaffaney','NJ Llong',NULL),
('22','2017','Indore','2017-04-20','Kings XI Punjab','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,8,'JC Buttler','Holkar Cricket Stadium','M Erasmus','C Shamshuddin',NULL),
('23','2017','Kolkata','2017-04-21','Kolkata Knight Riders','Gujarat Lions','Gujarat Lions','field','normal',0,'Gujarat Lions',0,4,'SK Raina','Eden Gardens','CB Gaffaney','Nitin Menon',NULL),
('24','2017','Mumbai','2017-04-22','Mumbai Indians','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Mumbai Indians',14,0,'MJ McClenaghan','Wankhede Stadium','A Nand Kishore','S Ravi',NULL),
('25','2017','Pune','2017-04-22','Sunrisers Hyderabad','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Rising Pune Supergiant',0,6,'MS Dhoni','Maharashtra Cricket Association Stadium','AY Dandekar','A Deshmukh',NULL),
('26','2017','Rajkot','2017-04-23','Kings XI Punjab','Gujarat Lions','Gujarat Lions','field','normal',0,'Kings XI Punjab',26,0,'HM Amla','Saurashtra Cricket Association Stadium','AK Chaudhary','M Erasmus',NULL),
('27','2017','Kolkata','2017-04-23','Kolkata Knight Riders','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Kolkata Knight Riders',82,0,'NM Coulter-Nile','Eden Gardens','CB Gaffaney','CK Nandan',NULL),
('28','2017','Mumbai','2017-04-24','Rising Pune Supergiant','Mumbai Indians','Mumbai Indians','field','normal',0,'Rising Pune Supergiant',3,0,'BA Stokes','Wankhede Stadium','A Nand Kishore','S Ravi',NULL),
('29','2017','Pune','2017-04-26','Rising Pune Supergiant','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kolkata Knight Riders',0,7,'RV Uthappa','Maharashtra Cricket Association Stadium','AY Dandekar','NJ Llong',NULL),
('30','2017','Bangalore','2017-04-27','Royal Challengers Bangalore','Gujarat Lions','Gujarat Lions','field','normal',0,'Gujarat Lions',0,7,'AJ Tye','M Chinnaswamy Stadium','AK Chaudhary','C Shamshuddin',NULL),
('31','2017','Kolkata','2017-04-28','Delhi Daredevils','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kolkata Knight Riders',0,7,'G Gambhir','Eden Gardens','NJ Llong','S Ravi',NULL),
('32','2017','Chandigarh','2017-04-28','Sunrisers Hyderabad','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Sunrisers Hyderabad',26,0,'Rashid Khan','Punjab Cricket Association IS Bindra Stadium,Mohali','Nitin Menon','CK Nandan',NULL),
('33','2017','Pune','2017-04-29','Rising Pune Supergiant','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Rising Pune Supergiant',61,0,'LH Ferguson','Maharashtra Cricket Association Stadium','KN Ananthapadmanabhan','M Erasmus',NULL),
('34','2017','Rajkot','2017-04-29','Gujarat Lions','Mumbai Indians','Gujarat Lions','bat','tie',0,'Mumbai Indians',0,0,'KH Pandya','Saurashtra Cricket Association Stadium','AK Chaudhary','CB Gaffaney',NULL),
('35','2017','Chandigarh','2017-04-30','Delhi Daredevils','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Kings XI Punjab',0,10,'Sandeep Sharma','Punjab Cricket Association IS Bindra Stadium, Mohali','YC Barde','CK Nandan',NULL),
('36','2017','Hyderabad','2017-04-30','Sunrisers Hyderabad','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Sunrisers Hyderabad',48,0,'DA Warner','Rajiv Gandhi International Stadium, Uppal','AY Dandekar','S Ravi',NULL),
('37','2017','Mumbai','2017-05-01','Royal Challengers Bangalore','Mumbai Indians','Royal Challengers Bangalore','bat','normal',0,'Mumbai Indians',0,5,'RG Sharma','Wankhede Stadium','AK Chaudhary','CB Gaffaney',NULL),
('38','2017','Pune','2017-05-01','Gujarat Lions','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Rising Pune Supergiant',0,5,'BA Stokes','Maharashtra Cricket Association Stadium','M Erasmus','C Shamshuddin',NULL),
('39','2017','Delhi','2017-05-02','Sunrisers Hyderabad','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Delhi Daredevils',0,6,'Mohammed Shami','Feroz Shah Kotla','YC Barde','Nitin Menon',NULL),
('40','2017','Kolkata','2017-05-03','Kolkata Knight Riders','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Rising Pune Supergiant',0,4,'RA Tripathi','Eden Gardens','KN Ananthapadmanabhan','A Nand Kishore',NULL),
('41','2017','Delhi','2017-05-04','Gujarat Lions','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Delhi Daredevils',0,7,'RR Pant','Feroz Shah Kotla','M Erasmus','Nitin Menon',NULL),
('42','2017','Bangalore','2017-05-05','Kings XI Punjab','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Kings XI Punjab',19,0,'Sandeep Sharma','M Chinnaswamy Stadium','CB Gaffaney','C Shamshuddin',NULL),
('43','2017','Hyderabad','2017-05-06','Rising Pune Supergiant','Sunrisers Hyderabad','Sunrisers Hyderabad','field','normal',0,'Rising Pune Supergiant',12,0,'JD Unadkat','Rajiv Gandhi International Stadium, Uppal','KN Ananthapadmanabhan','AK Chaudhary',NULL),
('44','2017','Delhi','2017-05-06','Mumbai Indians','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Mumbai Indians',146,0,'LMP Simmons','Feroz Shah Kotla','Nitin Menon','CK Nandan',NULL),
('45','2017','Bangalore','2017-05-07','Royal Challengers Bangalore','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kolkata Knight Riders',0,6,'SP Narine','M Chinnaswamy Stadium','AY Dandekar','C Shamshuddin',NULL),
('46','2017','Chandigarh','2017-05-07','Kings XI Punjab','Gujarat Lions','Gujarat Lions','field','normal',0,'Gujarat Lions',0,6,'DR Smith','Punjab Cricket Association IS Bindra Stadium, Mohali','A Nand Kishore','VK Sharma',NULL),
('47','2017','Hyderabad','2017-05-08','Mumbai Indians','Sunrisers Hyderabad','Mumbai Indians','bat','normal',0,'Sunrisers Hyderabad',0,7,'S Dhawan','Rajiv Gandhi International Stadium, Uppal','KN Ananthapadmanabhan','M Erasmus',NULL),
('48','2017','Chandigarh','2017-05-09','Kings XI Punjab','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Kings XI Punjab',14,0,'MM Sharma','Punjab Cricket Association IS Bindra Stadium, Mohali','A Nand Kishore','S Ravi',NULL),
('49','2017','Kanpur','2017-05-10','Gujarat Lions','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Delhi Daredevils',0,2,'SS Iyer','Green Park','YC Barde','AK Chaudhary',NULL),
('50','2017','Mumbai','2017-05-11','Kings XI Punjab','Mumbai Indians','Mumbai Indians','field','normal',0,'Kings XI Punjab',7,0,'WP Saha','Wankhede Stadium','A Deshmukh','A Nand Kishore',NULL),
('51','2017','Delhi','2017-05-12','Delhi Daredevils','Rising Pune Supergiant','Delhi Daredevils','bat','normal',0,'Delhi Daredevils',7,0,'KK Nair','Feroz Shah Kotla','KN Ananthapadmanabhan','CK Nandan',NULL),
('52','2017','Kanpur','2017-05-13','Gujarat Lions','Sunrisers Hyderabad','Sunrisers Hyderabad','field','normal',0,'Sunrisers Hyderabad',0,8,'Mohammed Siraj','Green Park','AK Chaudhary','Nitin Menon',NULL),
('53','2017','Kolkata','2017-05-13','Mumbai Indians','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',0,'Mumbai Indians',9,0,'AT Rayudu','Eden Gardens','A Nand Kishore','S Ravi',NULL),
('54','2017','Pune','2017-05-14','Kings XI Punjab','Rising Pune Supergiant','Rising Pune Supergiant','field','normal',0,'Rising Pune Supergiant',0,9,'JD Unadkat','Maharashtra Cricket Association Stadium','AY Dandekar','A Deshmukh',NULL),
('55','2017','Delhi','2017-05-14','Royal Challengers Bangalore','Delhi Daredevils','Royal Challengers Bangalore','bat','normal',0,'Royal Challengers Bangalore',10,0,'HV Patel','Feroz Shah Kotla','CK Nandan','C Shamshuddin',NULL),
('56','2017','Mumbai','2017-05-16','Rising Pune Supergiant','Mumbai Indians','Mumbai Indians','field','normal',0,'Rising Pune Supergiant',20,0,'Washington Sundar','Wankhede Stadium','S Ravi','C Shamshuddin',NULL),
('57','2017','Bangalore','2017-05-17','Sunrisers Hyderabad','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',1,'Kolkata Knight Riders',0,7,'NM Coulter-Nile','M Chinnaswamy Stadium','AK Chaudhary','Nitin Menon',NULL),
('58','2017','Bangalore','2017-05-19','Kolkata Knight Riders','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,6,'KV Sharma','M Chinnaswamy Stadium','NJ Llong','Nitin Menon',NULL),
('59','2017','Hyderabad','2017-05-21','Mumbai Indians','Rising Pune Supergiant','Mumbai Indians','bat','normal',0,'Mumbai Indians',1,0,'KH Pandya','Rajiv Gandhi International Stadium, Uppal','NJ Llong','S Ravi',NULL),
('60','2008','Bangalore','2008-04-18','Kolkata Knight Riders','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Kolkata Knight Riders',140,0,'BB McCullum','M Chinnaswamy Stadium','Asad Rauf','RE Koertzen',NULL),
('61','2008','Chandigarh','2008-04-19','Chennai Super Kings','Kings XI Punjab','Chennai Super Kings','bat','normal',0,'Chennai Super Kings',33,0,'MEK Hussey','Punjab Cricket Association Stadium, Mohali','MR Benson','SL Shastri',NULL),
('62','2008','Delhi','2008-04-19','Rajasthan Royals','Delhi Daredevils','Rajasthan Royals','bat','normal',0,'Delhi Daredevils',0,9,'MF Maharoof','Feroz Shah Kotla','Aleem Dar','GA Pratapkumar',NULL),
('63','2008','Mumbai','2008-04-20','Mumbai Indians','Royal Challengers Bangalore','Mumbai Indians','bat','normal',0,'Royal Challengers Bangalore',0,5,'MV Boucher','Wankhede Stadium','SJ Davis','DJ Harper',NULL),
('64','2008','Kolkata','2008-04-20','Deccan Chargers','Kolkata Knight Riders','Deccan Chargers','bat','normal',0,'Kolkata Knight Riders',0,5,'DJ Hussey','Eden Gardens','BF Bowden','K Hariharan',NULL),
('65','2008','Jaipur','2008-04-21','Kings XI Punjab','Rajasthan Royals','Kings XI Punjab','bat','normal',0,'Rajasthan Royals',0,6,'SR Watson','Sawai Mansingh Stadium','Aleem Dar','RB Tiffin',NULL),
('66','2008','Hyderabad','2008-04-22','Deccan Chargers','Delhi Daredevils','Deccan Chargers','bat','normal',0,'Delhi Daredevils',0,9,'V Sehwag','Rajiv Gandhi International Stadium, Uppal','IL Howell','AM Saheba',NULL),
('67','2008','Chennai','2008-04-23','Chennai Super Kings','Mumbai Indians','Mumbai Indians','field','normal',0,'Chennai Super Kings',6,0,'ML Hayden','MA Chidambaram Stadium, Chepauk','DJ Harper','GA Pratapkumar',NULL),
('68','2008','Hyderabad','2008-04-24','Deccan Chargers','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,3,'YK Pathan','Rajiv Gandhi International Stadium, Uppal','Asad Rauf','MR Benson',NULL),
('69','2008','Chandigarh','2008-04-25','Kings XI Punjab','Mumbai Indians','Mumbai Indians','field','normal',0,'Kings XI Punjab',66,0,'KC Sangakkara','Punjab Cricket Association Stadium, Mohali','Aleem Dar','AM Saheba',NULL),
('70','2008','Bangalore','2008-04-26','Royal Challengers Bangalore','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,7,'SR Watson','M Chinnaswamy Stadium','MR Benson','IL Howell',NULL),
('71','2008','Chennai','2008-04-26','Kolkata Knight Riders','Chennai Super Kings','Kolkata Knight Riders','bat','normal',0,'Chennai Super Kings',0,9,'JDP Oram','MA Chidambaram Stadium, Chepauk','BF Bowden','AV Jayaprakash',NULL),
('72','2008','Mumbai','2008-04-27','Mumbai Indians','Deccan Chargers','Deccan Chargers','field','normal',0,'Deccan Chargers',0,10,'AC Gilchrist','Dr DY Patil Sports Academy','Asad Rauf','SL Shastri',NULL),
('73','2008','Chandigarh','2008-04-27','Delhi Daredevils','Kings XI Punjab','Delhi Daredevils','bat','normal',0,'Kings XI Punjab',0,4,'SM Katich','Punjab Cricket Association Stadium, Mohali','RE Koertzen','I Shivram',NULL),
('74','2008','Bangalore','2008-04-28','Chennai Super Kings','Royal Challengers Bangalore','Chennai Super Kings','bat','normal',0,'Chennai Super Kings',13,0,'MS Dhoni','M Chinnaswamy Stadium','BR Doctrove','RB Tiffin',NULL),
('75','2008','Kolkata','2008-04-29','Kolkata Knight Riders','Mumbai Indians','Kolkata Knight Riders','bat','normal',0,'Mumbai Indians',0,7,'ST Jayasuriya','Eden Gardens','BF Bowden','AV Jayaprakash',NULL),
('76','2008','Delhi','2008-04-30','Delhi Daredevils','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Delhi Daredevils',10,0,'GD McGrath','Feroz Shah Kotla','Aleem Dar','I Shivram',NULL),
('77','2008','Hyderabad','2008-05-01','Deccan Chargers','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Kings XI Punjab',0,7,'SE Marsh','Rajiv Gandhi International Stadium, Uppal','BR Doctrove','RB Tiffin',NULL),
('78','2008','Jaipur','2008-05-01','Rajasthan Royals','Kolkata Knight Riders','Rajasthan Royals','bat','normal',0,'Rajasthan Royals',45,0,'SA Asnodkar','Sawai Mansingh Stadium','RE Koertzen','GA Pratapkumar',NULL),
('79','2008','Chennai','2008-05-02','Chennai Super Kings','Delhi Daredevils','Chennai Super Kings','bat','normal',0,'Delhi Daredevils',0,8,'V Sehwag','MA Chidambaram Stadium, Chepauk','BF Bowden','K Hariharan',NULL),
('80','2008','Hyderabad','2008-05-25','Deccan Chargers','Royal Challengers Bangalore','Deccan Chargers','bat','normal',0,'Royal Challengers Bangalore',0,5,'R Vinay Kumar','Rajiv Gandhi International Stadium, Uppal','Asad Rauf','RE Koertzen',NULL),
('81','2008','Chandigarh','2008-05-03','Kings XI Punjab','Kolkata Knight Riders','Kings XI Punjab','bat','normal',0,'Kings XI Punjab',9,0,'IK Pathan','Punjab Cricket Association Stadium, Mohali','DJ Harper','I Shivram',NULL),
('82','2008','Mumbai','2008-05-04','Mumbai Indians','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Mumbai Indians',29,0,'SM Pollock','Dr DY Patil Sports Academy','IL Howell','RE Koertzen',NULL),
('83','2008','Jaipur','2008-05-04','Chennai Super Kings','Rajasthan Royals','Chennai Super Kings','bat','normal',0,'Rajasthan Royals',0,8,'Sohail Tanvir','Sawai Mansingh Stadium','Asad Rauf','AV Jayaprakash',NULL),
('84','2008','Bangalore','2008-05-05','Royal Challengers Bangalore','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Kings XI Punjab',0,6,'S Sreesanth','M Chinnaswamy Stadium','SJ Davis','BR Doctrove',NULL),
('85','2008','Chennai','2008-05-06','Chennai Super Kings','Deccan Chargers','Deccan Chargers','field','normal',0,'Deccan Chargers',0,7,'AC Gilchrist','MA Chidambaram Stadium, Chepauk','MR Benson','RB Tiffin',NULL),
('86','2008','Mumbai','2008-05-07','Rajasthan Royals','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,7,'A Nehra','Dr DY Patil Sports Academy','DJ Harper','RE Koertzen',NULL),
('87','2008','Delhi','2008-05-08','Delhi Daredevils','Chennai Super Kings','Chennai Super Kings','field','normal',0,'Chennai Super Kings',0,4,'MS Dhoni','Feroz Shah Kotla','Aleem Dar','RB Tiffin',NULL),
('88','2008','Kolkata','2008-05-08','Kolkata Knight Riders','Royal Challengers Bangalore','Kolkata Knight Riders','bat','normal',0,'Kolkata Knight Riders',5,0,'SC Ganguly','Eden Gardens','Asad Rauf','IL Howell',NULL),
('89','2008','Jaipur','2008-05-09','Deccan Chargers','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,8,'YK Pathan','Sawai Mansingh Stadium','MR Benson','AM Saheba',NULL),
('90','2008','Bangalore','2008-05-28','Royal Challengers Bangalore','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,9,'CRD Fernando','M Chinnaswamy Stadium','BF Bowden','AV Jayaprakash',NULL),
('91','2008','Chennai','2008-05-10','Chennai Super Kings','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Chennai Super Kings',18,0,'L Balaji','MA Chidambaram Stadium, Chepauk','AV Jayaprakash','BG Jerling',NULL),
('92','2008','Hyderabad','2008-05-11','Kolkata Knight Riders','Deccan Chargers','Kolkata Knight Riders','bat','normal',0,'Kolkata Knight Riders',23,0,'SC Ganguly','Rajiv Gandhi International Stadium, Uppal','IL Howell','AM Saheba',NULL),
('93','2008','Jaipur','2008-05-11','Delhi Daredevils','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,3,'SR Watson','Sawai Mansingh Stadium','SJ Davis','RE Koertzen',NULL),
('94','2008','Chandigarh','2008-05-12','Royal Challengers Bangalore','Kings XI Punjab','Royal Challengers Bangalore','bat','normal',0,'Kings XI Punjab',0,9,'SE Marsh','Punjab Cricket Association Stadium, Mohali','BR Doctrove','I Shivram',NULL),
('95','2008','Kolkata','2008-05-13','Kolkata Knight Riders','Delhi Daredevils','Kolkata Knight Riders','bat','normal',0,'Kolkata Knight Riders',23,0,'Shoaib Akhtar','Eden Gardens','Asad Rauf','IL Howell',NULL),
('96','2008','Mumbai','2008-05-14','Chennai Super Kings','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,9,'ST Jayasuriya','Wankhede Stadium','BR Doctrove','AM Saheba',NULL),
('97','2008','Chandigarh','2008-05-28','Kings XI Punjab','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Kings XI Punjab',41,0,'SE Marsh','Punjab Cricket Association Stadium, Mohali','SJ Davis','K Hariharan',NULL),
('98','2008','Delhi','2008-05-15','Delhi Daredevils','Deccan Chargers','Deccan Chargers','field','normal',0,'Delhi Daredevils',12,0,'A Mishra','Feroz Shah Kotla','BG Jerling','GA Pratapkumar',NULL),
('99','2008','Mumbai','2008-05-16','Kolkata Knight Riders','Mumbai Indians','Mumbai Indians','field','normal',0,'Mumbai Indians',0,8,'SM Pollock','Wankhede Stadium','BR Doctrove','DJ Harper',NULL),
('100','2008','Delhi','2008-05-17','Delhi Daredevils','Kings XI Punjab','Delhi Daredevils','bat','normal',1,'Kings XI Punjab',6,0,'DPMD Jayawardene','Feroz Shah Kotla','AV Jayaprakash','RE Koertzen',NULL),
('101','2008','Jaipur','2008-05-17','Rajasthan Royals','Royal Challengers Bangalore','Royal Challengers Bangalore','field','normal',0,'Rajasthan Royals',65,0,'GC Smith','Sawai Mansingh Stadium','BF Bowden','SL Shastri',NULL),
('102','2008','Hyderabad','2008-05-18','Mumbai Indians','Deccan Chargers','Deccan Chargers','field','normal',0,'Mumbai Indians',25,0,'DJ Bravo','Rajiv Gandhi International Stadium, Uppal','BR Doctrove','DJ Harper',NULL),
('103','2008','Kolkata','2008-05-18','Kolkata Knight Riders','Chennai Super Kings','Kolkata Knight Riders','bat','normal',1,'Chennai Super Kings',3,0,'M Ntini','Eden Gardens','Asad Rauf','K Hariharan',NULL),
('104','2008','Bangalore','2008-05-19','Royal Challengers Bangalore','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Delhi Daredevils',0,5,'SP Goswami','M Chinnaswamy Stadium','SJ Davis','GA Pratapkumar',NULL),
('105','2008','Kolkata','2008-05-20','Kolkata Knight Riders','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,6,'YK Pathan','Eden Gardens','BG Jerling','RE Koertzen',NULL),
('106','2008','Mumbai','2008-05-21','Kings XI Punjab','Mumbai Indians','Mumbai Indians','field','normal',0,'Kings XI Punjab',1,0,'SE Marsh','Wankhede Stadium','BF Bowden','GA Pratapkumar',NULL),
('107','2008','Chennai','2008-05-21','Royal Challengers Bangalore','Chennai Super Kings','Royal Challengers Bangalore','bat','normal',0,'Royal Challengers Bangalore',14,0,'A Kumble','MA Chidambaram Stadium, Chepauk','DJ Harper','I Shivram',NULL),
('108','2008','Chandigarh','2008-05-23','Deccan Chargers','Kings XI Punjab','Kings XI Punjab','field','normal',0,'Kings XI Punjab',0,6,'SE Marsh','Punjab Cricket Association Stadium, Mohali','Asad Rauf','SJ Davis',NULL),
('109','2008','Delhi','2008-05-24','Mumbai Indians','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Delhi Daredevils',0,5,'KD Karthik','Feroz Shah Kotla','BF Bowden','K Hariharan',NULL),
('110','2008','Chennai','2008-05-24','Rajasthan Royals','Chennai Super Kings','Rajasthan Royals','bat','normal',0,'Rajasthan Royals',10,0,'JA Morkel','MA Chidambaram Stadium, Chepauk','DJ Harper','SL Shastri',NULL),
('111','2008','Bangalore','2008-05-03','Royal Challengers Bangalore','Deccan Chargers','Deccan Chargers','field','normal',0,'Royal Challengers Bangalore',3,0,'P Kumar','M Chinnaswamy Stadium','BR Doctrove','SL Shastri',NULL),
('112','2008','Kolkata','2008-05-25','Kings XI Punjab','Kolkata Knight Riders','Kings XI Punjab','bat','normal',0,'Kolkata Knight Riders',0,3,'Umar Gul','Eden Gardens','SJ Davis','I Shivram',NULL),
('113','2008','Jaipur','2008-05-26','Mumbai Indians','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,5,'Sohail Tanvir','Sawai Mansingh Stadium','BF Bowden','K Hariharan',NULL),
('114','2008','Hyderabad','2008-05-27','Deccan Chargers','Chennai Super Kings','Deccan Chargers','bat','normal',0,'Chennai Super Kings',0,7,'SK Raina','Rajiv Gandhi International Stadium, Uppal','BG Jerling','AM Saheba',NULL),
('115','2008','Mumbai','2008-05-30','Rajasthan Royals','Delhi Daredevils','Delhi Daredevils','field','normal',0,'Rajasthan Royals',105,0,'SR Watson','Wankhede Stadium','BF Bowden','RE Koertzen',NULL),
('116','2008','Mumbai','2008-05-31','Kings XI Punjab','Chennai Super Kings','Kings XI Punjab','bat','normal',0,'Chennai Super Kings',0,9,'M Ntini','Wankhede Stadium','Asad Rauf','DJ Harper',NULL),
('117','2008','Mumbai','2008-06-01','Chennai Super Kings','Rajasthan Royals','Rajasthan Royals','field','normal',0,'Rajasthan Royals',0,3,'YK Pathan','Dr DY Patil Sports Academy','BF Bowden','RE Koertzen',NULL),
('118','2009','Cape Town','2009-04-18','Mumbai Indians','Chennai Super Kings','Chennai Super Kings','field','normal',0,'Mumbai Indians',19,0,'SR Tendulkar','Newlands','BR Doctrove','K Hariharan',NULL),
('119','2009','Cape Town','2009-04-18','Royal Challengers Bangalore','Rajasthan Royals','Royal Challengers Bangalore','bat','normal',0,'Royal Challengers Bangalore',75,0,'R Dravid','Newlands','BR Doctrove','RB Tiffin',NULL),
('120','2009','Cape Town','2009-04-19','Kings XI Punjab','Delhi Daredevils','Delhi Daredevils','field','normal',1,'Delhi Daredevils',0,10,'DL Vettori','Newlands','MR Benson','SD Ranade',NULL),
('121','2009','Cape Town','2009-04-19','Kolkata Knight Riders','Deccan Chargers','Kolkata Knight Riders','bat','normal',0,'Deccan Chargers',0,8,'RP Singh','Newlands','MR Benson','BR Doctrove',NULL),
('122','2009','Port Elizabeth','2009-04-20','Chennai Super Kings','Royal Challengers Bangalore','Chennai Super Kings','bat','normal',0,'Chennai Super Kings',92,0,'M Muralitharan','St George''s Park','BG Jerling','SJA Taufel',NULL),
('123','2009','Durban','2009-04-21','Kings XI Punjab','Kolkata Knight Riders','Kolkata Knight Riders','field','normal',1,'Kolkata Knight Riders',11,0,'CH Gayle','Kingsmead','DJ Harper','SD Ranade',NULL),
('124','2009','Cape Town','2009-04-22','Deccan Chargers','Royal Challengers Bangalore','Deccan Chargers','bat','normal',0,'Deccan Chargers',24,0,'AC Gilchrist','Newlands','M Erasmus','AM Saheba',NULL),
('125','2009','Durban','2009-04-23','Delhi Daredevils','Chennai Super Kings','Delhi Daredevils','bat','normal',0,'Delhi Daredevils',9,0,'AB de Villiers','Kingsmead','BR Doctrove','SJA Taufel',NULL),
('126','2009','Cape Town','2009-04-23','Rajasthan Royals','Kolkata Knight Riders','Kolkata Knight Riders','field','tie',0,'Rajasthan Royals',0,0,'YK Pathan','Newlands','MR Benson','M Erasmus',NULL),
('127','2009','Durban','2009-04-24','Royal Challengers Bangalore','Kings XI Punjab','Royal Challengers Bangalore','bat','normal',0,'Kings XI Punjab',0,7,'RS Bopara','Kingsmead','BR Doctrove','TH Wijewardene',NULL),
('128','2009','Durban','2009-04-24','Deccan Chargers','Mumbai Indians','Deccan Chargers','bat','normal',0,'Deccan Chargers',12,0,'PP Ojha','Kingsmead','HDPK Dharmasena','SJA Taufel',NULL);

**----INDIAN IPL CASESTUDY----**

**Ques 1 find out who teams they are and how many times they have won by more than 30 runs**
Select Winner, Count(*) as totalwins
From Matches
WHERE win_by_runs>30
group by winner
ORDER BY totalwins DESC;

**Ques 2 Find out who won by more than five wickets, along with the teams' names**
Select Winner, Count(*) as totalwins
From Matches
WHERE win_by_wickets>5
group by winner
ORDER BY totalwins DESC;

**Ques 3 Find the name of the venue where maximum match has been played**
Select Venue, Count(*) as totalwins
From Matches
group by Venue
ORDER BY totalwins DESC
LIMIT 1;

**Ques 4 Which player who won the maximum player of the match**
with t1 as (
	Select player_of_match, Count(*) as maxmanofthematch,
	row_number() OVER(order by Count(*)DESC) as RN
	From Matches
	group by player_of_match)
    
Select * from T1
where RN =1;

**Ques 5 Which player won the maximum player of the match each year**
with t1 as (
	Select season, player_of_match, Count(*) as maxmanofthematch,
	row_number() OVER( partition by Season order by Count(*)DESC) as RN
	From Matches
	group by season,player_of_match)
    
Select * from T1
where RN =1;

**Ques 6 Find out the team’s name who won the maximum tosses**
with t1  as(
Select toss_winner, Count(*) as wimamxtosses,
row_number() OVER(order by Count(*) DESC) as RN
from Matches
group by toss_winner)

select * from t1
where RN =1;

**Ques 7 WAP to fetch the name of the team who won the maximum tosses each year**
with t1  as(
Select season, toss_winner, Count(*) as wimamxtosses,
row_number() OVER(partition by Season order by Count(*) DESC) as RN
from Matches
group by Season, toss_winner)

select * from t1
where RN =1;
 
**Ques 8 How many matches has been played in each year**
Select season, Count(*) as totalmatchplayed
from matches
group by season;

**Ques 9 Fetch the name of the city where max match has been played**
With t1 as (
Select city, Count(*) as totalmatchplayed,
row_number() OVER ( order by COUNT(*) DESC) AS RN
from matches
group by city)

Select * from t1
WHERE RN = 1;

**Ques 10 Fetch the name of the city where max match has been played each year**
With t1 as (
Select season,city, Count(*) as totalmatchplayed,
row_number() OVER (partition by season order by COUNT(*) DESC) AS RN
from matches
group by season, city)

Select * from t1
WHERE RN = 1;

**Ques 11 WAP to fetch the max and min runs to win in each season**
select season, Max(win_by_runs) as maxruns,
Min(win_by_runs) as minruns
From matches
WHERE win_by_runs>0
group by season;

**Ques 12 WAP to fetch the team’s name and total matches played by them**
with T1 as(
Select team1 as team, count(*) as total from matches m1
group by team1
UNION ALL
Select team2 as team, count(*) as total from matches m2
group by team2),

t2 as (select team, sum(total) as totalmatch,
row_number() over( order by Sum(total) DESC) as RN
from t1
group by team)

Select * from t2;

**Ques 13.	WAP to fetch the team’s name who have played the maximum matches**
with T1 as(
Select team1 as team, count(*) as total from matches m1
group by team1
UNION ALL
Select team2 as team, count(*) as total from matches m2
group by team2),

t2 as (select team, sum(total) as totalmatch,
row_number() over( order by Sum(total) DESC) as RN
from t1
group by team)

Select * from t2
WHERE RN =1;

**Ques14 Fetch the team’s name and total matches played by them, total matches won by them, total matches lost by them**
With t1 as (Select team1 as team, winner From matches m1
UNION ALL
Select team2 as team, winner from matches m2)
Select team,
count(team) as totalmatches,
count(CASE WHEN winner = team THEN 1 End ) As totalwon,
count(CASE WHEN winner != team THEN 1 End) As totallost,
count(CASE WHEN winner IS NULL THEN 1 End) As totaltie
FROM t1
group by team
order by Totalmatches DESC;

**Ques 15 Fetch the team’s name and total matches played by them, total matches won by them, total matches lost by them each year**
With t1 as (Select season,team1 as team, winner From matches m1
UNION ALL
Select season,team2 as team, winner from matches m2)
Select team,season,
count(team) as totalmatches,
count(CASE WHEN winner = team THEN 1 End ) As totalwon,
count(CASE WHEN winner != team THEN 1 End) As totallost,
count(CASE WHEN winner IS NULL THEN 1 End) As totaltie
FROM t1
group by team,season
order by totalmatches DESC;

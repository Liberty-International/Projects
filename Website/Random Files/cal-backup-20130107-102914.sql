CREATE TABLE `categories` (
  `category_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `sequence` int(3) unsigned NOT NULL DEFAULT '1',
  `rpeat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `public` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `color` varchar(10) DEFAULT NULL,
  `background` varchar(10) DEFAULT NULL,
  `check1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `label1` varchar(40) NOT NULL DEFAULT 'approved',
  `mark1` varchar(10) NOT NULL DEFAULT 'ok',
  `check2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `label2` varchar(40) NOT NULL DEFAULT 'complete',
  `mark2` varchar(10) NOT NULL DEFAULT '?',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `doctorid` int(4) DEFAULT NULL,
  `isdoctorschedule` tinyint(1) NOT NULL DEFAULT '0',
  `ispatientappointment` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO categories VALUES("1","no category","0","0","1","","","0","approved","ok","0","complete","&#10008;","0","0","0","0");
INSERT INTO categories VALUES("7","Dr. Elliot Reid","5","0","1","#000000","#FFBBFF","0","","ok","0","","?","0","4","1","0");
INSERT INTO categories VALUES("6","Appointment with Dr. Dorian","4","0","1","#FFFFFF","#FF9000","1","Missed Appointment","✘","0","Confirmed Appointmen","✔","0","2","0","1");
INSERT INTO categories VALUES("11","Dr. mario","0","0","1","","","0","","ok","0","","?","-1","0","0","0");
INSERT INTO categories VALUES("5","Dr. John Dorian","3","0","1","#FFFFFF","#FF9000","0","","&#10004;","0","","&#10004;","0","2","1","0");
INSERT INTO categories VALUES("4","Appointment with Dr. Turk","2","0","1","#FFFFFF","#205040","1","Missed Appointment","✘","0","Confirmed Appointmen","✔","0","1","0","1");
INSERT INTO categories VALUES("3","Public Cat","0","0","0","","","0","","ok","0","","?","-1","0","0","0");
INSERT INTO categories VALUES("2","Dr. Christopher Turk","1","0","1","#FFFFFF","#205040","0","Test1","ok","0","Test2","?","0","1","1","0");
INSERT INTO categories VALUES("8","Appointment with Dr. Reid","6","0","1","#000000","#FFBBFF","1","Missed Appointment","✘","0","Confirmed Appointmen","✔","0","4","0","1");
INSERT INTO categories VALUES("9","Dr. Perry Cox","7","0","1","#FFFFFF","#000000","0","","&#10004;","0","","&#10004;","0","5","1","0");
INSERT INTO categories VALUES("10","Appointment with Dr. Cox","8","0","1","#FFFFFF","#000000","1","Missed Appointment","✘","0","Confirmed Appointmen","✔","0","5","0","1");
INSERT INTO categories VALUES("20","Dr. john bowser","13","0","1","#000066","#666666","0","","&#10004;","0","","&#10004;","-1","15","1","0");
INSERT INTO categories VALUES("15","Appointment with Dr. Octavius","10","0","1","#FFFFFF","#000099","1","Missed Appointment","✘","0","Confirmed Appointmen","✔","0","12","0","1");
INSERT INTO categories VALUES("14","Dr. Otto Octavius","9","0","1","#FFFFFF","#000099","0","","?","0","","?","0","12","1","0");
INSERT INTO categories VALUES("18","Dr. Star Fox","11","0","1","#000000","#205040","0","","?","0","","?","-1","14","1","0");
INSERT INTO categories VALUES("19","Appointment with Dr. Fox","12","0","1","#000000","#205040","1","Missed Appointment","&#10008;","1","Canceled Appointment","&#10008;","-1","14","0","1");
INSERT INTO categories VALUES("21","Appointment with Dr. bowser","14","0","1","#000066","#666666","1","Missed Appointment","&#10008;","1","Canceled Appointment","&#10008;","-1","15","0","1");
INSERT INTO categories VALUES("22","Dr. Naruto Uzumaki","15","0","1","#000000","#55FF55","0","","&#10004;","0","","&#10004;","-1","16","1","0");
INSERT INTO categories VALUES("23","Appointment with Dr. Uzumaki","16","0","1","#000000","#55FF55","1","Missed Appointment","&#10008;","1","Canceled Appointment","&#10008;","-1","16","0","1");


CREATE TABLE `doctors` (
  `doctorid` int(4) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `specialty` varchar(50) NOT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO doctors VALUES("1","Christopher","Turk","","0","","","","","","","","0000-00-00","");
INSERT INTO doctors VALUES("2","John","Dorian","4444444444","0","Testing notes","22 woodland dr","Tiverton","RI","02854","M","Doctordorian@my.uri.edu","1980-08-23","Orthodics");
INSERT INTO doctors VALUES("4","Elliot","Reid","","0","","","","","","F","","0000-00-00","");
INSERT INTO doctors VALUES("5","Perry","Cox","","0","","","","","","M","","0000-00-00","");
INSERT INTO doctors VALUES("12","Otto","Octavius","555-555-5555","0","Notes for Dr. Otto","1 nintendo lane","Woonsocket","RI","02415","M","mario83hfh3@my.uri.edu","1975-09-07","Implants");
INSERT INTO doctors VALUES("14","Star","Fox","5559997777","-1","test","3 nintendo way","woonsocket","RI","55511","M","starfoxy@my.uri.edu","1949-07-08","Flight");
INSERT INTO doctors VALUES("15","john","bowser","555-555-2424","-1","No notes needed","11 somewhere lane","Woonsocket","RI","02906","M","Docbowser@my.uri.edu","1973-01-02","Bones");
INSERT INTO doctors VALUES("16","Naruto","Uzumaki","555-555-5555","-1","none needed","1 konoha lane","Konoha","RI","02899","M","NarutoKonoha@my.uri.edu","1969-08-05","Chakra");


CREATE TABLE `events` (
  `event_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `description` text,
  `category_id` int(4) unsigned NOT NULL DEFAULT '1',
  `venue` varchar(64) DEFAULT NULL,
  `user_id` int(6) unsigned DEFAULT NULL,
  `editor` varchar(32) NOT NULL DEFAULT '',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked` text,
  `s_date` date DEFAULT NULL,
  `e_date` date NOT NULL DEFAULT '9999-00-00',
  `x_dates` text,
  `s_time` time DEFAULT NULL,
  `e_time` time NOT NULL DEFAULT '99:00:00',
  `r_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_interval` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_period` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_month` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `r_until` date NOT NULL DEFAULT '9999-00-00',
  `notify` tinyint(1) NOT NULL DEFAULT '-1',
  `not_mail` varchar(255) DEFAULT NULL,
  `a_date` date NOT NULL DEFAULT '9999-00-00',
  `m_date` date NOT NULL DEFAULT '9999-00-00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `doctorid` int(4) DEFAULT NULL,
  `patientid` int(5) DEFAULT NULL,
  `isdoctorschedule` tinyint(1) NOT NULL DEFAULT '0',
  `ispatientappointment` tinyint(1) NOT NULL DEFAULT '0',
  `diagnosis` varchar(255) NOT NULL,
  `atid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

INSERT INTO events VALUES("119","0","TEST","test","1","Clinic","2","","0","","2012-10-12","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","","","0","0","","0");
INSERT INTO events VALUES("120","0","TEST","test","1","Clinic","2","Michael Briggs","0","","2012-10-12","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-10","0","","","0","0","","0");
INSERT INTO events VALUES("118","0","Dr. Elliot Reid","fbfb","7","Clinic","2","Michael Briggs","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-11","0","4","","1","0","","0");
INSERT INTO events VALUES("117","0","Appointment: Jane Smith","test","8","Clinic","2","","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","4","0","1","","0");
INSERT INTO events VALUES("116","0","Appointment: Jane Smith","test","8","Clinic","2","Michael Briggs","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-11","0","4","4","0","1","Jane smith working8","0");
INSERT INTO events VALUES("115","0","Appointment: Jane Smith","test","8","Clinic","2","","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","4","0","1","","0");
INSERT INTO events VALUES("114","0","Dr. Elliot Reid","fbfb","7","Clinic","2","","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","","1","0","","0");
INSERT INTO events VALUES("113","0","Appointment: Jane Smith","test","8","Clinic","2","","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","4","0","1","","0");
INSERT INTO events VALUES("112","0","Appointment: Jane Smith","test","8","Clinic","2","","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","4","0","1","","0");
INSERT INTO events VALUES("111","0","TEST","asdfasdf","1","asdf","2","Michael Briggs","0","","2012-10-12","9999-00-00","","07:30:00","09:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","","","0","0","","0");
INSERT INTO events VALUES("110","0","Dr. Elliot Reid","fbfb","7","Clinic","2","Michael Briggs","0","","2012-10-11","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-09","-1","4","","1","0","","0");
INSERT INTO events VALUES("109","0","Dr. John Dorian","test","5","Clinic","2","Michael Briggs","0","","2012-10-10","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-09","2012-10-10","0","2","","1","0","","0");
INSERT INTO events VALUES("121","0","Dr. Christopher Turk","fassdff","2","Clinic","2","","0","","2012-10-04","9999-00-00","","11:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-10","9999-00-00","0","1","","1","0","","0");
INSERT INTO events VALUES("122","0","Appointment: Jane Smith","cough wheeze sneeze fever","8","Clinic","2","Michael Briggs","0","","2012-10-12","9999-00-00","","00:30:00","01:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-10","2012-10-10","0","4","4","0","1","Works","0");
INSERT INTO events VALUES("123","0","Dr. Christopher Turk","Notes","2","clinic1","2","","0","","2012-10-24","9999-00-00","","07:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-25","9999-00-00","0","1","","1","0","","0");
INSERT INTO events VALUES("124","0","Appointment: Cecil Shadow","","4","clinic1","2","","0","","2012-10-24","9999-00-00","","09:00:00","10:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-10-25","2012-11-03","-1","1","5","0","1","","0");
INSERT INTO events VALUES("125","0","Duplication test","Test duplication","1","test","2","","0","","2012-10-24","9999-00-00","","12:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-02","2012-11-02","-1","","","0","0","","0");
INSERT INTO events VALUES("126","0","Duplication test","Test duplication","1","test","2","","0","","2012-10-24","9999-00-00","","12:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-02","2012-11-02","-1","","","0","0","","0");
INSERT INTO events VALUES("127","0","Dr. Elliot Reid","test","7","test","9","","0","","2012-10-24","9999-00-00","","10:00:00","10:30:00","0","0","0","0","9999-00-00","-1","visiondoctor@my.uri.edu","2012-11-02","2012-11-02","-1","4","","1","0","","0");
INSERT INTO events VALUES("128","0","Appointment: John Davis","test","6","test","9","","0","","2012-10-24","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","-1","visiondoctor@my.uri.edu","2012-11-02","2012-11-02","-1","2","1","0","1","","0");
INSERT INTO events VALUES("129","0","Appointment: John Davis","test","6","test","9","visiondoctor","0","","2012-10-24","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","-1","visiondoctor@my.uri.edu","2012-11-02","2012-11-02","-1","2","1","0","1","","0");
INSERT INTO events VALUES("130","0","Dr. Otto Octavius","test","14","test","9","","0","","2012-10-24","9999-00-00","","10:30:00","11:00:00","0","0","0","0","9999-00-00","-1","visiondoctor@my.uri.edu","2012-11-02","2012-11-02","-1","12","","1","0","","0");
INSERT INTO events VALUES("131","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-02","2012-11-02","-1","1","4","0","1","","0");
INSERT INTO events VALUES("132","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","10:30:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-02","2012-11-02","-1","1","4","0","1","","0");
INSERT INTO events VALUES("133","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","4","0","1","","0");
INSERT INTO events VALUES("134","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","10:30:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","4","0","1","","0");
INSERT INTO events VALUES("135","0","Appointment: Jane Smith","test","4","test","2","Michael Briggs","0","","2012-10-24","9999-00-00","","07:00:00","09:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","0","1","4","0","1","Jane smith working8","0");
INSERT INTO events VALUES("136","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","07:00:00","07:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","4","0","1","","0");
INSERT INTO events VALUES("137","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","10:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","4","0","1","","0");
INSERT INTO events VALUES("138","0","Appointment: Jane Smith","test","4","test","2","","0","","2012-10-24","9999-00-00","","07:00:00","07:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","4","0","1","","0");
INSERT INTO events VALUES("139","0","Dr. John Dorian","test","5","clinic","2","","0","","2012-10-24","9999-00-00","","07:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("140","0","Appointment: John Adams","test","6","clinic","2","Michael Briggs","0","","2012-10-24","9999-00-00","","07:15:00","08:15:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","2","23","0","1","","0");
INSERT INTO events VALUES("141","0","Dr. Christopher Turk","schedule","2","clinic","2","Michael Briggs","0","","2012-11-07","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-07","0","1","","1","0","","0");
INSERT INTO events VALUES("142","0","Appointment: Jane Smith","test","4","clinic","2","Michael Briggs","0","","2012-11-07","9999-00-00","","08:00:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-10","-1","1","4","0","1","","0");
INSERT INTO events VALUES("143","0","Dr. Christopher Turk","test","2","clinic","2","","0","","2012-10-31","9999-00-00","","09:00:00","12:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","1","","1","0","","0");
INSERT INTO events VALUES("144","0","Dr. John Dorian","test","5","test","2","visionadminassist","0","","2012-11-07","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-07","0","2","","1","0","","0");
INSERT INTO events VALUES("145","0","Appointment: John Adams","test","6","test","2","Michael Briggs","0","","2012-11-07","9999-00-00","","08:30:00","10:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-03","-1","2","4","0","1","","0");
INSERT INTO events VALUES("146","0","Appointment: John Adams","test","6","clinic","2","Michael Briggs","0","","2012-11-07","9999-00-00","","09:00:00","10:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-03","2012-11-07","-1","2","23","0","1","test1","0");
INSERT INTO events VALUES("147","0","Dr. Otto Octavius","test","14","room 102","2","Michael Briggs","0","","2012-11-08","9999-00-00","","08:30:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-10","0","12","","1","0","","0");
INSERT INTO events VALUES("148","0","Appointment: John Adams","test","6","d","2","Michael Briggs","0","","2012-11-07","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-06","-1","2","23","0","1","","0");
INSERT INTO events VALUES("149","0","Appointment: John Adams","test","6","test","2","Michael Briggs","0","","2012-11-07","9999-00-00","","12:00:00","12:15:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-06","-1","2","23","0","1","","0");
INSERT INTO events VALUES("150","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","12:15:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-06","-1","2","23","0","1","","0");
INSERT INTO events VALUES("151","0","Dr. Elliot Reid","test","7","lab","2","Michael Briggs","0","","2012-11-07","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-08","-1","4","","1","0","","0");
INSERT INTO events VALUES("152","0","Dr. john bowser","test","20","test","2","","0","","2012-11-09","9999-00-00","","08:30:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-06","-1","15","","1","0","","0");
INSERT INTO events VALUES("153","0","Appointment: Raph Turtle","test","21","test","2","Michael Briggs","0","","2012-11-09","9999-00-00","","09:00:00","12:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-06","2012-11-06","-1","15","9","0","1","","0");
INSERT INTO events VALUES("154","0","Dr. Naruto Uzumaki","Test","22","Clinic","2","","0","","2012-11-09","9999-00-00","","07:30:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","9999-00-00","0","16","","1","0","","0");
INSERT INTO events VALUES("155","0","Appointment: John Davis","test","23","Clinic","2","Michael Briggs","0","","2012-11-09","9999-00-00","","08:00:00","08:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-09","0","16","1","0","1","test","0");
INSERT INTO events VALUES("156","0","Appointment: John Smith","test","2","tet","2","Michael Briggs","0","","2012-11-09","9999-00-00","","09:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","1","","1","0","","0");
INSERT INTO events VALUES("157","0","Appointment: John Adams","test","23","test","2","","0","","2012-11-09","9999-00-00","","12:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","16","23","0","1","","0");
INSERT INTO events VALUES("158","0","Appointment: John Adams","test","6","Clinic","2","Michael Briggs","0","","2012-11-07","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-10","-1","2","23","0","1","test9","0");
INSERT INTO events VALUES("160","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","11:30:00","12:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","2","23","0","1","","0");
INSERT INTO events VALUES("161","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","2","23","0","1","","0");
INSERT INTO events VALUES("162","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","2","23","0","1","","0");
INSERT INTO events VALUES("163","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","08:30:00","09:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","2","23","0","1","","0");
INSERT INTO events VALUES("164","0","Appointment: John Adams","test","6","test","2","Michael Briggs","0","","2012-11-07","9999-00-00","","11:00:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","2","23","0","1","","0");
INSERT INTO events VALUES("165","0","Dr. Perry Cox","test","9","test","2","","0","","2012-11-07","9999-00-00","","11:30:00","99:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","5","","1","0","","0");
INSERT INTO events VALUES("166","0","Dr. Perry Cox","test","9","test","2","","0","","2012-11-07","9999-00-00","","11:15:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","5","","1","0","","0");
INSERT INTO events VALUES("167","0","Dr. Perry Cox","test","9","test","2","","0","","2012-11-07","9999-00-00","","11:15:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","5","","1","0","","0");
INSERT INTO events VALUES("168","0","Dr. Perry Cox","test","1","test","2","","0","","2012-11-07","9999-00-00","","11:15:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","","","0","0","","0");
INSERT INTO events VALUES("169","0","test","test","1","test","8","Michael Briggs","0","","2012-11-08","9999-00-00","","07:00:00","07:30:00","0","0","0","0","9999-00-00","-1","visionadminassist@my.uri.edu","2012-11-07","2012-11-10","0","","","0","0","","0");
INSERT INTO events VALUES("170","0","test","testing","1","test","2","","0","","2012-11-08","9999-00-00","","00:00:00","23:59:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-07","2012-11-07","-1","","","0","0","","0");
INSERT INTO events VALUES("171","0","Dr. Perry Cox","test","9","test","2","","0","","2012-11-05","9999-00-00","","09:00:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-08","9999-00-00","0","5","","1","0","","0");
INSERT INTO events VALUES("172","0","Appointment: Samantha Bean","test","10","test","2","","0","","2012-11-05","9999-00-00","","09:00:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-08","9999-00-00","0","5","27","0","1","","0");
INSERT INTO events VALUES("173","0","test","test","1","test","2","","0","","2012-11-07","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-08","2012-11-11","-1","","","0","0","","0");
INSERT INTO events VALUES("174","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-07","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","2","23","0","1","","0");
INSERT INTO events VALUES("175","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-07","9999-00-00","","12:30:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","2","23","0","1","","1");
INSERT INTO events VALUES("176","0","Appointment: John Adams","testf","6","room 102","2","visionadminassist","0","","2012-11-07","9999-00-00","","12:30:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-11","0","2","23","0","1","","0");
INSERT INTO events VALUES("177","0","Appointment: John Adams","test","6","Clinic","2","visionadminassist","0","","2012-11-07","9999-00-00","","08:00:00","11:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-11","0","2","23","0","1","","0");
INSERT INTO events VALUES("178","0","Appointment: Jane Smith","test","4","clinic","2","","0","","2012-11-07","9999-00-00","","08:00:00","13:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","1","4","0","1","","0");
INSERT INTO events VALUES("179","0","Dr. John Dorian","test","5","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("180","0","Dr. Christopher Turk","test","2","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","1","","1","0","","0");
INSERT INTO events VALUES("181","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","2","23","0","1","","3");
INSERT INTO events VALUES("182","0","Appointment: Jane Smith","","4","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","1","4","0","1","Diag","3");
INSERT INTO events VALUES("183","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-07","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","2","23","0","1","","1");
INSERT INTO events VALUES("184","0","Appointment: John Adams","test","6","test","2","visionadminassist","0","","2012-11-07","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-11","0","2","23","0","1","","0");
INSERT INTO events VALUES("185","0","Dr. Perry Cox","test","9","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","5","","1","0","","0");
INSERT INTO events VALUES("186","0","Appointment: Cecil Shadow","","10","room 102","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","5","0","1","","3");
INSERT INTO events VALUES("187","0","Appointment: Leonardo Turtle","test","10","clinic","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","8","0","1","","3");
INSERT INTO events VALUES("188","0","Appointment: John Adams","test","10","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","23","0","1","","3");
INSERT INTO events VALUES("189","0","Appointment: John Adams","test","10","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","23","0","1","","0");
INSERT INTO events VALUES("190","0","Appointment: Jane Smith","test","10","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","4","0","1","","1");
INSERT INTO events VALUES("191","0","Appointment: Jane Smith","test","10","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","4","0","1","","1");
INSERT INTO events VALUES("192","0","Appointment: Leonardo Turtle","","10","test","2","","0","","2012-11-10","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","9999-00-00","0","5","8","0","1","","3");
INSERT INTO events VALUES("193","0","Dr. Perry Cox","dfs","9","asdf","2","","0","","2012-11-07","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-10","2012-11-10","-1","5","","1","0","","0");
INSERT INTO events VALUES("194","0","Appointment: John Adams","sere","6","test","8","visionadminassist","0","","2012-11-07","9999-00-00","","11:00:00","12:00:00","0","0","0","0","9999-00-00","-1","visionadminassist@my.uri.edu","2012-11-10","2012-11-11","0","2","23","0","1","","3");
INSERT INTO events VALUES("195","0","Dr. Elliot Reid","test","7","test","2","","0","","2012-11-06","9999-00-00","","07:00:00","19:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-15","2012-11-15","-1","4","","1","0","","0");
INSERT INTO events VALUES("196","0","Dr. John Dorian","test","5","clinic","2","","0","","2012-11-06","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-16","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("197","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-16","2012-11-16","-1","2","23","0","1","","1");
INSERT INTO events VALUES("198","0","Appointment: John Adams","test1234","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","08:30:00","09:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-16","2012-11-16","-1","2","23","0","1","","1");
INSERT INTO events VALUES("199","0","Appointment: John Adams","test","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","09:00:00","09:30:00","0","0","0","0","9999-00-00","3","stratos528@my.uri.edu","2012-11-16","2012-11-16","-1","2","23","0","1","","1");
INSERT INTO events VALUES("200","0","Appointment: John Adams","testing","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com; stratos528@my.uri.edu","2012-11-16","2012-11-16","-1","2","23","0","1","","1");
INSERT INTO events VALUES("201","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","08:30:00","09:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-16","9999-00-00","0","2","23","0","1","","1");
INSERT INTO events VALUES("202","0","Appointment: John Adams","","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","09:00:00","09:30:00","0","0","0","0","9999-00-00","3","stratos528@my.uri.edu","2012-11-16","2012-11-16","0","2","23","0","1","","1");
INSERT INTO events VALUES("203","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","3","stratos528@my.uri.edu","2012-11-16","2012-11-16","-1","2","23","0","1","","2");
INSERT INTO events VALUES("204","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","10:00:00","10:30:00","0","0","0","0","9999-00-00","3","stratos528@my.uri.edu","2012-11-16","9999-00-00","0","2","23","0","1","diag","3");
INSERT INTO events VALUES("205","0","Appointment: John Adams","test1133","6","clinic1133","2","Michael Briggs","0","","2012-11-06","9999-00-00","","10:30:00","11:00:00","0","0","0","0","9999-00-00","3","stratos528@my.uri.edu","2012-11-16","2012-11-16","0","2","23","0","1","","1");
INSERT INTO events VALUES("206","0","Appointment: John Adams","testing 123","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","11:00:00","11:30:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-16","2012-11-16","0","2","23","0","1","","1");
INSERT INTO events VALUES("207","0","Appointment: Leonardo Turtle","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","11:30:00","12:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-16","9999-00-00","0","2","8","0","1","","1");
INSERT INTO events VALUES("208","0","Appointment: Leonardo Turtle","test","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","12:00:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-16","2012-11-16","0","2","8","0","1","","1");
INSERT INTO events VALUES("209","0","Appointment: John Adams","test","6","clinic","2","Michael Briggs","0","","2012-11-06","9999-00-00","","12:30:00","13:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com;stratos528@my.uri.edu","2012-11-16","2012-11-17","0","2","23","0","1","","3");
INSERT INTO events VALUES("210","0","Dr. John Dorian","test","5","clinic","2","","0","","2012-11-08","9999-00-00","","08:00:00","13:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-16","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("211","0","Dr. John Dorian","test","5","clinic","2","","0","","2012-11-09","9999-00-00","","08:00:00","14:00:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-16","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("212","0","Appointment: John Adams","test","6","clinic","2","","0","","2012-11-06","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-16","9999-00-00","0","2","23","0","1","","3");
INSERT INTO events VALUES("213","0","Dr. Perry Cox","Regular","9","Example Venue","10","","0","","2012-11-20","9999-00-00","","07:00:00","07:30:00","0","0","0","0","9999-00-00","-1","visioncsadmin@my.uri.edu","2012-11-20","9999-00-00","0","5","","1","0","","0");
INSERT INTO events VALUES("214","0","Appointment: Victoria Gomez","testing test","10","test venue","10","","0","","2012-11-20","9999-00-00","","07:00:00","07:30:00","0","0","0","0","9999-00-00","-1","victoriagomez@my.uri.edu","2012-11-20","9999-00-00","0","5","2","0","1","","1");
INSERT INTO events VALUES("215","0","Dr. John Dorian","schedule","5","clinic","2","","0","","2012-11-21","9999-00-00","","07:30:00","12:30:00","0","0","0","0","9999-00-00","-1","stratos528@my.uri.edu","2012-11-26","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("216","0","Appointment: John Adams","test","6","test","2","Michael Briggs","0","","2012-11-21","9999-00-00","","07:30:00","09:30:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-26","2012-11-28","0","2","23","0","1","","0");
INSERT INTO events VALUES("217","0","Appointment: John Adams","test","6","test","2","","0","","2012-11-21","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-11-28","9999-00-00","0","2","23","0","1","","1");
INSERT INTO events VALUES("218","0","Dr. Christopher Turk","","2","Clinic","11","demo","0","","2012-12-17","9999-00-00","","08:00:00","12:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","0","1","","1","0","","0");
INSERT INTO events VALUES("219","0","Dr. John Dorian","","5","","11","demo","0","","2012-12-18","9999-00-00","","08:00:00","12:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","0","2","","1","0","","0");
INSERT INTO events VALUES("220","0","Dr. Elliot Reid","","7","","11","demo","0","","2012-12-19","9999-00-00","","08:00:00","12:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","0","4","","1","0","","0");
INSERT INTO events VALUES("221","0","Dr. Perry Cox","","9","","11","demo","0","","2012-12-20","9999-00-00","","08:00:00","12:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","0","5","","1","0","","0");
INSERT INTO events VALUES("222","0","Dr. Otto Octavius","","14","","11","","0","","2012-12-21","9999-00-00","","08:00:00","12:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","12","","1","0","","0");
INSERT INTO events VALUES("223","0","Dr. Otto Octavius","","14","","11","","0","","2012-12-21","9999-00-00","","13:30:00","17:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","12","","1","0","","0");
INSERT INTO events VALUES("224","0","Dr. Perry Cox","","9","","11","","0","","2012-12-20","9999-00-00","","13:30:00","17:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","5","","1","0","","0");
INSERT INTO events VALUES("225","0","Dr. Elliot Reid","","7","","11","","0","","2012-12-19","9999-00-00","","13:30:00","17:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","4","","1","0","","0");
INSERT INTO events VALUES("226","0","Dr. John Dorian","","5","","11","","0","","2012-12-18","9999-00-00","","13:30:00","17:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","2","","1","0","","0");
INSERT INTO events VALUES("227","0","Dr. Christopher Turk","","2","","11","","0","","2012-12-17","9999-00-00","","13:30:00","17:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","1","","1","0","","0");
INSERT INTO events VALUES("228","0","Appointment: Cecil Shadow","","4","","11","","0","","2012-12-17","9999-00-00","","09:00:00","09:30:00","0","0","0","0","9999-00-00","-1","cecil.shadow@my.uri.edu","2012-12-19","9999-00-00","0","1","5","0","1","","3");
INSERT INTO events VALUES("229","0","Appointment: Roger Smith","","4","","11","","0","","2012-12-17","9999-00-00","","09:30:00","10:00:00","0","0","0","0","9999-00-00","-1","asdfasdf@sdfsdf.com","2012-12-19","9999-00-00","0","1","19","0","1","","1");
INSERT INTO events VALUES("230","0","Appointment: John Adams","","4","","11","","0","","2012-12-17","9999-00-00","","14:00:00","14:30:00","0","0","0","0","9999-00-00","3","4016442967@vtext.com","2012-12-19","9999-00-00","0","1","23","0","1","","2");
INSERT INTO events VALUES("231","0","Appointment: Victoria Gomez","","6","","11","demo","0",";2012-12-18a","2012-12-18","9999-00-00","","11:30:00","12:00:00","0","0","0","0","9999-00-00","-1","victoriagomez@my.uri.edu","2012-12-19","2012-12-29","0","2","2","0","1","","3");
INSERT INTO events VALUES("232","0","Appointment: Samantha Bean","","8","","11","","0","","2012-12-19","9999-00-00","","13:30:00","14:00:00","0","0","0","0","9999-00-00","-1","somethingsamanthabean@my.uri.edu","2012-12-19","9999-00-00","0","4","27","0","1","","1");
INSERT INTO events VALUES("233","0","Appointment: Victoria Gomez","","8","","11","demo","0","","2012-12-19","9999-00-00","","14:00:00","14:15:00","0","0","0","0","9999-00-00","-1","victoriagomez@my.uri.edu","2012-12-19","2012-12-19","0","4","2","0","1","","3");
INSERT INTO events VALUES("234","0","Appointment: Cecil Shadow","","10","","11","","0","","2012-12-20","9999-00-00","","10:00:00","10:30:00","0","0","0","0","9999-00-00","-1","cecil.shadow@my.uri.edu","2012-12-19","9999-00-00","0","5","5","0","1","","3");
INSERT INTO events VALUES("235","0","Presentation","","1","URI","11","demo","0","","2012-12-21","9999-00-00","","09:30:00","11:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","0","","","0","0","","0");
INSERT INTO events VALUES("236","0","Presentation","","1","URI","11","","0","","2012-12-21","9999-00-00","","09:30:00","11:30:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","2012-12-19","-1","","","0","0","","0");
INSERT INTO events VALUES("237","0","Appointment: John Smith","","8","","11","","0","","2012-12-19","9999-00-00","","14:15:00","14:30:00","0","0","0","0","9999-00-00","-1","johnsmith@my.uri.edu","2012-12-19","9999-00-00","0","4","3","0","1","","3");
INSERT INTO events VALUES("238","0","Dr. Perry Cox","","9","Clinic","11","","0","","2012-12-26","9999-00-00","","10:00:00","14:00:00","0","0","0","0","9999-00-00","-1","demo@my.uri.edu","2012-12-19","9999-00-00","0","5","","1","0","","0");
INSERT INTO events VALUES("239","0","Appointment: Samantha Bean","","10","","11","","0","","2012-12-26","9999-00-00","","10:00:00","10:30:00","0","0","0","0","9999-00-00","-1","somethingsamanthabean@my.uri.edu","2012-12-19","9999-00-00","0","5","27","0","1","","1");

CREATE TABLE `patients` (
  `patientid` int(5) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `phonehome` varchar(15) NOT NULL,
  `phonework` varchar(15) NOT NULL,
  `primarydoctorid` int(4) NOT NULL,
  `notes` text NOT NULL,
  `medication` text NOT NULL,
  `sex` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `medicalnotes` text NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `cellprovider` varchar(40) DEFAULT NULL,
  `txtreminder` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`patientid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Patient Information';

INSERT INTO patients VALUES("1","John","Davis","1232 something","Providence","RI","02906","555-555-5555","4444444444","16","Testing the Notes","Vitamin D","M","0","JohnDavis@my.uri.edu","1982-05-28","testing medical notes...","","","0");
INSERT INTO patients VALUES("2","Victoria","Gomez","232 hightail dr","Providence","RI","02906","8887774444","6665552222","2","Example of notes.","Example of medications.","F","0","victoriagomez@my.uri.edu","1990-10-05","","","","0");
INSERT INTO patients VALUES("3","John","Smith","1231 movie lane","Warwick","RI","05241","1234567899","1472585544","16","Patient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional
\\nPatient is fictional","Medication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list
\\nMedication list","M","0","johnsmith@my.uri.edu","2009-10-13","","","","0");
INSERT INTO patients VALUES("4","Jane","Smith","1231 movie lane","Warwick","RI","05241","8887774444","1472585544","1","Jane smith working7","Jane smith working6","F","0","janesmith1432@my.uri.edu","2011-11-04","Jane smith working5","","","0");
INSERT INTO patients VALUES("25","something","silly","","","","","","","2","","","","-1","asdfsdaf@asdjasdas.com","0000-00-00","","","","0");
INSERT INTO patients VALUES("26","","","","","","","","","0","","","","-1","","0000-00-00","","","","0");
INSERT INTO patients VALUES("27","Samantha","Bean","33 somewhere","anywhere","RI","02568","4444445555","5555554444","12","","","F","0","somethingsamanthabean@my.uri.edu","1982-09-04","","","","0");
INSERT INTO patients VALUES("5","Cecil","Shadow","12 timber ave","warwick","RI","45124-8847","451-864-2514","5416668974","1","","","M","0","cecil.shadow@my.uri.edu","1969-02-20","","","","0");
INSERT INTO patients VALUES("6","Cecil","Shadow","12 timber ave","warwick","RI","45124-8847","451-864-2514","5416668974","1","Testing if notes are added.","Testing if medications are added.","M","-1","cecil.shadow@my.uri.edu","0000-00-00","","","","0");
INSERT INTO patients VALUES("7","Cecil","Shadow","12 timber ave","warwick","RI","45124-8847","451-864-2514","5416668974","1","Testing if notes are added.","Testing if medications are added.","M","-1","cecil.shadow@my.uri.edu","0000-00-00","","","","0");
INSERT INTO patients VALUES("8","Leonardo","Turtle","11 sewer lane","Woonsocket","RI","05645","1452639857","555-555-5555","2","Testing notes field.
\\nrow 2
\\nrow 3","Testing medications field.
\\nsecond row","M","0","leo897sd@my.uri.edu","1984-03-11","","","","0");
INSERT INTO patients VALUES("9","Raph","Turtle","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","2","Testing notes field
\\nTesting notes field
\\nTesting notes field
\\nTesting notes field","Medication field
\\nMedication field
\\nMedication field
\\nMedication field
\\nMedication field","M","0","leo897sd@my.uri.edu","1987-07-07","","","","0");
INSERT INTO patients VALUES("10","TEST1","Test1","33 rawr","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","asdfasdfasdf","asdfasdfasdf","F","-1","cecil.shadow@my.uri.edu","1969-02-04","","","","0");
INSERT INTO patients VALUES("11","TEST1","Test1","33 rawr","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","asdfasdfasdf","asdfasdfasdf","F","-1","cecil.shadow@my.uri.edu","1969-02-04","","","","0");
INSERT INTO patients VALUES("12","TEST1","Test1","33 rawr","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","asdfasdfasdf","asdfasdfasdf","F","-1","cecil.shadow@my.uri.edu","1969-02-04","","","","0");
INSERT INTO patients VALUES("13","TEST2","Turtle","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","testtesttesttesttesttesttest","testtesttesttesttesttesttesttesttesttest","F","-1","cecil.shadow@my.uri.edu","1926-07-06","","","","0");
INSERT INTO patients VALUES("14","TEST2","Turtle","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","testtesttesttesttesttesttest","testtesttesttesttesttesttesttesttesttest","F","-1","cecil.shadow@my.uri.edu","1926-07-06","","","","0");
INSERT INTO patients VALUES("15","TEST2","Turtle","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","testtesttesttesttesttesttest","testtesttesttesttesttesttesttesttesttest","F","-1","cecil.shadow@my.uri.edu","1926-07-06","","","","0");
INSERT INTO patients VALUES("16","zzzzzz","zzzzzzzz","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","","","M","-1","cecil.shadow@my.uri.edu","1902-02-04","","","","0");
INSERT INTO patients VALUES("17","zzzzzz","zzzzzzzz","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","","","M","-1","cecil.shadow@my.uri.edu","1902-02-04","","","","0");
INSERT INTO patients VALUES("18","Testingduplicate","zzzzzzzz","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","asdfasdf","asdfsdf","M","-1","testingduplicates@my.uri.edu","1911-04-04","","","","0");
INSERT INTO patients VALUES("19","Roger","Smith","11 sewer lane","warwick","RI","45124-8847","1452639857","5416668974","1","","","M","0","asdfasdf@sdfsdf.com","1972-07-05","","","","0");
INSERT INTO patients VALUES("20","asdfasdfasdfasdf","efwefsadf","11 sewer lane","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","","","M","-1","asfasdfasdfasdfsdf@asdasds.com","1902-02-03","","","","0");
INSERT INTO patients VALUES("21","erwtwertwert","wertwertwer","11 sewer lane","warwick","RI","45124-8847","451-864-2514","5416668974","1","asdf","asdf","M","-1","asdfeer@97ycw78gh.com","1904-02-02","","","","0");
INSERT INTO patients VALUES("22","ghjkgfyj","fgjhh","12 timber ave","Woonsocket","RI","45124-8847","451-864-2514","5416668974","1","jhgh","ghjghjghj","M","-1","jgasdfgasdf@my.uri.edu","1912-02-02","","","","0");
INSERT INTO patients VALUES("23","John","Adams","22 woodland dr","Woonsocket","RI","02854","5555555555","4444444444","2","notes","meds","M","0","stratos528@yahoo.com","1903-03-05","PMN","(401) 644-2967","vtext.com","1");
INSERT INTO patients VALUES("24","donky","kong","","","","","","","0","","","","-1","","0000-00-00","","","","0");

CREATE TABLE `settings` (
  `settingid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `value` text,
  `description` text,
  PRIMARY KEY (`settingid`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("472","calendarTitle","Vision Clinical Scheduler","Calendar title displayed in the top bar");
INSERT INTO settings VALUES("473","calendarUrl","http://jared.test9.us:8080/~vision/clinicalscheduler/","Calendar location (URL)");
INSERT INTO settings VALUES("474","calendarEmail","stratos528@my.uri.edu","Sender in and receiver of email notifications");
INSERT INTO settings VALUES("475","timeZone","America/New_York","Calendar time zone");
INSERT INTO settings VALUES("476","chgEmailList","stratos528@my.uri.edu","Destin. email addresses for calendar changes");
INSERT INTO settings VALUES("477","chgNofDays","1","Number of days to look back for calendar changes");
INSERT INTO settings VALUES("478","notifSender","0","Sender of notification emails (0:calendar 1:user)");
INSERT INTO settings VALUES("479","adminCronSum","1","Send cron job summary to admin (0:no, 1:yes)");
INSERT INTO settings VALUES("480","details4All","1","Show event details to all users (0:disabled 1:enabled)");
INSERT INTO settings VALUES("481","userMenu","0","Display user filter menu");
INSERT INTO settings VALUES("482","catMenu","1","Display category filter menu");
INSERT INTO settings VALUES("483","langMenu","0","Display ui-language selection menu");
INSERT INTO settings VALUES("484","defaultView","2","Calendar view at start-up (1:year, 2:month, 3:work month, 4:week, 5:work week 6:day, 7:upcoming, 8:changes)");
INSERT INTO settings VALUES("485","language","english","Default user interface language");
INSERT INTO settings VALUES("486","maxNoLogin","0","Number of days not logged in, before deleting user account (0:never delete)");
INSERT INTO settings VALUES("487","yearStart","0","Start month in year view (1-12 or 0, 0:current month)");
INSERT INTO settings VALUES("488","colsToShow","3","Number of months to show per row in year view");
INSERT INTO settings VALUES("489","rowsToShow","4","Number of rows to show in year view");
INSERT INTO settings VALUES("490","weeksToShow","10","Number of weeks to show in month view");
INSERT INTO settings VALUES("491","workWeekDays","12345","Days to show in work weeks (1:mo - 7:su)");
INSERT INTO settings VALUES("492","lookaheadDays","14","Days to look ahead in upcoming view");
INSERT INTO settings VALUES("493","dwStartHour","7","Day/week view start hour");
INSERT INTO settings VALUES("494","dwEndHour","17","Day/week view end hour");
INSERT INTO settings VALUES("495","dwTimeSlot","30","Day/week time slot in minutes");
INSERT INTO settings VALUES("496","dwTsHeight","30","Day/week time slot height in pixels");
INSERT INTO settings VALUES("497","eventHBox","1","Event details hover box (0:disabled, 1:enabled)");
INSERT INTO settings VALUES("498","weekNumber","1","Week numbers on(1) or off(0)");
INSERT INTO settings VALUES("499","showAdEd","1","Show event owner (0:no, 1:yes)");
INSERT INTO settings VALUES("500","showCatName","1","Show cat name in various views (0:no, 1:yes)");
INSERT INTO settings VALUES("501","showLinkInMV","1","Show URL-links in month view (0:no, 1:yes)");
INSERT INTO settings VALUES("502","eventColor","1","Event colors (0:user color, 1:cat color)");
INSERT INTO settings VALUES("503","dateFormat","2","Event date format (1:dd-mm-yyyy, 2:mm-dd-yyyy, 3:yyyy-mm-dd)");
INSERT INTO settings VALUES("504","dateUSorEU","0","Calendar date format (0:Monday, May 14, 2012, 1:Monday 14 May 2012)");
INSERT INTO settings VALUES("505","dateSep","/","Date separator (. - or /)");
INSERT INTO settings VALUES("506","time24","0","Time format (0:12-hour am/pm, 1:24-hour)");
INSERT INTO settings VALUES("507","weekStart","1","Week starts on Sunday(0) or Monday(1)");

CREATE TABLE `users` (
  `user_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `temp_password` varchar(32) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `sedit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `login_0` date NOT NULL DEFAULT '9999-00-00',
  `login_1` date NOT NULL DEFAULT '9999-00-00',
  `login_cnt` int(8) NOT NULL DEFAULT '0',
  `language` varchar(32) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pprivs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("1","Public Access","","","","0","0","9999-00-00","9999-00-00","0","english","","0","0");
INSERT INTO users VALUES("2","Michael Briggs","34a8357b28cbc227d669da7f2380845c","","stratos528@my.uri.edu","1","3","2012-09-29","2012-11-28","214","english","","0","3");
INSERT INTO users VALUES("3","Doctor1","1961e7c35a63e3e19eb0a8d716cc5ff4","","blank@uri.edu","0","2","9999-00-00","9999-00-00","0","english","","-1","0");
INSERT INTO users VALUES("4","radiant","7815ae75b713e9c986cedef1c634bbf4","","radianttester@my.uri.edu","0","1","2012-09-29","2012-10-25","29","english","","-1","0");
INSERT INTO users VALUES("5","radiant2","fa159be018f821e695cac4323a9d91d9","","radiant2@my.uri.edu","0","3","2012-09-30","2012-11-07","22","english","","-1","1");
INSERT INTO users VALUES("6","Doctor2","780aae9460f3d50395e9ea401a16f5cf","","radiant3@my.uri.edu","0","1","9999-00-00","9999-00-00","0","english","","-1","2");
INSERT INTO users VALUES("7","doctor3","c5771df124ed6073ae4e2d09b2b20ac0","","radiant9999@my.uri.edu","0","1","2012-10-07","2012-11-07","23","english","","-1","2");
INSERT INTO users VALUES("8","visionadminassist","358c42feba87f7199f721757a0402069","ae59420b97d4d4c0e33a5a029e3a0b00","visionadminassist@my.uri.edu","0","3","2012-11-05","2012-12-20","13","english","","0","2");
INSERT INTO users VALUES("9","visiondoctor","8e40665225eb7e5c1ad4dd97c034d7cf","","visiondoctor@my.uri.edu","0","2","2012-11-02","2012-12-20","13","english","","0","3");
INSERT INTO users VALUES("10","visioncsadmin","d0511eff5ccb07d70537310402a6c17f","","visioncsadmin@my.uri.edu","1","3","2012-11-02","2013-01-07","17","english","","0","3");
INSERT INTO users VALUES("11","demo","fe01ce2a7fbac8fafaed7c982a04e229","","demo@my.uri.edu","0","3","2012-12-19","2012-12-29","15","english","#FEA838","0","3");


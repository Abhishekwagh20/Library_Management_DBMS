CREATE DATABASE`library`;

USE `library`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookname` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `edition` varchar(200) DEFAULT NULL,
  `noofcopies` varchar(200) DEFAULT NULL,
  `pubdate` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`bookname`,`author`,`edition`,`noofcopies`,`pubdate`) values ('venkat','venkat','venkat','6','2014-10-10');

/*Table structure for table `journal` */

DROP TABLE IF EXISTS `journal`;

CREATE TABLE `journal` (
  `journalname` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `pubdate` varchar(200) DEFAULT NULL,
  `noofcopies` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journal` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `rollno` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`rollno`,`password`,`role`) values ('123456','123456','student'),('admin','admin','admin'),('11111','venkat','student'),('AnandKumar','AnandKumar','student');

/*Table structure for table `magazine` */

DROP TABLE IF EXISTS `magazine`;

CREATE TABLE `magazine` (
  `magazinename` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `pubdate` varchar(200) DEFAULT NULL,
  `noofcopies` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `magazine` */

/*Table structure for table `newbook` */

DROP TABLE IF EXISTS `newbook`;

CREATE TABLE `newbook` (
  `bookname` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `edition` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `newbook` */

insert  into `newbook`(`bookname`,`author`,`edition`,`username`) values ('supraja','supraja','2nd','123456'),('c language','supraja','2nd','123456');

/*Table structure for table `reserve` */

DROP TABLE IF EXISTS `reserve`;

CREATE TABLE `reserve` (
  `bookname` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `edition` varchar(200) DEFAULT NULL,
  `noofcopies` varchar(200) DEFAULT NULL,
  `pubdate` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reserve` */

insert  into `reserve`(`bookname`,`author`,`edition`,`noofcopies`,`pubdate`,`username`,`status`) values ('venkat','venkat','venkat','9','2014-10-10','AnandKumar','processing'),('supraja','supraja','supraja','4','2014-10-10','AnandKumar','processing'),('c language','supraja','2nd','5','2014-10-09','123456','processing'),('venkat','venkat','venkat','7','2014-10-10','123456','processing');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `rollno` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `section` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `resident` varchar(200) DEFAULT NULL,
  `addresses` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`fname`,`lname`,`rollno`,`branch`,`section`,`email`,`password`,`phone`,`resident`,`addresses`,`role`) values ('venkat','rao','123456','cse','1','takeoff@gmail.com','123456','102','hostel','hyd','student'),('venkat','venkat','11111','cse','cse','venkat@gmail.com','venkat','9030333433','hostel','hyd','student'),('AnandKumar','AnandKumar','AnandKumar','AnandKumar','AnandKumar','AnandKumar@gmail.com','AnandKumar','9642185016','hostel','AnandKumar','student');

/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.1.30-community : Database - ebookservice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ebookservice` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ebookservice`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bimg` varchar(255) DEFAULT NULL,
  `bmrp` bigint(20) NOT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `bpage` int(11) NOT NULL,
  `bpublisheddate` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `written` varchar(255) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `FKbg6jtoie2bsb7seehvaadm0n7` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`bid`,`bimg`,`bmrp`,`bname`,`bpage`,`bpublisheddate`,`pdf`,`written`,`categories_id`) values 
(5,'let hal white.jpg',180,'Let Hal White',130,'2021-01-10','Relocation.docx','tanu',3),
(2,'topten.jpg',100,'Top Ten',200,'2021-01-10','Employment.docx','Shikha',2),
(3,'deep work.jpg',700,'Deep Work',160,'2021-01-15','Notes.docx','tanu',1),
(4,'the good detective.jpg',100,'The Good detective',100,'2021-01-15','Recipes.docx','tanu',2),
(6,'brave.jpg',500,'Brave',130,'2021-01-08','Checking.docx','Shikha',1),
(7,'sher lock holmes.jpg',180,'Sher Lock Holmes',320,'2021-01-08','Y Newsletter.docx','Shikha',3);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`cname`) values 
(1,'Romantic'),
(2,'Sad'),
(3,'Horror');

/*Table structure for table `orderproduct` */

DROP TABLE IF EXISTS `orderproduct`;

CREATE TABLE `orderproduct` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bauthor` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `bpage` bigint(20) NOT NULL,
  `bprice` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL,
  `orderid` int(11) NOT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipnumber` bigint(20) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `orderproduct` */

insert  into `orderproduct`(`bid`,`bauthor`,`bname`,`bpage`,`bprice`,`email`,`landmark`,`location`,`mobile`,`orderid`,`shipaddress`,`shipname`,`shipnumber`,`uname`) values 
(8,'shikha','New',120,'200','vivekauthor@gmail.com','bhopal','bhopal',1234,20026,'chitrakoot','shikha',123456,'shikha'),
(1,'shikha','New',120,'200','vivekauthor@gmail.com','bhopal','bhopal',1234,20026,'chitrakoot','shikha',123456,'shikha'),
(7,'tanu','Let Hal White',130,'180','vivekreader@gmail.com','bhopal tourist','Bhopal',1234567890,20025,'chitrakoot','vivek',6458912365,'vivek raikawar');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `adminstatus` varchar(255) DEFAULT NULL,
  `custstatus` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`address`,`adminstatus`,`custstatus`,`email`,`mobile`,`pass`,`uname`) values 
(1,'chitrakoot','admin','admin','vivekadmin@gmail.com',1234567890,'yash','vivek admin'),
(2,'bhopal','notadmin','author','shikhaauthor@gmail.com',9876543210,'yash','shikha author'),
(3,'bhopal','notadmin','reader','shikhareader@gmail.com',123456789,'yash','shikha reader'),
(4,'bhopal','notadmin','author','tanuauthor@gmail.com',1236547890,'yash','tanu author'),
(5,'chitrakoot','notadmin','reader','vivekreader@gmail.com',1234567890,'yash','vivek raikawar'),
(6,'chitrakoot','notadmin','author','vivekauthor@gmail.com',123456789,'yash','vivek author');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

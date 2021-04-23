/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.12-log : Database - ekerjaya
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `bidang` */

DROP TABLE IF EXISTS `bidang`;

CREATE TABLE `bidang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namabidang` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `bidang` */

insert  into `bidang`(`id`,`namabidang`) values (1,'ACTUARIAL MATHEMATICS AND STATISTICS'),(2,'ALAM SEKITAR INDUSTRI'),(3,'ANALISA SISTEM'),(4,'ASTRONOMI'),(5,'AUDIOLOGI'),(6,'BIOLOGI'),(7,'BIOLOGI - MIKROBIOLOGI'),(8,'BIOLOGI AKUATIK'),(9,'COMPUTING FOR BUSINESS'),(10,'EKOLOGI'),(11,'EKONOMI DENGAN KOMUNIKASI'),(12,'ELECTRICAL EQUIPMENT & INSTALLATION TECH'),(13,'ELEKTRONIK INDUSTRI'),(14,'GEOLOGI DAN EKONOMI'),(15,'GRAPHIC DESIGN'),(16,'	KESIHATAN PERSEKITARAN'),(17,'	MATEMATIK INDUSTRI'),(18,'MATEMATIK , STATISTIK DAN KOMPUTER'),(19,'MATEMATIK & KOMPUTER SERTA PENDIDIKAN'),(20,'	NUTRITION');

/*Table structure for table `iklan` */

DROP TABLE IF EXISTS `iklan`;

CREATE TABLE `iklan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organisasi` varchar(255) NOT NULL,
  `jawatan` varchar(255) NOT NULL,
  `tarikhtamat` date DEFAULT NULL,
  `keterangan` text,
  `papar` varchar(10) DEFAULT NULL,
  `failiklan` varchar(100) DEFAULT NULL,
  `bidang` varchar(3) DEFAULT NULL,
  `kelulusan` varchar(3) DEFAULT NULL,
  `tpengalaman` varchar(3) DEFAULT NULL,
  `kemahiran` varchar(3) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `iklan` */

insert  into `iklan`(`id`,`organisasi`,`jawatan`,`tarikhtamat`,`keterangan`,`papar`,`failiklan`,`bidang`,`kelulusan`,`tpengalaman`,`kemahiran`,`createdate`) values (1,'Alpha Base Sdn.Bhd','Juru Analisis Sistem','2013-12-20','sdsdsdsd','Ya','','18','6','1',NULL,'2013-11-20 00:20:53'),(2,'Serpona Jaya Sdn.Bhd','Juru Teknikal','2014-01-31','Keterangan Jawatan Keterangan Jawatan Keterangan Jawatan Keterangan Jawatan','Ya','','18','6','2','2','2013-12-09 22:30:43'),(3,'Amble Action SdnBhd','1.	IT SYSTEM SUPPORT','2014-05-30','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Ya','','13','6','3','2','2014-03-18 21:11:07');

/*Table structure for table `jawapan_iklan` */

DROP TABLE IF EXISTS `jawapan_iklan`;

CREATE TABLE `jawapan_iklan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iklan_id` int(11) NOT NULL,
  `soalan_id` int(11) NOT NULL,
  `pemohon_id` int(11) NOT NULL,
  `jawapan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `jawapan_iklan` */

insert  into `jawapan_iklan`(`id`,`iklan_id`,`soalan_id`,`pemohon_id`,`jawapan`) values (17,2,2,3,'ere erereeeeeee eeeee'),(18,2,3,3,'rer    rrrrr ttttt');

/*Table structure for table `kelulusan` */

DROP TABLE IF EXISTS `kelulusan`;

CREATE TABLE `kelulusan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tahap` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `kelulusan` */

insert  into `kelulusan`(`id`,`tahap`) values (1,'PMR/SRP'),(2,'SPM/SPM(V)/SPVM'),(3,'STPM/STP'),(4,'SIJIL'),(5,'DIPLOMA'),(6,'IJAZAH'),(7,'SARJANA'),(8,'PHD');

/*Table structure for table `kemahiran` */

DROP TABLE IF EXISTS `kemahiran`;

CREATE TABLE `kemahiran` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kemahiran` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kemahiran` */

insert  into `kemahiran`(`id`,`kemahiran`) values (1,'Berkemahiran dalam  perisian  komputer'),(2,'Berkemahiran dalam Perkakasan komputer'),(3,'Berkemahiran dalam rangkaian komputer');

/*Table structure for table `maklumat_tambahan` */

DROP TABLE IF EXISTS `maklumat_tambahan`;

CREATE TABLE `maklumat_tambahan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(10) NOT NULL,
  `tpengalaman` int(2) NOT NULL,
  `namarujukan` varchar(128) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jawatan` varchar(128) DEFAULT NULL,
  `telefon` varchar(25) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `maklumat_tambahan` */

insert  into `maklumat_tambahan`(`id`,`pemohon_id`,`tpengalaman`,`namarujukan`,`alamat`,`jawatan`,`telefon`,`createdate`) values (1,3,2,'Johari Adilah','Jalan 234, Bayan Lepas P.Pinang','Ketua Bahagian','0134569834','2013-11-21 12:33:46');

/*Table structure for table `pemohon` */

DROP TABLE IF EXISTS `pemohon`;

CREATE TABLE `pemohon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namapemohon` varchar(255) NOT NULL,
  `jantina` varchar(10) NOT NULL,
  `tarikhlahir` date DEFAULT NULL,
  `alamat` text,
  `keturunan` varchar(25) DEFAULT NULL,
  `warganegara` varchar(50) DEFAULT NULL,
  `telefon` varchar(10) DEFAULT NULL,
  `emel` varchar(25) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pemohon` */

insert  into `pemohon`(`id`,`namapemohon`,`jantina`,`tarikhlahir`,`alamat`,`keturunan`,`warganegara`,`telefon`,`emel`,`createdate`) values (1,'Kamal Jamaludin','Lelaki','1985-08-15','No 56 Jalan Indah Kembara, 31200 Seberang Jaya Pulau Pinang','Melayu','Malaysia','018765345','kamal@yahoo.com','2013-11-20 20:23:52'),(3,'Jamal Harun','Lelaki','1985-08-28','No 33 Jalan Indah Kembara, 31200 Seberang Jaya Pulau Pinang','Melayu','Malaysia','018763333','jamal@yahoo.com','2013-11-20 21:24:31'),(4,'Kamala Johari','Lelaki','1985-08-15','Alamat AlamatAlamat Alamat Alamat\r\nAlamat Alamat','Melayu','Malaysia','018764444','kamala@yahoo.com','2013-12-10 23:59:35');

/*Table structure for table `pengajian` */

DROP TABLE IF EXISTS `pengajian`;

CREATE TABLE `pengajian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(5) NOT NULL,
  `graduasi` varchar(5) NOT NULL,
  `kelulusan` varchar(2) DEFAULT NULL,
  `pngk` varchar(5) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `bidang` varchar(2) DEFAULT NULL,
  `kemahiran` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pengajian` */

insert  into `pengajian`(`id`,`pemohon_id`,`graduasi`,`kelulusan`,`pngk`,`institusi`,`bidang`,`kemahiran`,`status`,`createdate`) values (1,3,'2008','6','3.11','Universiti Utara Malaysia','18','1','1','2013-11-21 12:08:48');

/*Table structure for table `pengalaman_kerja` */

DROP TABLE IF EXISTS `pengalaman_kerja`;

CREATE TABLE `pengalaman_kerja` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(10) NOT NULL,
  `majikan` varchar(128) NOT NULL,
  `alamat` text,
  `jawatan` varchar(128) DEFAULT NULL,
  `pengalaman` text,
  `tarikhmkerja` date DEFAULT NULL,
  `tarikhtkerja` date DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pengalaman_kerja` */

insert  into `pengalaman_kerja`(`id`,`pemohon_id`,`majikan`,`alamat`,`jawatan`,`pengalaman`,`tarikhmkerja`,`tarikhtkerja`,`createdate`) values (1,3,'Solution One Sdn.Bhd','No 11, Jalan Kekwa 11300 Bayan Lepas, Penang','Pengawai Urus Awam','Pentadbiran','2009-11-10','0000-00-00','2013-11-21 12:27:02');

/*Table structure for table `permohonan` */

DROP TABLE IF EXISTS `permohonan`;

CREATE TABLE `permohonan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pemohon_id` int(11) unsigned NOT NULL,
  `iklan_id` int(11) unsigned NOT NULL,
  `status` varchar(128) DEFAULT 'Baru',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `permohonan` */

insert  into `permohonan`(`id`,`pemohon_id`,`iklan_id`,`status`,`created`) values (2,3,2,'terima','2013-12-10 00:07:51'),(3,3,1,'Baru','2014-03-13 20:00:58'),(4,3,1,'Baru','2014-03-13 20:01:31');

/*Table structure for table `soalan_iklan` */

DROP TABLE IF EXISTS `soalan_iklan`;

CREATE TABLE `soalan_iklan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iklan_id` int(10) NOT NULL,
  `soalan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `soalan_iklan` */

insert  into `soalan_iklan`(`id`,`iklan_id`,`soalan`) values (2,2,'test test test'),(3,2,'test 2'),(4,3,'Sila nyatakan lulusan bidang pengajian anda yang tertinggi');

/*Table structure for table `status_pengajian` */

DROP TABLE IF EXISTS `status_pengajian`;

CREATE TABLE `status_pengajian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `status_pengajian` */

insert  into `status_pengajian`(`id`,`status`) values (1,'Telah Tamat'),(2,'Pengajian Tahun Akhir');

/*Table structure for table `tahun_pengalaman` */

DROP TABLE IF EXISTS `tahun_pengalaman`;

CREATE TABLE `tahun_pengalaman` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tahun_pengalaman` */

insert  into `tahun_pengalaman`(`id`,`tahun`) values (1,'Tiada'),(2,'Kurang daripada 1 Tahun'),(3,'Kurang daripada 2 Tahun'),(4,'Kurang daripada 5 Tahun'),(5,'Lebih daripada 5 Tahun');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123',
  `usertype` int(1) NOT NULL DEFAULT '0',
  `pemohon_id` int(10) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`usertype`,`pemohon_id`,`createdate`) values (1,'admin','admin',1,NULL,'2013-11-20 21:19:21'),(2,'jamal','123',0,3,'2013-11-20 21:24:31'),(3,'kamal','123',0,1,'2013-11-20 21:33:04'),(4,'kamala','123',0,4,'2013-12-10 23:59:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

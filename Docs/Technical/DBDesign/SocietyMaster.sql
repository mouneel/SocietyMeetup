SELECT * FROM mysociety.societymaster;CREATE TABLE `societymaster` (
  `tenantid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `SocietyName` varchar(45) DEFAULT NULL,
  `ShortName` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `SocietyEmail` varchar(45) DEFAULT NULL,
  `SocietyContants` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `SoceityAddress` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `RegistrationNo` varchar(45) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL,
  `SocietyContacts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tenantid`),
  UNIQUE KEY `tenantid_UNIQUE` (`tenantid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
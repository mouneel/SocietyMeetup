CREATE TABLE `societymaster` (
  `tenantid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `SocietyName` varchar(45) DEFAULT NULL,
  `ShortName` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `SocietyAddress` varchar(255) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `SocietyContacts` varchar(255) DEFAULT NULL,
  `SocietyEmail` varchar(45) DEFAULT NULL,
  `RegistrationNo` varchar(45) DEFAULT NULL,
  `RegistrationDate` date DEFAULT NULL,
  PRIMARY KEY (`tenantid`),
  UNIQUE KEY `tenantid_UNIQUE` (`tenantid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

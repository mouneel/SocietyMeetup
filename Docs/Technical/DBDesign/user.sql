CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `OtherContacts` varchar(100) DEFAULT NULL,
  `AlternativeAddress` varchar(100) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `BloodGroup` varchar(45) DEFAULT NULL,
  `Hobbies` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

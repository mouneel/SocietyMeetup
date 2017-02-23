CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
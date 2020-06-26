use prueba;

CREATE TABLE `doctor` (
  `doctorid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `midname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `secondlastname` varchar(30) DEFAULT NULL,
  `specialityid` int(11) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthdate` date NOT NULL,
  PRIMARY KEY (`doctorid`,`specialityid`),
  KEY `fk_speciality` (`specialityid`),
  CONSTRAINT `fk_speciality` FOREIGN KEY (`specialityid`) REFERENCES `speciality` (`specialityid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

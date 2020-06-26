use prueba;


CREATE TABLE `patient` (
  `patientid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `midname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `secondlastname` varchar(30) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `dpi` varchar(20) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `phonenumber` varchar(16) DEFAULT NULL,
  `emailaddress` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

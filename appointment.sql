use prueba;

CREATE TABLE `appointment` (
  `appointmentid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid` int(11) NOT NULL,
  `doctorid` int(11) NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `nextdate` datetime DEFAULT NULL,
  `remarks` varchar(512) DEFAULT NULL,
  `attachments` binary(1) DEFAULT NULL,
  PRIMARY KEY (`appointmentid`),
  KEY `fk_doctorid` (`doctorid`),
  KEY `fk_patientid` (`patientid`),
  CONSTRAINT `fk_doctorid` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`doctorid`),
  CONSTRAINT `fk_patientid` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;


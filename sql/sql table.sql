CREATE TABLE student_planner.teachers (
  idteacher INT NOT NULL,
  name VARCHAR(45) NULL,
  officehours VARCHAR(45) NULL,
  room VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  PRIMARY KEY (idteacher)
);
  
CREATE TABLE student_planner.classes (
  idclasses INT NOT NULL,
  idteacher INT NULL,
  idsubject INT NOT NULL,
  room VARCHAR(45) NULL,
  building VARCHAR(45) NULL,
  time DATETIME NOT NULL,
  PRIMARY KEY (idclasses),
    FOREIGN KEY (idteacher) REFERENCES teachers(idteacher),
	FOREIGN KEY (idsubject) REFERENCES subject(idsubject)
	);

CREATE TABLE student_planner.subjects (
  idsubject INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NOT NULL,
  PRIMARY KEY (idsubject)
	);



CREATE TABLE assignment (
  idassignment int NOT NULL AUTO_INCREMENT,
  duedate datetime NOT NULL,
  idsubject int NOT NULL,
  title varchar(45) NOT NULL,
  detail text,
  PRIMARY KEY (idassignment),
  CONSTRAINT assignment_ibfk_1 FOREIGN KEY (idsubject) REFERENCES subjects (idsubject) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE student_planner.to-do (
  idto-do INT NOT NULL,
  title VARCHAR(45) NOT NULL,
  detail TEXT(255) NULL,
	duedate DATETIME NOT NULL,
  PRIMARY KEY (idto-do));

CREATE TABLE student_planner.exams (
  idexams INT NOT NULL,
  idsubject INT NOT NULL,
  date DATETIME NOT NULL,
  duration INT(3) NOT NULL,
  room VARCHAR(45) NOT NULL,
  seat VARCHAR(45) NOT NULL,
  PRIMARY KEY (idexams),
	FOREIGN KEY (idsubject) REFERENCES subjects(idsubject)
);

CREATE TABLE student_planner.grades (
	idsubject INT NOT NULL AUTO_INCREMENT,
	grade VARCHAR(5),
	FOREIGN KEY (idsubject) REFERENCES subjects(idsubject)
);


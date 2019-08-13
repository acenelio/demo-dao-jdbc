CREATE TABLE department (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE seller (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(60) NOT NULL,
  Email varchar(100) NOT NULL,
  BirthDate datetime(6) NOT NULL,
  BaseSalary double NOT NULL,
  DepartmentId int(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (DepartmentId) REFERENCES department (id)
);

INSERT INTO department VALUES 
  (1,'Computers'),
  (2,'Electronics'),
  (3,'Fashion'),
  (4,'Books');

INSERT INTO seller VALUES 
  (1,'Bob Brown','bob@gmail.com','1998-04-21 00:00:00',1000,1),
  (2,'Maria Green','maria@gmail.com','1979-12-31 00:00:00',3500,2),
  (3,'Alex Grey','alex@gmail.com','1988-01-15 00:00:00',2200,1),
  (4,'Martha Red','martha@gmail.com','1993-11-30 00:00:00',3000,4),
  (5,'Donald Blue','donald@gmail.com','2000-01-09 00:00:00',4000,3),
  (6,'Alex Pink','bob@gmail.com','1997-03-04 00:00:00',3000,2);

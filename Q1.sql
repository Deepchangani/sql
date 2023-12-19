CREATE DATABASE Class;
USE Class;

CREATE TABLE Student(
roll_no int PRIMARY KEY,
name text not null,
branch text
);

CREATE TABLE Exam(
roll_no int,
S_code varchar(20),
marks int,
P_code varchar(20),
foreign key(roll_no) references Student(roll_no)
);



INSERT INTO Student(roll_no,name,branch)VALUES
(1,"jay","COMPUTER SCIENCE"),
(2,"Suhani","ELECTRONIC AND COMP"),
(3,"Kirti","ELECTRONIC AND COMP");

SELECT * FROM Student,Exam;
SELECT * FROM Exam;

INSERT INTO Exam(roll_no,S_code,marks,P_code)VALUES
(1,"CS11",50,"CS"),
(1,"CS12",60,"CS"),
(2,"EC101",66,"EC"),
(2,"EC102",70,"EC"),
(3,"EC101",45,"EC"),
(3,"EC102",50,"EC");




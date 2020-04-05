-- CREATE TABLE DEPARTMENT(
-- 	DepartmentName char(20) PRIMARY KEY NOT NULL,
--     HotLine char(4)
-- );

-- CREATE TABLE COURSE(
-- 	CourseNo char(4) PRIMARY KEY NOT NULL,
--     CourseName char(20),
--     MasterName char(10),
--     DepartmentName char(20) NOT NULL,
--     FOREIGN KEY (DepartmentName) REFERENCES DEPARTMENT(DepartmentName)
-- );

-- CREATE TABLE STUDENT(
-- 	StudentNo char(9) PRIMARY KEY NOT NULL,
--     Name char(20),
-- 	Age int,
--     DepartmentName char(20) NOT NULL,
--     City char(20),
--     Salary int,
--     CourseNo char(4) NOT NULL,
--     FOREIGN KEY (DepartmentName) REFERENCES DEPARTMENT(DepartmentName),
--     FOREIGN KEY (CourseNo) REFERENCES COURSE(CourseNo)
-- );

-- -- 데이터 삽입 --
-- INSERT INTO DEPARTMENT VALUES("Computer Science", "0114");
-- INSERT INTO DEPARTMENT VALUES("Mathematical", "7013");
-- INSERT INTO DEPARTMENT VALUES("Electronic", "4665");
-- INSERT INTO DEPARTMENT VALUES("Historic", "7894");

-- INSERT INTO COURSE VALUES("1111", "Database", "Bob", "Computer Science");
-- INSERT INTO COURSE VALUES("1112", "Database", "Bob", "Computer Science");
-- INSERT INTO COURSE VALUES("1113", "Database", "Sarah", "Computer Science");
-- INSERT INTO COURSE VALUES("2111", "Computer_Programming", "Sahra", "Computer Science");
-- INSERT INTO COURSE VALUES("2112", "Computer_Programming", "Sahra", "Computer Science");
-- INSERT INTO COURSE VALUES("3111", "Linear_Discriment", "Jordan", "Mathematical");
-- INSERT INTO COURSE VALUES("3112", "Historical", "Jordan", "Historic");

-- INSERT INTO STUDENT VALUES("201355678", "Kobo Bryant", 26, "Computer Science", "New York", 50000, "1111");
-- INSERT INTO STUDENT VALUES("201387541", "James", 26, "Mathematical", "Chicago", 30000, "3111");
-- INSERT INTO STUDENT VALUES("201351764", "Micheal Jordan", 25, "Electronic", "Chicago", 40000, "2112");
-- INSERT INTO STUDENT VALUES("201431549", "Curry", 25, "Computer Science", "Maimi", 60000, "1111");
-- INSERT INTO STUDENT VALUES("201400246", "Tompson", 24, "Electronic", "Golden State", 10000, "3111");
-- INSERT INTO STUDENT VALUES("201597516", "Dwayne Wade", 24, "Computer Science", "Miami", 0, "3112");
-- INSERT INTO STUDENT VALUES("201649751", "Andre Drummond", 24, "Computer Science", "HOU", 20000, "1112");
-- INSERT INTO STUDENT VALUES("201761547", "Yogi Ferrell", 23, "Electronic", "Chicago", 25000, "2112");
-- INSERT INTO STUDENT VALUES("201765212", "Chris Paul", 22, "Computer Science", "HOU", 46000, "1113");
-- INSERT INTO STUDENT VALUES("201702148", "James", 22, "Computer Science", "CLA", 50000, "2111");
-- INSERT INTO STUDENT VALUES("201721349", "Curry", 21, "Mathematical", "Golden State", 47000, "3112");

-- 테이블 출력 --
-- SELECT * FROM STUDENT;
-- SELECT * FROM DEPARTMENT;
-- SELECT * FROM COURSE;

-- 문제 --
#SELECT COUNT(*) FROM STUDENT WHERE DepartmentName="Computer Science";
#select StudentNo, Name from student where Salary>=30000;
#select Name from student where Name like 'C%';
#select StudentNo, Name from student where (Age>=23 and City="Chicago");
#select MasterName from course where DepartmentName = 'Computer Science';
#select HotLine from department where DepartmentName in (select DepartmentName from student where Name in ('Curry'));
#select StudentNo, Name from student where CourseNo in (select CourseNo from course where CourseName='Database');
-- SET SQL_SAFE_UPDATES = 0;
-- update student set Salary=Salary*0.5 where Age>=25;
-- select * from student;
#delete from student where CourseNo in (select CourseNo from course where MasterName='Jordan');
#select * from student;

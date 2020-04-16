-- SELECT StudentNo, Name
-- FROM STUDENT
-- GROUP BY DepartmentName;

-- SELECT StudentNo, Name
-- FROM STUDENT
-- WHERE age>=25
-- ORDER BY Salary DESC;

-- SELECT *
-- FROM STUDENT INNER JOIN COURSE ON STUDENT.CourseNo = COURSE.CourseNo
-- GROUP BY COURSE.MasterName
-- HAVING Salary >= 46000;

-- SELECT *
-- FROM COURSE
-- WHERE DepartmentName = 'Computer Science'
-- ORDER BY CourseName;

-- SELECT *
-- FROM STUDENT INNER JOIN DEPARTMENT 
-- ON STUDENT.DepartmentName = DEPARTMENT.DepartmentName
-- GROUP BY Age
-- HAVING Salary >= 25000
-- ORDER BY HotLine;
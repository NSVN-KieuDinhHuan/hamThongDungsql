
USE QuanLySinhVien;
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Students
GROUP BY Address;
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Students S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 8;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Students S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
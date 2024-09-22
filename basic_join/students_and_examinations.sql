SELECT S.student_id, S.student_name, Subjects.subject_name,
COUNT(E.subject_name) AS attended_exams
FROM Students S
CROSS JOIN Subjects
LEFT JOIN Examinations E ON S.student_id=E.student_id AND Subjects.subject_name = e.subject_name
GROUP BY S.student_id, S.student_name,Subjects.subject_name
ORDER BY s.student_id, Subjects.subject_name
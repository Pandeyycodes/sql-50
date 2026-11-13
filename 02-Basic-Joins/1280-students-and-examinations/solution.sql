
Select s.student_id,s.student_name,s1.subject_name,count(e.subject_name) as attended_exams
from students s cross join subjects s1
left join examinations e 
on s.student_id = e.student_id and s1.subject_name = e.subject_name 
GROUP BY s.student_id, s.student_name, s1.subject_name
ORDER BY s.student_id, s1.subject_name;

-- CROSS JOIN creates all possible student-subject combinations.
-- LEFT JOIN keeps all combinations, even if no exam was attended.
-- ON matches records using student_id and subject_name.
-- COUNT(e.subject_name) counts only actual exam records and ignores NULL.
-- GROUP BY calculates the exam count for each student and subject.
-- ORDER BY sorts first by student_id, then subject_name alphabetically.

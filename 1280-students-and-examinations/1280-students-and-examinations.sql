# Write your MySQL query statement below

select s.student_id,s.student_name,sb.subject_name,count(e.student_id) As attended_exams
from Students s 
CROSS JOIN Subjects sb
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sb.subject_name = e.subject_name
group by s.student_id,s.student_name,sb.subject_name
ORDER BY 
    s.student_id,
    sb.subject_name;

-- SELECT 
--     s.student_id,
--     s.student_name,
--     sub.subject_name,
--     COUNT(e.student_id) AS attended_exams
-- FROM Students s
-- CROSS JOIN Subjects sub
-- LEFT JOIN Examinations e
--     ON s.student_id = e.student_id
--     AND sub.subject_name = e.subject_name
-- GROUP BY 
--     s.student_id,
--     s.student_name,
--     sub.subject_name



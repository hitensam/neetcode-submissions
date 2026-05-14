-- Write your query below
select student_id, exam_id, score
from
(
    select student_id, exam_id, score,
    ROW_NUMBER() OVER (
            PARTITION BY student_id
            ORDER BY score DESC, exam_id ASC
        ) AS rn
    FROM exam_results
)
 where rn = 1
 order by student_id;
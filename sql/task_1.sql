
select name,mark,subject from students_marks_subjects s1 
    where subject='Java' and mark >= 85 
and not exists 
    (select * from students_marks_subjects s2 
        where s1.stid=s2.stid and subject <> 'Java' and mark > 85)


select name from students_marks_subjects s1 
where 
    (select mark from students_marks_subjects s2 
        where s1.stid=s2.stid and subject = 'React') >
    (select mark from students_marks_subjects s3 
        where s1.stid=s3.stid and subject = 'Java') GROUP BY name;
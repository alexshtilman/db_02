
select name,subject,mark from students_marks_subjects s1 
where not exists 
    (select * from students_marks_subjects s2 
        where s1.stid=s2.stid and subject= 'Java Technologies')
create  view students_marks_subjects as
SELECT  s.stid,
        sb.suid,
        s.name,
        sb.subject,
        m.mark
FROM    students s
    JOIN marks m ON s.stid = m.stid
    JOIN subjects sb ON m.suid = sb.suid;
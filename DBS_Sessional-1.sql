1.
select name, dept_name
from student1

2.
select name
from instructor
where dept_name='Comp. Sci.'

3.
(select c.course_id, title
from takes t, course c
where semester='Fall' and year=2009 and t.course_id=c.course_id)
union
(select c.course_id, title
from takes t, course c
where semester='Spring' and year=2010 and t.course_id=c.course_id) 

4.
(select c.course_id, title
from takes t, course c
where semester='Fall' and year=2009 and t.course_id=c.course_id)
intersect
(select c.course_id, title
from takes t, course c
where semester='Spring' and year=2010 and t.course_id=c.course_id)

5.
select count(teaches.id)
from teaches, instructor
where instructor.id=teaches.id and semester='Spring' and year=2010

6.
select title, count(s.id) as no_of_students
from course c, takes t, student1 s
where s.id=t.id and c.course_id=t.course_id
group by title

7.
select dept_name, count(course_id) as no_of_courses
from course
group by dept_name

8.

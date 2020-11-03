teaches_subject(teachermath1,math).
teaches_subject(teachermath2,math).
teaches_subject(teacherdsa,dsa).
teaches_subject(teacherppl1,ppl).
teaches_subject(teacherppl2,ppl).
teaches_subject(teacherdld,dld).
teaches_subject(teacherdtl,dtl).

dept_has_subject(math_dept,math).
dept_has_subject(comp_dept,dsa).
dept_has_subject(comp_dept,ppl).
dept_has_subject(comp_dept,dtl).

dept_has_student(comp_dept,student1).
dept_has_student(comp_dept,student2).
dept_has_student(comp_dept,student3).
dept_has_student(math_dept,student1).
dept_has_student(math_dept,student2).


dept_has_faculty(D,F) :- teaches_subject(F,SB) , dept_has_subject(D,SB).
student_studies_subject(ST,SB) :- dept_has_student(D,ST) , dept_has_subject(D,SB).
student_studies_underfaculty(ST,F) :- dept_has_subject(D,SB) , dept_has_student(D,ST) , teaches_subject(F,SB).
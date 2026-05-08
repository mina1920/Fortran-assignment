program student_report
implicit none
integer,dimension(10):scores=(/85,62,45,91,38,74,55,88,61,47/) !this is a one dimensional array, thus the elements can be assigned values directly.
integer::i
character::grade
character(len=12)::remark
print*
print*,'scores   grade   remark'
print*,'---------------------------------'
!the table headings were not printed inside the loop because it was only to be printed once and not repeatedly.
do i=1,10
   if (scores(i) >=80) then    !scores(i) instead of scores because the code is dealing with a list of individual students scores, hence the loop processes it one by one.
   grade='A'                 !'A' and 'distinction' were declared but not assigned to their varaibles. to assign them, their variables are stated before the values. 
   remark='distinction'
   else if (scores >=60) then
   grade='B'
   remark='credit'
   else if (scores >=40) then
   grade='C'
   remark='pass'
   else if (scores >=0) then 
   grade='F'
   remark='fail'
   end if
   !print*, was omitted in the loop. this is because values are being assigned to the variables then a formatted output will be used to print out the results.
print'(I3,5x,A1,8x,A12)', scores(i),  grade,  remark
!a formatted print statement is of the form print'()',.... instead of print*, 
!the formatted output statement was changed because the original format statement did not match the variables correctly, thus I5 was omitted. scores(i), integer represented by I3,grade was character represented by A1 and remark character represented by A12.
end do      !comes after formatted output because the formatted output must remain in the loop and must repat for every student within the loop.
end program student_report
   


!mensah wilhelmina
!6310824

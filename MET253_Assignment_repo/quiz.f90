program student_report
implicit none
integer::i
integer,dimension(10)::scores=(/85,62,45,91,38,74,55,88,61,47/)
character::grade
character(len=12)::remark
print*,'scores   grades   remarks'
print*,'--------------------------------'
do i=1,10
   if (scores(i) >=80) then
      grade='A'
      remark='distinction'
   else if (scores(i) >=60) then
       grade='B'
       remark='credit'
   else if (scores(i) >=40) then
       grade='C'
       remark='pass'
   else 
       grade='F'
       remark='fail'
   end if
   print*,'(I2,5X,A1,5X,A12)',scores(i), grade, remark
   end do
end program student_report
   


!Mensah wilhelmina
!6310824

program adt

   use eqobject_abs_mod
   use stringeq_mod

   implicit none

   type(stringeq) :: o1, o2

   print *, "testing adt"

   o1 % chars = "adf"
   o2 % chars = "ijkl"
   call tester(o1, o2)
   o1 % chars = "asdf"
   call tester(o1, o2)
   o2 % chars = "asd"
   call tester(o1, o2)
   o2 % chars = "asdf"
   call tester(o1, o2)

   print *, "done testing adt"

contains

   subroutine tester(s, t)
      type(stringeq), intent(in) :: s, t
      print *, s == t, s % chars, t % chars
   end subroutine tester

end program adt

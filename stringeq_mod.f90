module stringeq_mod
   use eqobject_abs_mod
   implicit none

   type, extends(eqobject_abs) :: stringeq
      character(:), allocatable :: chars
   contains
      procedure :: eq_object => eq_object_stringeq
   end type stringeq

contains

   logical function eq_object_stringeq(self, other)
      !< true if self and other are the same type and contains the same chars
      class(stringeq), intent(in) :: self
      class(eqobject_abs), intent(in) :: other

      class(stringeq), pointer :: pstringeq

      select type (obj => other) !< cast type
      type is (stringeq)
         pstringeq => obj
      class default
         ! error (or false), different types
         write (*, *) "Unexpected type found"
         stop 1
      end select

      eq_object_stringEq = (self % chars == pstringeq % chars)
   end function eq_object_stringeq

end module stringeq_mod

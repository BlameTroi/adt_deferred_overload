module eqobject_abs_mod

   type, abstract :: eqObject_abs
      ! equal unlimited polymorphic type
      ! for non basic types
   contains
      procedure(iface_eq_object), deferred :: eq_object
      generic :: operator(==) => eq_object
   end type eqObject_abs

   abstract interface
      logical function iface_eq_object(self, other)
         !< true if self and other are not the same
         import eqObject_abs
         !< it will evolve according to subtype
         class(eqObject_abs), intent(in) :: self
         class(eqObject_abs), intent(in) :: other
      end function iface_eq_object
   end interface

end module eqobject_abs_mod

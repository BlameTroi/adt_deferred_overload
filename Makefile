# makefile generated with makemake
PROG =	adt

SRCS =	adt.f90 eqobject_abs_mod.f90 stringeq_mod.f90

OBJS =	adt.o eqobject_abs_mod.o stringeq_mod.o

LIBS =	

CC = cc
CXX = c++
CFLAGS = -O
CXXFLAGS = -O
FC = f77
FFLAGS = -O
F90 = gfortran
F90FLAGS = -O
LDFLAGS = 
all: $(PROG)

$(PROG): $(OBJS)
	$(F90) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm -f $(PROG) $(OBJS) *.mod

.SUFFIXES: $(SUFFIXES) .f .f90 .F90 .f95
.SUFFIXES: $(SUFFIXES) .c .cpp .cxx

.f90.o .f95.o .F90.o:
	$(F90) $(F90FLAGS) -c $<

.f.o:
	$(FC) $(FFLAGS) -c $<

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o .cxx.o:
	$(CXX) $(CXXFLAGS) -c $<

adt.o: eqobject_abs_mod.o stringeq_mod.o
stringeq_mod.o: eqobject_abs_mod.o

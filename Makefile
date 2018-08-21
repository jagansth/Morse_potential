FC=gfortran -c
LD=gfortran
SRC=potential.f90 main.f90
OBJ=potential.o main.o
potential:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o potential.x
	rm -rf *.o
clean:
	rm -rf *.o potential.x


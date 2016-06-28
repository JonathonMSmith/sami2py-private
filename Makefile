gf = gfortran -fno-range-check -fno-automatic -ffixed-line-length-none

#
compile:
	$(gf) -c nrlmsise00low.f
	$(gf) -c grid-1.00.f
	$(gf) -c sami2low-1.00.f
	$(gf) -c hwm93.f
	$(gf) -c hwm07e_modified.f90
	$(gf) -c apexcord.f90
	$(gf) -c hwm14.f90
	$(gf) -o sami2low.x sami2low-1.00.o grid-1.00.o hwm93.o hwm07e_modified.o  hwm14.o apexcord.o nrlmsise00low.o 

#
clean: 
	rm *.x *.o *.mod    

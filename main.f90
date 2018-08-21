program main
  implicit none
  real(8) D, a, xe, x, x_min, x_max, h
  integer(4) i, nSteps
  real(8), external :: potential
  real(8), parameter :: Lse = 1.0d-9
  real(8), parameter :: Ese = 1.60217662d-19
  open(1,file='in.dat',action='read')
  open(2,file='potential.dat',action='write')
  read(1,*) D
  read(1,*) a
  read(1,*) xe
  read(1,*) x_min
  read(1,*) x_max
  read(1,*) nSteps
  close (1)
  h=abs(x_max-x_min)/dble(nSteps)
!  D=D*Ese
!  a=a*Lse
   do i=0, nSteps
     x=x_min+dble(i)*h
     write(2,10) x, potential(D, a, x, xe)
   end do
   close(2)
  10 format(f8.4, f15.8)
end program main


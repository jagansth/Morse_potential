function potential(D, a, x, xe)
  implicit none
  real(8) potential
  real(8) D, a, x, xe
  potential=D*(1.0d0-(exp((xe-x)/a)-1.0d0)**2)

end function potential
 


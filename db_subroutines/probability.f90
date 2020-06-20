function probability(t13,dm31,l,x)
 !use neu_osc_parameters,only: t12,t14,t23,t24,t34,dm21,dm41
 use types, only: dp
 implicit none
 real(dp) ::probability
 real(dp) :: t13
 real(dp) :: dm31
 real(dp) :: l,x

 real(dp) :: t12=0.5837630476d0
 !real(dp) :: dm32=2.44D-3
 real(dp) :: dm21=7.53D-5

    probability= 1.0d0 -cos(t13)**4*sin(2.0d0*t12)**2*sin(1.267d0*dm21*l/x)**2   &
                       -sin(2.0d0*t13)**2*sin(1.267d0*dm31*l/x)**2!(cos(t12)**2*sin(1.267d0*dm31*l/x)**2  &
                                     !+sin(t12)**2*sin(1.267d0*dm32*l/x)**2)
    return
end function probability
!################################################
!
!   crossSection is the function that return the
!       value os the cross section for the inverse 
!       beta decay inside the detector [1/cm^2]
!
!################################################
real(8) function crossSection(x)
    implicit none
    real(8) :: x ! Energía del neutrinos
                 ! 1.29 diferencia de masa entre neutron y proton [Fumihiko_page-29]                 
    crossSection = 1.0D-47*(x -1.29D0)*sqrt((x - 1.29D0)**2 - 0.511D0**2)    
                 ! 1.0D-43 [cm^2]  || 1.0D-47 [m^2]
end function crossSection
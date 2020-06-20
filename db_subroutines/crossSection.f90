!################################################
!
!   crossSection is the function that return the
!       value os the cross section for the inverse 
!       beta decay inside the detector [1/cm^2]
!
!################################################
function crossSection(x)
    use types, only: dp
    implicit none
    real(dp) :: crossSection
    real(dp) :: x ! Energía del neutrinos
                 ! 1.29 diferencia de masa entre neutron y proton [Fumihiko_page-29]

    if(x<=1.8010001_dp) then
        print*, 'La energía es menor al threshold de la cross section'
        stop
    else
        crossSection = 1.0D-47*(x -1.29D0)*sqrt((x - 1.29D0)**2 - 0.511D0**2)
    end if       
                 ! 1.0D-43 [cm^2]  || 1.0D-47 [m^2]
end function crossSection
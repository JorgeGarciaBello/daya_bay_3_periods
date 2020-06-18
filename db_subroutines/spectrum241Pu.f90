!################################################
!
!   spectrum241Pu is the spectrum of 
!                 Plutonium-241
!
!################################################
function spectrum241Pu(x) ![#/(MeV fission)]
    use types, only: dp
    implicit none
    real(dp) :: spectrum241Pu
    real(dp) :: x      ! Energía de neutinros
    
    !Espectros de Mueller
    spectrum241Pu = EXP(3.25100D0 -3.20400D0*x + 1.42800D0*x**2 -0.367500D0*x**3 +0.0425400D0*x**4 -0.00189600D0*x**5)
end function spectrum241Pu
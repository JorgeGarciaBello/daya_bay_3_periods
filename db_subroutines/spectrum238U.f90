!################################################
!
!   spectrum238U is the spectrum of Uranium-238
!
!################################################
function spectrum238U(x) ![#/(MeV fission)]
    use types, only: dp
    implicit none
    real(dp) :: spectrum238U
    real(dp) :: x      ! Energía de neutinros

    !Espectros de Mueller
    spectrum238U = EXP(0.483300D0 + 0.192700D0*x - 0.128300D0*x**2 - 0.00676200D0*x**3 +  0.00223300D0*x**4 - 0.000153600D0*x**5)
end function spectrum238U
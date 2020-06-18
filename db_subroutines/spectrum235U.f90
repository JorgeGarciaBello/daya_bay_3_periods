!################################################
!
!   spectrum235U is the spectrum of Uranium-235
!
!################################################
function spectrum235U(x) ![#/(MeV fission)]
    use types, only: dp
    implicit none    
    real(dp) :: spectrum235U
    real(dp) :: x      ! Energía de neutinros
    !Espectros de Mueller
    spectrum235U = EXP(3.21700D0 -3.11100D0*x +1.39500D0*x**2 -0.369000D0*x**3 +0.0444500D0*x**4 -0.00205300D0*x**5)
end function spectrum235U

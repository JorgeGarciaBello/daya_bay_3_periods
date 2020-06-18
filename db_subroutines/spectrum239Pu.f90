!################################################
!
!   spectrum239Pu is the spectrum of 
!                 Plutonium-239
!
!################################################
real(8) function spectrum239Pu(x) ![#/(MeV fission)]
    use types, only: dp
    implicit none
    real(dp) :: x      ! Energía de neutinros

    !Espectros de Mueller
    spectrum239Pu = EXP(6.41300_dp -7.43200_dp*x + 3.53500_dp*x**2 - 0.882000_dp*x**3 + 0.102500_dp*x**4 -0.00455000_dp*x**5)
end function spectrum239Pu
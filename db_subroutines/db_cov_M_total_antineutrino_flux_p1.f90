function db_cov_M_total_antineutrino_flux_p1(bin,k,r,x) ! [1/MeV/s]
    use types, only: dp
    use db_data, only: rand_Nthermalpower_p1, rand_Nfissionfraction_p1,    &
                       rand_Navrgenergyperfission_p1,                      &
                       rand_Nreactorfluxmodel_p1
    implicit none
    real(dp) :: db_cov_M_total_antineutrino_flux_p1
    integer :: bin
    integer :: k
    integer :: r
    real(dp) :: x
    real(dp) :: spectrum235U, spectrum238U,spectrum239Pu, spectrum241Pu    

    db_cov_M_total_antineutrino_flux_p1=0.0_dp
    db_cov_M_total_antineutrino_flux_p1=db_cov_M_total_antineutrino_flux_p1 +           &
        (rand_Nthermalpower_p1(bin,r,k)/rand_Navrgenergyperfission_p1(bin,1,k))*    &
        (rand_Nfissionfraction_p1(bin,1,k))*                                          &        
        spectrum235U(x)                                                                 &
        +                                                                               &
        (rand_Nthermalpower_p1(bin,r,k)/rand_Navrgenergyperfission_p1(bin,1,k))*    &
        (rand_Nfissionfraction_p1(bin,2,k))*                                          &        
        spectrum238U(x)                                                                 &
        +                                                                               &
        (rand_Nthermalpower_p1(bin,r,k)/rand_Navrgenergyperfission_p1(bin,1,k))*    &
        (rand_Nfissionfraction_p1(bin,3,k))*                                          &        
        spectrum239Pu(x)                                                                &
        +                                                                               &
        (rand_Nthermalpower_p1(bin,r,k)/rand_Navrgenergyperfission_p1(bin,1,k))*    &
        (rand_Nfissionfraction_p1(bin,4,k))*                                          &        
        spectrum241Pu(x)

    db_cov_M_total_antineutrino_flux_p1=rand_Nreactorfluxmodel_p1(bin,k)*db_cov_M_total_antineutrino_flux_p1*6.2415D+21
    ! (rand_Nthermalpower_p1) =>  6.2415*1E+21 => [1GW] = [1GJ/s] = [6,2415 × 10^27 eV/s] = [6,2415 × 10^21 MeV/s]   
    return
end function db_cov_M_total_antineutrino_flux_p1
function db_cov_M_expected_antineutrino_spectrum_detector_p1(x,d,bin,k,t13,dmee) ! [1/MeV]
    use types, only: dp
    use db_data, only: RCTS,live_time_days_per_ad
    implicit none
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_p1
    real(dp) :: x                                                            ! Neutrino energy in [MeV]    
    integer  :: d,bin,k                                                    ! the number ot detector
    real(dp) :: t13, dmee                                                    ! are the neutrino oscillation parameters we are interested        
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_reactor_p1
    integer  :: r
        
    db_cov_M_expected_antineutrino_spectrum_detector_p1=0.0_dp
    do r=1,RCTS
        db_cov_M_expected_antineutrino_spectrum_detector_p1=                         &
                                db_cov_M_expected_antineutrino_spectrum_detector_p1+ &
                                db_cov_M_expected_antineutrino_spectrum_detector_reactor_p1(x,d,r,bin,k,t13,dmee) ![#/MeV/s]
    enddo 
    db_cov_M_expected_antineutrino_spectrum_detector_p1 = 86400.0d0*db_cov_M_expected_antineutrino_spectrum_detector_p1* &
                                                                    live_time_days_per_ad(1,d)
                                                          
    ! (rand_Nthermalpower) =>  6.2415*1E+21 => [1GW] = [1GJ/s] = [6,2415 × 10^27 eV/s] = [6s,2415 × 10^21 MeV/s] Al multiplicar por 86400 se transforman los días a segundos
    return
end function db_cov_M_expected_antineutrino_spectrum_detector_p1

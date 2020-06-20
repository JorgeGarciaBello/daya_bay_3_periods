!#########################################################################################
!
!   Antineutrino spectrum period 2 - per Detector. Reactor in units of [1/ ( MeV s )]!
!
!########################################################################################
function db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3(x,d,r,bin,k,t13,dmee)
    use types, only: dp
    use db_data, only: lengths,rand_Ncrosssection_p3,rand_Nweightedefficiencytp_p3                       
    implicit none
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3
    real(dp) :: x                                                              ! Neutrino energy in [MeV]
    integer  :: d,r,k,bin                                                      ! the number ot detector and reactor respectively
    real(dp) :: t13,dmee                                                       ! are the neutrino oscillation parameters we are interested    
    real(dp) :: db_cov_M_total_antineutrino_flux_p3,probability,crossSection
    
    db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3=0.0_dp
   if(d==1) then
        print*, 'El detector 1 no existe en el periodo de 7-ADS'
        stop
    else        
        db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3= &
                                    (1.0D0 / (4.0D0*3.1415D0*lengths(d,r)**2))*       &   ![1/m^2]
                                    probability(t13,dmee,lengths(d,r),x)*             &
                                    db_cov_M_total_antineutrino_flux_p3(bin,k,r,x)*   &   ![#/MeV]
                                    rand_Ncrosssection_p3(bin,1,k)*crossSection(x)*   &   ![m^2]              
                                    rand_Nweightedefficiencytp_p3(bin,d,k)
    end if
    return
end function db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3
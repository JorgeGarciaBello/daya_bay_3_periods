program main
    use types, only: dp
    use db_data,only:n,num_experiments,randDis    
    implicit none
    real(dp) ::a,b,c,x,t13,dmee,db_cov_M_total_antineutrino_flux_p1,hola,db_cov_M_total_antineutrino_flux_p2
    real(dp) :: db_cov_M_total_antineutrino_flux_p3
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_p1,db_cov_M_expected_antineutrino_spectrum_detector_reactor_p1
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_p2,db_cov_M_expected_antineutrino_spectrum_detector_reactor_p2
    real(dp) :: db_cov_M_expected_antineutrino_spectrum_detector_p3,db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3
    integer :: d,r,bin,k,i
    real(dp) :: val1,val2,val3

    print*, 'n', n
    print*, 'randDis', randDis
    print*, 'num_experiments', num_experiments


    call db_read_data()
    call db_generate_B_Nsignal()
    d=2
    r=1
    bin=1
    k=1
    t13=0.0_dp
    dmee=0.0_dp

        do i=1,100
            x=1.8_dp+(12.0/100.0)*i
            !x=2.0_dp
            !val1=db_cov_M_total_antineutrino_flux_p1(bin,k,r,x)
            !val2=db_cov_M_total_antineutrino_flux_p2(bin,k,r,x)
            !val3=db_cov_M_total_antineutrino_flux_p3(bin,k,r,x)

            val1=db_cov_M_expected_antineutrino_spectrum_detector_reactor_p1(x,d,r,bin,k,t13,dmee)
            val2=db_cov_M_expected_antineutrino_spectrum_detector_reactor_p2(x,d,r,bin,k,t13,dmee)
            val3=db_cov_M_expected_antineutrino_spectrum_detector_reactor_p3(x,d,r,bin,k,t13,dmee)
            
            !val1=db_cov_M_expected_antineutrino_spectrum_detector_p1(x,d,bin,k,t13,dmee)
            !val2=db_cov_M_expected_antineutrino_spectrum_detector_p2(x,d,bin,k,t13,dmee)            
            !val3=db_cov_M_expected_antineutrino_spectrum_detector_p3(x,d,bin,k,t13,dmee)            
            

            
            !print*, ' '
            write(*,*) i,x,val1,val2,val3
        enddo
    return
end program main
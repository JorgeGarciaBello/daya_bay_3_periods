program main
    use db_data,only:n,num_experiments,randDis
    use types, only: dp
    implicit none
    real(dp) ::a,b,c,x,db_cov_M_total_antineutrino_flux_p1,hola
    real(dp) :: db_cov_M_total_antineutrino_flux_p2, db_cov_M_total_antineutrino_flux_p3
    integer :: r,bin,k,i
    print*, 'n', n
    print*, 'randDis', randDis
    print*, 'num_experiments', num_experiments


    call db_read_data()
    call db_generate_B_Nsignal()
    r=1
    bin=1
    k=1
        !do i=1,100
        !    x=1.0_dp+(12.0_dp/100.0_dp)*i
            !print*, db_cov_M_total_antineutrino_flux_p1(bin,k,r,x), &
            !        db_cov_M_total_antineutrino_flux_p2(bin,k,r,x), &
            !        db_cov_M_total_antineutrino_flux_p3(bin,k,r,x)
        !enddo
    return
end program main
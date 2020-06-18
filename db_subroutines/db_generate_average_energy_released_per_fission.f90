subroutine db_generate_average_energy_released_per_fission()
    use types, only: dp
    use db_data, only: randDis,num_experiments, &
                       average_energy_released_per_fission_p1,sigma_average_energy_released_per_fission_p1, &
                       rand_Navrgenergyperfission_p1, &
                       average_energy_released_per_fission_p2,sigma_average_energy_released_per_fission_p2, &
                       rand_Navrgenergyperfission_p2, &
                       average_energy_released_per_fission_p3,sigma_average_energy_released_per_fission_p3, &
                       rand_Navrgenergyperfission_p3
    implicit none    
    real(dp) :: min_p1, max_p1
    real(dp) :: min_p2, max_p2
    real(dp) :: min_p3, max_p3
    real(dp) :: ZBQLNOR
    real(dp) :: r
    integer :: i,n
    
    select case(randDis)
    case(1)
        do i=1,52
            do n=1,num_experiments                
                rand_Navrgenergyperfission_p1(i,1,n) = &
                            ZBQLNOR(average_energy_released_per_fission_p1, &
                                    average_energy_released_per_fission_p1*(sigma_average_energy_released_per_fission_p1/100.0_dp))
                rand_Navrgenergyperfission_p2(i,1,n) = &
                            ZBQLNOR(average_energy_released_per_fission_p2, &
                                    average_energy_released_per_fission_p2*(sigma_average_energy_released_per_fission_p2/100.0_dp))
                rand_Navrgenergyperfission_p3(i,1,n) = &
                            ZBQLNOR(average_energy_released_per_fission_p3, &
                                    average_energy_released_per_fission_p3*(sigma_average_energy_released_per_fission_p3/100.0_dp))
            enddo
        enddo
    case(2)
        min_p1=average_energy_released_per_fission_p1 &
              -average_energy_released_per_fission_p1*(sigma_average_energy_released_per_fission_p1/100.0_dp)
        max_p1=average_energy_released_per_fission_p1 &
              +average_energy_released_per_fission_p1*(sigma_average_energy_released_per_fission_p1/100.0_dp)
        do i=1,52
            do n=1,num_experiments
                CALL RANDOM_NUMBER(r)
                rand_Navrgenergyperfission_p1(i,1,n) = min_p1*(1.0d0-r) + max_p1*r            
            enddo
        enddo
        min_p2=average_energy_released_per_fission_p2 &
              -average_energy_released_per_fission_p2*(sigma_average_energy_released_per_fission_p2/100.0_dp)
        max_p2=average_energy_released_per_fission_p2 &
              +average_energy_released_per_fission_p2*(sigma_average_energy_released_per_fission_p2/100.0_dp)
        do i=1,52
            do n=1,num_experiments
                CALL RANDOM_NUMBER(r)
                rand_Navrgenergyperfission_p2(i,1,n) = min_p2*(1.0d0-r) + max_p2*r            
            enddo
        enddo
        min_p3=average_energy_released_per_fission_p3 &
              -average_energy_released_per_fission_p3*(sigma_average_energy_released_per_fission_p3/100.0_dp)
        max_p3=average_energy_released_per_fission_p3 &
              +average_energy_released_per_fission_p3*(sigma_average_energy_released_per_fission_p3/100.0_dp)
        do i=1,52
            do n=1,num_experiments
                CALL RANDOM_NUMBER(r)
                rand_Navrgenergyperfission_p3(i,1,n) = min_p3*(1.0d0-r) + max_p3*r            
            enddo
        enddo
    end select
    !do i=1, num_experiments
        !print*, rand_Navrgenergyperfission_p1(1,1,i)
         !print*, rand_Navrgenergyperfission_p2(1,1,i)
         !print*, rand_Navrgenergyperfission_p3(1,1,i)
    !enddo
    return
end subroutine db_generate_average_energy_released_per_fission
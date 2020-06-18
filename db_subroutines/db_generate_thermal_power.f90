subroutine db_generate_thermal_power()
    use types, only: dp
    use db_data, only: randDis,RCTS,num_experiments,thermal_power_p1,sigma_thermal_power_p1,rand_Nthermalpower_p1, &
                       thermal_power_p2,sigma_thermal_power_p2,rand_Nthermalpower_p2, &
                       thermal_power_p3,sigma_thermal_power_p3,rand_Nthermalpower_p3
    implicit none    
    real(dp) :: min_p1(RCTS),max_p1(RCTS)
    real(dp) :: min_p2(RCTS),max_p2(RCTS)
    real(dp) :: min_p3(RCTS),max_p3(RCTS)
    real(dp) :: ZBQLNOR
    real(dp) :: r,re
    integer  :: i,j,n

    select case(randDis)
    case(1)
        do i=1,52
            do n=1,num_experiments
                rand_Nthermalpower_p1(i,1,n)=ZBQLNOR(thermal_power_p1(1),thermal_power_p1(1)*(sigma_thermal_power_p1(1)/100.0_dp))
                rand_Nthermalpower_p1(i,2,n)=ZBQLNOR(thermal_power_p1(2),thermal_power_p1(2)*(sigma_thermal_power_p1(2)/100.0_dp))
                rand_Nthermalpower_p1(i,3,n)=ZBQLNOR(thermal_power_p1(3),thermal_power_p1(3)*(sigma_thermal_power_p1(3)/100.0_dp))
                rand_Nthermalpower_p1(i,4,n)=ZBQLNOR(thermal_power_p1(4),thermal_power_p1(4)*(sigma_thermal_power_p1(4)/100.0_dp))
                rand_Nthermalpower_p1(i,5,n)=ZBQLNOR(thermal_power_p1(5),thermal_power_p1(5)*(sigma_thermal_power_p1(5)/100.0_dp))
                rand_Nthermalpower_p1(i,6,n)=ZBQLNOR(thermal_power_p1(6),thermal_power_p1(6)*(sigma_thermal_power_p1(6)/100.0_dp))

                rand_Nthermalpower_p2(i,1,n)=ZBQLNOR(thermal_power_p2(1),thermal_power_p2(1)*(sigma_thermal_power_p2(1)/100.0_dp))
                rand_Nthermalpower_p2(i,2,n)=ZBQLNOR(thermal_power_p2(2),thermal_power_p2(2)*(sigma_thermal_power_p2(2)/100.0_dp))
                rand_Nthermalpower_p2(i,3,n)=ZBQLNOR(thermal_power_p2(3),thermal_power_p2(3)*(sigma_thermal_power_p2(3)/100.0_dp))
                rand_Nthermalpower_p2(i,4,n)=ZBQLNOR(thermal_power_p2(4),thermal_power_p2(4)*(sigma_thermal_power_p2(4)/100.0_dp))
                rand_Nthermalpower_p2(i,5,n)=ZBQLNOR(thermal_power_p2(5),thermal_power_p2(5)*(sigma_thermal_power_p2(5)/100.0_dp))
                rand_Nthermalpower_p2(i,6,n)=ZBQLNOR(thermal_power_p2(6),thermal_power_p2(6)*(sigma_thermal_power_p2(6)/100.0_dp))

                rand_Nthermalpower_p3(i,1,n)=ZBQLNOR(thermal_power_p3(1),thermal_power_p3(1)*(sigma_thermal_power_p3(1)/100.0_dp))
                rand_Nthermalpower_p3(i,2,n)=ZBQLNOR(thermal_power_p3(2),thermal_power_p3(2)*(sigma_thermal_power_p3(2)/100.0_dp))
                rand_Nthermalpower_p3(i,3,n)=ZBQLNOR(thermal_power_p3(3),thermal_power_p3(3)*(sigma_thermal_power_p3(3)/100.0_dp))
                rand_Nthermalpower_p3(i,4,n)=ZBQLNOR(thermal_power_p3(4),thermal_power_p3(4)*(sigma_thermal_power_p3(4)/100.0_dp))
                rand_Nthermalpower_p3(i,5,n)=ZBQLNOR(thermal_power_p3(5),thermal_power_p3(5)*(sigma_thermal_power_p3(5)/100.0_dp))
                rand_Nthermalpower_p3(i,6,n)=ZBQLNOR(thermal_power_p3(6),thermal_power_p3(6)*(sigma_thermal_power_p3(6)/100.0_dp))
            enddo
        enddo
    case(2)
        do i=1,RCTS
            min_p1(i)=thermal_power_p1(i)-thermal_power_p1(i)*(sigma_thermal_power_p1(i)/100.0_dp)
            max_p1(i)=thermal_power_p1(i)+thermal_power_p1(i)*(sigma_thermal_power_p1(i)/100.0_dp)

            min_p2(i)=thermal_power_p2(i)-thermal_power_p2(i)*(sigma_thermal_power_p2(i)/100.0_dp)
            max_p2(i)=thermal_power_p2(i)+thermal_power_p2(i)*(sigma_thermal_power_p2(i)/100.0_dp)

            min_p3(i)=thermal_power_p3(i)-thermal_power_p3(i)*(sigma_thermal_power_p3(i)/100.0_dp)
            max_p3(i)=thermal_power_p3(i)+thermal_power_p3(i)*(sigma_thermal_power_p3(i)/100.0_dp)
        enddo
        do i=1,52
            do n=1,num_experiments
                do j=1,RCTS
                    CALL RANDOM_NUMBER(r)
                    rand_Nthermalpower_p1(i,j,n) = min_p1(j)*(1.0d0-r) + max_p1(j)*r
                    rand_Nthermalpower_p2(i,j,n) = min_p2(j)*(1.0d0-r) + max_p2(j)*r
                    rand_Nthermalpower_p3(i,j,n) = min_p3(j)*(1.0d0-r) + max_p3(j)*r
                enddo            
            enddo
        enddo
    end select    
    do i=1,100
        !print*, rand_Nthermalpower_p1(1,1,i),rand_Nthermalpower_p1(1,2,i), rand_Nthermalpower_p1(1,3,i), &
        !        rand_Nthermalpower_p1(1,4,i), rand_Nthermalpower_p1(1,5,i), rand_Nthermalpower_p1(1,6,i)
        !print*, rand_Nthermalpower_p2(1,1,i),rand_Nthermalpower_p2(1,2,i), rand_Nthermalpower_p2(1,3,i), &
        !        rand_Nthermalpower_p2(1,4,i), rand_Nthermalpower_p2(1,5,i), rand_Nthermalpower_p2(1,6,i)

        !print*, rand_Nthermalpower_p3(1,1,i),rand_Nthermalpower_p3(1,2,i), rand_Nthermalpower_p3(1,3,i), &
        !        rand_Nthermalpower_p3(1,4,i), rand_Nthermalpower_p3(1,5,i), rand_Nthermalpower_p3(1,6,i)
    enddo
    return
end subroutine db_generate_thermal_power
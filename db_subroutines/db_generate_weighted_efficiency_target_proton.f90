subroutine db_generate_weighted_efficiency_target_proton()
    use types, only: dp
    use db_data, only: ADS,NDIM,num_experiments,randDis, &
                               weighted_efficiency_target_proton_p1, &
                               sigma_weighted_efficiency_target_proton_un_p1, &
                               sigma_weighted_efficiency_target_proton_corr_p1, &
                               weighted_efficiency_target_proton_p2, &
                               sigma_weighted_efficiency_target_proton_un_p2, &
                               sigma_weighted_efficiency_target_proton_corr_p2, &
                               weighted_efficiency_target_proton_p3, &
                               sigma_weighted_efficiency_target_proton_un_p3, &
                               sigma_weighted_efficiency_target_proton_corr_p3, &
                               rand_Nweightedefficiencytp_p1,rand_Nweightedefficiencytp_p2,&
                               rand_Nweightedefficiencytp_p3
    implicit none    
    real(dp) :: min_p1(ADS), max_p1(ADS)
    real(dp) :: min_p2(ADS), max_p2(ADS)
    real(dp) :: min_p3(ADS), max_p3(ADS)
    real(dp) :: ZBQLNOR
    real(dp) :: r
    integer :: i,n,d
    
    select case(randDis)
        case(1)            
            do i=1,52
                do n=1,num_experiments
                    do d=1,ADS
                    rand_Nweightedefficiencytp_p1(i,d,n) = ZBQLNOR(weighted_efficiency_target_proton_p1(d),                      &
                                                                   weighted_efficiency_target_proton_p1(d)                       &
                                                                  *((sigma_weighted_efficiency_target_proton_un_p1(d)+           &
                                                                     sigma_weighted_efficiency_target_proton_corr_p1(d))/100.0_dp))
                    enddo
                    do d=1,ADS
                    rand_Nweightedefficiencytp_p2(i,d,n) = ZBQLNOR(weighted_efficiency_target_proton_p2(d),                        &
                                                                   weighted_efficiency_target_proton_p2(d)                         &
                                                                  *((sigma_weighted_efficiency_target_proton_un_p2(d)+             &
                                                                     sigma_weighted_efficiency_target_proton_corr_p2(d))/100.0_dp))
                    enddo
                    do d=1,ADS
                    rand_Nweightedefficiencytp_p3(i,d,n) = ZBQLNOR(weighted_efficiency_target_proton_p3(d),                        &
                                                                   weighted_efficiency_target_proton_p3(d)                         &
                                                                  *((sigma_weighted_efficiency_target_proton_un_p3(d)+             &
                                                                     sigma_weighted_efficiency_target_proton_corr_p3(d))/100.0_dp))
                    enddo
                enddo
            enddo
        case(2)
            do d=1,ADS
            min_p1(d)=weighted_efficiency_target_proton_p1(d)-weighted_efficiency_target_proton_p1(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p1(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p1(d))/100.0_dp)
            max_p1(d)=weighted_efficiency_target_proton_p1(d)+weighted_efficiency_target_proton_p1(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p1(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p1(d))/100.0_dp)
            enddo
            do d=1,ADS
            min_p2(d)=weighted_efficiency_target_proton_p2(d)-weighted_efficiency_target_proton_p2(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p2(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p2(d))/100.0_dp)
            max_p2(d)=weighted_efficiency_target_proton_p2(d)+weighted_efficiency_target_proton_p2(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p2(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p2(d))/100.0_dp)
            enddo
            do d=1,ADS
            min_p3(d)=weighted_efficiency_target_proton_p3(d)-weighted_efficiency_target_proton_p3(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p3(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p3(d))/100.0_dp)
            max_p3(d)=weighted_efficiency_target_proton_p3(d)+weighted_efficiency_target_proton_p3(d)*                           &
                                                          ( (sigma_weighted_efficiency_target_proton_un_p3(d) +               &
                                                             sigma_weighted_efficiency_target_proton_corr_p3(d))/100.0_dp)
            enddo

        do i=1,52      
            do n=1,num_experiments
                do d=1,ADS
                    CALL RANDOM_NUMBER(r)
                    rand_Nweightedefficiencytp_p1(i,d,n) = min_p1(d)*(1.0d0-r) + max_p1(d)*r
                enddo
                do d=1,ADS
                    CALL RANDOM_NUMBER(r)
                    rand_Nweightedefficiencytp_p2(i,d,n) = min_p2(d)*(1.0d0-r) + max_p2(d)*r
                enddo
                do d=1,ADS
                    CALL RANDOM_NUMBER(r)
                    rand_Nweightedefficiencytp_p3(i,d,n) = min_p3(d)*(1.0d0-r) + max_p3(d)*r
                enddo
            enddo
        enddo
    end select
    do i=1, num_experiments
        !print*, rand_Nweightedefficiencytp_p1(1,1,i), rand_Nweightedefficiencytp_p1(26,1,i), &
        !        rand_Nweightedefficiencytp_p1(27,1,i), rand_Nweightedefficiencytp_p1(52,1,i)
        !print*, rand_Nweightedefficiencytp_p1(1,2,i), rand_Nweightedefficiencytp_p1(26,2,i), &
        !        rand_Nweightedefficiencytp_p1(27,2,i), rand_Nweightedefficiencytp_p1(52,2,i)
        !print*, rand_Nweightedefficiencytp_p1(1,3,i), rand_Nweightedefficiencytp_p1(26,3,i), &
        !        rand_Nweightedefficiencytp_p1(27,3,i), rand_Nweightedefficiencytp_p1(52,3,i)
        !print*, rand_Nweightedefficiencytp_p1(1,4,i), rand_Nweightedefficiencytp_p1(26,4,i), &
        !        rand_Nweightedefficiencytp_p1(27,4,i), rand_Nweightedefficiencytp_p1(52,4,i)
        !print*, rand_Nweightedefficiencytp_p1(1,5,i), rand_Nweightedefficiencytp_p1(26,5,i), &
        !        rand_Nweightedefficiencytp_p1(27,5,i), rand_Nweightedefficiencytp_p1(52,5,i)
        !print*, rand_Nweightedefficiencytp_p1(1,6,i), rand_Nweightedefficiencytp_p1(26,6,i), &
        !        rand_Nweightedefficiencytp_p1(27,6,i), rand_Nweightedefficiencytp_p1(52,6,i)
        !print*, rand_Nweightedefficiencytp_p1(1,7,i), rand_Nweightedefficiencytp_p1(26,7,i), &
        !        rand_Nweightedefficiencytp_p1(27,7,i), rand_Nweightedefficiencytp_p1(52,7,i)
        !print*, rand_Nweightedefficiencytp_p1(1,8,i), rand_Nweightedefficiencytp_p1(26,8,i), &
        !        rand_Nweightedefficiencytp_p1(27,8,i), rand_Nweightedefficiencytp_p1(52,8,i)

        !print*, rand_Nweightedefficiencytp_p2(1,1,i), rand_Nweightedefficiencytp_p2(26,1,i), &
        !        rand_Nweightedefficiencytp_p2(27,1,i), rand_Nweightedefficiencytp_p2(52,1,i)
        !print*, rand_Nweightedefficiencytp_p2(1,2,i), rand_Nweightedefficiencytp_p2(26,2,i), &
        !        rand_Nweightedefficiencytp_p2(27,2,i), rand_Nweightedefficiencytp_p2(52,2,i)
        !print*, rand_Nweightedefficiencytp_p2(1,3,i), rand_Nweightedefficiencytp_p2(26,3,i), &
        !        rand_Nweightedefficiencytp_p2(27,3,i), rand_Nweightedefficiencytp_p2(52,3,i)
        !print*, rand_Nweightedefficiencytp_p2(1,4,i), rand_Nweightedefficiencytp_p2(26,4,i), &
        !        rand_Nweightedefficiencytp_p2(27,4,i), rand_Nweightedefficiencytp_p2(52,4,i)
        !print*, rand_Nweightedefficiencytp_p2(1,5,i), rand_Nweightedefficiencytp_p2(26,5,i), &
        !       rand_Nweightedefficiencytp_p2(27,5,i), rand_Nweightedefficiencytp_p2(52,5,i)
        !print*, rand_Nweightedefficiencytp_p2(1,6,i), rand_Nweightedefficiencytp_p2(26,6,i), &
        !        rand_Nweightedefficiencytp_p2(27,6,i), rand_Nweightedefficiencytp_p2(52,6,i)
        !print*, rand_Nweightedefficiencytp_p2(1,7,i), rand_Nweightedefficiencytp_p2(26,7,i), &
        !        rand_Nweightedefficiencytp_p2(27,7,i), rand_Nweightedefficiencytp_p2(52,7,i)
        !print*, rand_Nweightedefficiencytp_p2(1,8,i), rand_Nweightedefficiencytp_p2(26,8,i), &
        !        rand_Nweightedefficiencytp_p2(27,8,i), rand_Nweightedefficiencytp_p2(52,8,i)

        !print*, rand_Nweightedefficiencytp_p3(1,1,i), rand_Nweightedefficiencytp_p3(26,1,i), &
        !        rand_Nweightedefficiencytp_p3(27,1,i), rand_Nweightedefficiencytp_p3(52,1,i)
        !print*, rand_Nweightedefficiencytp_p3(1,2,i), rand_Nweightedefficiencytp_p3(26,2,i), &
        !        rand_Nweightedefficiencytp_p3(27,2,i), rand_Nweightedefficiencytp_p3(52,2,i)
        !print*, rand_Nweightedefficiencytp_p3(1,3,i), rand_Nweightedefficiencytp_p3(26,3,i), &
        !        rand_Nweightedefficiencytp_p3(27,3,i), rand_Nweightedefficiencytp_p3(52,3,i)
        !print*, rand_Nweightedefficiencytp_p3(1,4,i), rand_Nweightedefficiencytp_p3(26,4,i), &
        !        rand_Nweightedefficiencytp_p3(27,4,i), rand_Nweightedefficiencytp_p3(52,4,i)
        !print*, rand_Nweightedefficiencytp_p3(1,5,i), rand_Nweightedefficiencytp_p3(26,5,i), &
        !        rand_Nweightedefficiencytp_p3(27,5,i), rand_Nweightedefficiencytp_p3(52,5,i)
        !print*, rand_Nweightedefficiencytp_p3(1,6,i), rand_Nweightedefficiencytp_p3(26,6,i), &
        !        rand_Nweightedefficiencytp_p3(27,6,i), rand_Nweightedefficiencytp_p3(52,6,i)
        !print*, rand_Nweightedefficiencytp_p3(1,7,i), rand_Nweightedefficiencytp_p3(26,7,i), &
        !        rand_Nweightedefficiencytp_p3(27,7,i), rand_Nweightedefficiencytp_p3(52,7,i)
    enddo
    return
end subroutine db_generate_weighted_efficiency_target_proton
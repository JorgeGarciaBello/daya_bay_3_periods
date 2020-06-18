subroutine db_generate_reactor_flux_model()
    use types, only: dp
    use db_data, only: NBIN,randDis,num_experiments,reactor_flux_model_p1,sigma_reactor_flux_model_p1,rand_Nreactorfluxmodel_p1, &
                                                    reactor_flux_model_p2,sigma_reactor_flux_model_p2,rand_Nreactorfluxmodel_p2, &
                                                    reactor_flux_model_p3,sigma_reactor_flux_model_p3,rand_Nreactorfluxmodel_p3
    implicit none
    real(dp) :: min_p1(NBIN), max_p1(NBIN)
    real(dp) :: min_p2(NBIN), max_p2(NBIN)
    real(dp) :: min_p3(NBIN), max_p3(NBIN)
    real(dp) :: ZBQLNOR
    real(dp) :: r
    integer :: i,n

    select case (randDis)
        case(1)
            do i=1,52
                do n=1,num_experiments
                    if(i<=26) then
                    rand_Nreactorfluxmodel_p1(i,n)=ZBQLNOR(reactor_flux_model_p1(i), &
                                                   reactor_flux_model_p1(i)*(sigma_reactor_flux_model_p1(i)/100.0_dp))
                    rand_Nreactorfluxmodel_p2(i,n)=ZBQLNOR(reactor_flux_model_p2(i), &
                                                   reactor_flux_model_p2(i)*(sigma_reactor_flux_model_p2(i)/100.0_dp))
                    rand_Nreactorfluxmodel_p3(i,n)=ZBQLNOR(reactor_flux_model_p3(i), &
                                                   reactor_flux_model_p3(i)*(sigma_reactor_flux_model_p3(i)/100.0_dp))
                    else
                    rand_Nreactorfluxmodel_p1(i,n)=ZBQLNOR(reactor_flux_model_p1(i-26), &
                                                   reactor_flux_model_p1(i-26)*(sigma_reactor_flux_model_p1(i-26)/100.0_dp))
                    rand_Nreactorfluxmodel_p2(i,n)=ZBQLNOR(reactor_flux_model_p2(i-26), &
                                                   reactor_flux_model_p2(i-26)*(sigma_reactor_flux_model_p2(i-26)/100.0_dp))
                    rand_Nreactorfluxmodel_p3(i,n)=ZBQLNOR(reactor_flux_model_p3(i-26), &
                                                   reactor_flux_model_p3(i-26)*(sigma_reactor_flux_model_p3(i-26)/100.0_dp))
                    endif
                enddo
            enddo
        case(2)
            do i=1,NBIN
                min_p1(i)= reactor_flux_model_p1(i)-reactor_flux_model_p1(i)*(sigma_reactor_flux_model_p1(i)/100.0_dp)
                max_p1(i)= reactor_flux_model_p1(i)+reactor_flux_model_p1(i)*(sigma_reactor_flux_model_p1(i)/100.0_dp)
                min_p2(i)= reactor_flux_model_p2(i)-reactor_flux_model_p2(i)*(sigma_reactor_flux_model_p2(i)/100.0_dp)
                max_p2(i)= reactor_flux_model_p2(i)+reactor_flux_model_p2(i)*(sigma_reactor_flux_model_p2(i)/100.0_dp)
                min_p3(i)= reactor_flux_model_p3(i)-reactor_flux_model_p3(i)*(sigma_reactor_flux_model_p3(i)/100.0_dp)
                max_p3(i)= reactor_flux_model_p3(i)+reactor_flux_model_p3(i)*(sigma_reactor_flux_model_p3(i)/100.0_dp)
            enddo
            do i=1,52
                do n=1,num_experiments
                    CALL RANDOM_NUMBER(r)
                    if(i<=26) then
                        rand_Nreactorfluxmodel_p1(i,n) = min_p1(i)*(1.0d0-r) + max_p1(i)*r
                    else
                        rand_Nreactorfluxmodel_p1(i,n) = min_p1(i-26)*(1.0d0-r) + max_p1(i-26)*r
                    endif
                    CALL RANDOM_NUMBER(r)
                    if(i<=26) then
                        rand_Nreactorfluxmodel_p2(i,n) = min_p2(i)*(1.0d0-r) + max_p2(i)*r
                    else
                        rand_Nreactorfluxmodel_p2(i,n) = min_p2(i-26)*(1.0d0-r) + max_p2(i-26)*r
                    endif
                    CALL RANDOM_NUMBER(r)
                    if(i<=26) then
                        rand_Nreactorfluxmodel_p3(i,n) = min_p3(i)*(1.0d0-r) + max_p3(i)*r
                    else
                        rand_Nreactorfluxmodel_p3(i,n) = min_p3(i-26)*(1.0d0-r) + max_p3(i-26)*r
                    endif
                enddo
            enddo
    end select   
    !print*, '********'
    !do i=1, num_experiments
    !    print*, rand_Nreactorfluxmodel_p1(1,i), rand_Nreactorfluxmodel_p1(26,i), &
    !            rand_Nreactorfluxmodel_p1(27,i), rand_Nreactorfluxmodel_p1(52,i)        
    !    print*, rand_Nreactorfluxmodel_p2(1,i), rand_Nreactorfluxmodel_p2(26,i), &
    !            rand_Nreactorfluxmodel_p2(27,i), rand_Nreactorfluxmodel_p2(52,i)  
    !    print*, rand_Nreactorfluxmodel_p3(1,i), rand_Nreactorfluxmodel_p3(26,i), &
    !            rand_Nreactorfluxmodel_p3(27,i), rand_Nreactorfluxmodel_p3(52,i)              
    !enddo
    !print*, '********'
    return
end subroutine db_generate_reactor_flux_model
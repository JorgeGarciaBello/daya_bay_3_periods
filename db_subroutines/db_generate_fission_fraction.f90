                                                                    subroutine db_generate_fission_fraction()
    use types, only: dp
    use db_data, only: randDis,RIR,num_experiments,fission_fraction_p1,sigma_fission_fraction_p1,rand_Nfissionfraction_p1, &
                                                   fission_fraction_p2,sigma_fission_fraction_p2,rand_Nfissionfraction_p2, &
                                                   fission_fraction_p3,sigma_fission_fraction_p3,rand_Nfissionfraction_p3
    implicit none    
    real(dp) :: min_p1(RIR), max_p1(RIR)
    real(dp) :: min_p2(RIR), max_p2(RIR)
    real(dp) :: min_p3(RIR), max_p3(RIR)
    real(dp) :: ZBQLNOR
    real(dp) :: r
    integer :: i,j,n    

    select case(randDis)
    case(1)
        do i=1,52
            do n=1,num_experiments
                do j=1,RIR                    
                    rand_Nfissionfraction_p1(i,j,n) = &
                    ZBQLNOR(fission_fraction_p1(j),fission_fraction_p1(j)*(sigma_fission_fraction_p1(j)/100.0_dp))
                    rand_Nfissionfraction_p2(i,j,n) = &
                    ZBQLNOR(fission_fraction_p2(j),fission_fraction_p2(j)*(sigma_fission_fraction_p2(j)/100.0_dp))
                    rand_Nfissionfraction_p3(i,j,n) = &
                    ZBQLNOR(fission_fraction_p3(j),fission_fraction_p3(j)*(sigma_fission_fraction_p3(j)/100.0_dp))
                enddo
            enddo
        enddo
    case(2)
        do i=1,RIR
            min_p1(i)=fission_fraction_p1(i)-fission_fraction_p1(i)*(sigma_fission_fraction_p1(i)/100.0_dp)
            max_p1(i)=fission_fraction_p1(i)+fission_fraction_p1(i)*(sigma_fission_fraction_p1(i)/100.0_dp)
        enddo
        do i=1,52
            do n=1,num_experiments
                do j=1,RIR
                    CALL RANDOM_NUMBER(r)            
                    rand_Nfissionfraction_p1(i,j,n) = min_p1(j)*(1.0d0-r) + max_p1(j)*r
                enddo            
            enddo
        enddo
        do i=1,RIR
            min_p2(i)=fission_fraction_p2(i)-fission_fraction_p2(i)*(sigma_fission_fraction_p2(i)/100.0_dp)
            max_p2(i)=fission_fraction_p2(i)+fission_fraction_p2(i)*(sigma_fission_fraction_p2(i)/100.0_dp)
        enddo
        do i=1,52
            do n=1,num_experiments
                do j=1,RIR
                    CALL RANDOM_NUMBER(r)            
                    rand_Nfissionfraction_p2(i,j,n) = min_p2(j)*(1.0d0-r) + max_p2(j)*r
                enddo            
            enddo
        enddo
        do i=1,RIR
            min_p3(i)=fission_fraction_p3(i)-fission_fraction_p3(i)*(sigma_fission_fraction_p3(i)/100.0_dp)
            max_p3(i)=fission_fraction_p3(i)+fission_fraction_p3(i)*(sigma_fission_fraction_p3(i)/100.0_dp)
        enddo
        do i=1,52
            do n=1,num_experiments
                do j=1,RIR
                    CALL RANDOM_NUMBER(r)            
                    rand_Nfissionfraction_p3(i,j,n) = min_p3(j)*(1.0d0-r) + max_p3(j)*r
                enddo            
            enddo
        enddo
    end select

    
    !do i=1, num_experiments
    !    print*, rand_Nfissionfraction_p1(1,1,i),rand_Nfissionfraction_p1(1,2,i), rand_Nfissionfraction_p1(1,3,i), &
    !            rand_Nfissionfraction_p1(1,4,i)
    !    print*, rand_Nfissionfraction_p2(1,1,i),rand_Nfissionfraction_p2(1,2,i), rand_Nfissionfraction_p2(1,3,i), &
    !            rand_Nfissionfraction_p2(1,4,i)
    !    print*, rand_Nfissionfraction_p3(1,1,i),rand_Nfissionfraction_p3(1,2,i), rand_Nfissionfraction_p3(1,3,i), &
    !            rand_Nfissionfraction_p3(1,4,i)
    !enddo
    return
end subroutine db_generate_fission_fraction
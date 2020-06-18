subroutine db_generate_cross_section()
    use types, only: dp
    use db_data, only: NBIN,randDis,num_experiments,cross_section_p1,sigma_cross_section_p1,rand_Ncrosssection_p1, &
                                                    cross_section_p2,sigma_cross_section_p2,rand_Ncrosssection_p2, &
                                                    cross_section_p3,sigma_cross_section_p3,rand_Ncrosssection_p3
    implicit none
    REAL(dp) :: ZBQLNOR
    real(dp) :: min_p1(NBIN), max_p1(NBIN)
    real(dp) :: min_p2(NBIN), max_p2(NBIN)
    real(dp) :: min_p3(NBIN), max_p3(NBIN)
    real(dp) :: r
    integer :: i,n
    select case(randDis)
        case(1)
            do i=1,52
                do n=1,num_experiments
                    if(i<=26) then
                        rand_Ncrosssection_p1(i,1,n) = ZBQLNOR(cross_section_p1(i), &
                                                       cross_section_p1(i)*(sigma_cross_section_p1(i)/100.0_dp))
                        rand_Ncrosssection_p2(i,1,n) = ZBQLNOR(cross_section_p2(i), &
                                                       cross_section_p2(i)*(sigma_cross_section_p2(i)/100.0_dp))
                        rand_Ncrosssection_p3(i,1,n) = ZBQLNOR(cross_section_p3(i), &
                                                       cross_section_p3(i)*(sigma_cross_section_p3(i)/100.0_dp))

                    else
                        rand_Ncrosssection_p1(i,1,n) = ZBQLNOR(cross_section_p1(i-26), &
                                                       cross_section_p1(i-26)*(sigma_cross_section_p1(i-26)/100.0_dp))
                        rand_Ncrosssection_p2(i,1,n) = ZBQLNOR(cross_section_p2(i-26), &
                                                       cross_section_p2(i-26)*(sigma_cross_section_p2(i-26)/100.0_dp))
                        rand_Ncrosssection_p3(i,1,n) = ZBQLNOR(cross_section_p3(i-26), &
                                                       cross_section_p3(i-26)*(sigma_cross_section_p3(i-26)/100.0_dp))
                    endif
                enddo
            enddo
        case(2)
            do i=1,NBIN       
                min_p1(i)=cross_section_p1(i)-cross_section_p1(i)*( sigma_cross_section_p1(i)/100.0_dp )
                max_p1(i)=cross_section_p1(i)+cross_section_p1(i)*( sigma_cross_section_p1(i)/100.0_dp )
                min_p2(i)=cross_section_p2(i)-cross_section_p2(i)*( sigma_cross_section_p2(i)/100.0_dp )
                max_p2(i)=cross_section_p2(i)+cross_section_p2(i)*( sigma_cross_section_p2(i)/100.0_dp )
                min_p3(i)=cross_section_p3(i)-cross_section_p3(i)*( sigma_cross_section_p3(i)/100.0_dp )
                max_p3(i)=cross_section_p3(i)+cross_section_p3(i)*( sigma_cross_section_p3(i)/100.0_dp )
            enddo
            do i=1,52
                do n=1,num_experiments
                    CALL RANDOM_NUMBER(r)
                    if(i<=26) then
                    rand_Ncrosssection_p1(i,1,n) = min_p1(i)*(1.0d0-r) + max_p1(i)*r
                    rand_Ncrosssection_p2(i,1,n) = min_p2(i)*(1.0d0-r) + max_p2(i)*r
                    rand_Ncrosssection_p3(i,1,n) = min_p3(i)*(1.0d0-r) + max_p3(i)*r
                    else
                    rand_Ncrosssection_p1(i,1,n) = min_p1(i-26)*(1.0d0-r) + max_p1(i-26)*r
                    rand_Ncrosssection_p2(i,1,n) = min_p2(i-26)*(1.0d0-r) + max_p2(i-26)*r
                    rand_Ncrosssection_p3(i,1,n) = min_p3(i-26)*(1.0d0-r) + max_p3(i-26)*r
                    endif
                enddo
            enddo
    end select    
    !do i=1, num_experiments
        ! print*, rand_Ncrosssection_p1(1,1,i),rand_Ncrosssection_p1(26,1,i),rand_Ncrosssection_p1(27,1,i),rand_Ncrosssection_p1(52,1,i)
        ! print*, rand_Ncrosssection_p2(1,1,i),rand_Ncrosssection_p2(26,1,i),rand_Ncrosssection_p2(27,1,i),rand_Ncrosssection_p2(52,1,i)
        ! print*, rand_Ncrosssection_p3(1,1,i),rand_Ncrosssection_p3(26,1,i),rand_Ncrosssection_p3(27,1,i),rand_Ncrosssection_p3(52,1,i)
    !enddo
    return
end subroutine db_generate_cross_section
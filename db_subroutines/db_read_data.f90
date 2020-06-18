subroutine db_read_data()    
    use db_data
    implicit none
    integer :: u,i,j,reason

    open(newunit=u, file='db_data/db_thermal_power_p1.dat')
        read(u,*) thermal_power_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_thermal_power_p1.dat')
        read(u,*) sigma_thermal_power_p1
    close(u)
    open(newunit=u, file='db_data/db_fission_fraction_p1.dat')
        read(u,*) fission_fraction_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_fission_fraction_p1.dat')
        read(u,*) sigma_fission_fraction_p1
    close(u)
    open(newunit=u, file='db_data/db_average_energy_released_per_fission_p1.dat')
        read(u,*) average_energy_released_per_fission_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_average_energy_released_per_fission_p1.dat')
        read(u,*) sigma_average_energy_released_per_fission_p1
    close(u)
    open(newunit=u, file='db_data/db_reactor_flux_model_p1.dat')
        read(u,*) reactor_flux_model_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_reactor_flux_model_p1.dat')
        read(u,*) sigma_reactor_flux_model_p1
    close(u)

    open(newunit=u, file='db_data/db_thermal_power_p2.dat')
        read(u,*) thermal_power_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_thermal_power_p2.dat')
        read(u,*) sigma_thermal_power_p2
    close(u)
    open(newunit=u, file='db_data/db_fission_fraction_p2.dat')
        read(u,*) fission_fraction_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_fission_fraction_p2.dat')
        read(u,*) sigma_fission_fraction_p2
    close(u)
    open(newunit=u, file='db_data/db_average_energy_released_per_fission_p2.dat')
        read(u,*) average_energy_released_per_fission_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_average_energy_released_per_fission_p2.dat')
        read(u,*) sigma_average_energy_released_per_fission_p2
    close(u)
    open(newunit=u, file='db_data/db_reactor_flux_model_p2.dat')
        read(u,*) reactor_flux_model_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_reactor_flux_model_p2.dat')
        read(u,*) sigma_reactor_flux_model_p2
    close(u)

    open(newunit=u, file='db_data/db_thermal_power_p3.dat')
        read(u,*) thermal_power_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_thermal_power_p3.dat')
        read(u,*) sigma_thermal_power_p3
    close(u)
    open(newunit=u, file='db_data/db_fission_fraction_p3.dat')
        read(u,*) fission_fraction_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_fission_fraction_p3.dat')
        read(u,*) sigma_fission_fraction_p3
    close(u)
    open(newunit=u, file='db_data/db_average_energy_released_per_fission_p3.dat')
        read(u,*) average_energy_released_per_fission_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_average_energy_released_per_fission_p3.dat')
        read(u,*) sigma_average_energy_released_per_fission_p3
    close(u)
    open(newunit=u, file='db_data/db_reactor_flux_model_p3.dat')
        read(u,*) reactor_flux_model_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_reactor_flux_model_p3.dat')
        read(u,*) sigma_reactor_flux_model_p3
    close(u)

    open(newunit=u, file='db_data/db_cross_section_p1.dat')
        read(u,*) cross_section_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_cross_section_p1.dat')
        read(u,*) sigma_cross_section_p1
    close(u)
    open(newunit=u, file='db_data/db_cross_section_p2.dat')
        read(u,*) cross_section_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_cross_section_p2.dat')
        read(u,*) sigma_cross_section_p2
    close(u)
    open(newunit=u, file='db_data/db_cross_section_p3.dat')
        read(u,*) cross_section_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_cross_section_p3.dat')
        read(u,*) sigma_cross_section_p3
    close(u)   
    

    return
end subroutine db_read_data
        
    
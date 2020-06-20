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

    open(newunit=u, file='db_data/db_weighted_efficiency_target_proton_p1.dat')
        read(u,*) weighted_efficiency_target_proton_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_uncorrelated_p1.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_un_p1
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_correlated_p1.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_corr_p1
    close(u)

    open(newunit=u, file='db_data/db_weighted_efficiency_target_proton_p2.dat')
        read(u,*) weighted_efficiency_target_proton_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_uncorrelated_p2.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_un_p2
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_correlated_p2.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_corr_p2
    close(u)

    open(newunit=u, file='db_data/db_weighted_efficiency_target_proton_p3.dat')
        read(u,*) weighted_efficiency_target_proton_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_uncorrelated_p3.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_un_p3
    close(u)
    open(newunit=u, file='db_data/db_sigma_weighted_efficiency_target_proton_correlated_p3.dat')
        read(u,*) sigma_weighted_efficiency_target_proton_corr_p3
    close(u)

    open(newunit=u, file='db_data/db_lengths.dat')
        read(u,*) ((lengths(i,j), j=1,RCTS), i=1,ADS)
    close(u)
    open(newunit=u, file='db_data/db_live_time_days_per_ad.dat')
        read(u,*) ((live_time_days_per_ad(i,j), j=1,ADS), i=1,3)
    close(u)
    open(newunit=u, file='db_data/db_prompt_energy_bines.dat')
        read(u,*) ((prompt_energy_bines(i,j), j=1,2), i=1,NBIN)
    close(u)
    
    
    return
end subroutine db_read_data
        
    
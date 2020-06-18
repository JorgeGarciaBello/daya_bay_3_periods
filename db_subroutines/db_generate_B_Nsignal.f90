subroutine db_generate_B_Nsignal()
    implicit none
    call db_generate_thermal_power()
    call db_generate_fission_fraction()
    call db_generate_average_energy_released_per_fission()
    call db_generate_reactor_flux_model()
    !call db_generate_energy_released_per_fission()
    

    call db_generate_cross_section()
    !call db_generate_weighted_efficiency_target_proton()
    !call db_generate_energy()
    !call db_generate_spectra_model()
    return
end subroutine db_generate_B_Nsignal
module db_data
    use types, only: dp
    implicit none
    integer,parameter :: PD=3            ! PD is the number of period of data taking
    integer,parameter :: NDIM=23         ! NDIM is the number of pull parameters    
    integer,parameter :: ADS=8           ! ADS is the number of detectors    
    integer,parameter :: RCTS=6          ! RCTS is the number of reactors
    integer,parameter :: RIR=4           ! RIR is the number of radioactive isotopes in the reactors     
    integer,parameter :: NBIN=26         ! NBIN is the number of energy's bin        
    integer,parameter :: n=20             ! size of the grid
    integer,parameter :: num_experiments=125
    integer,parameter :: randDis=2        ! distribución normal => 1 ||  distribución uniforme 2

    real(dp) :: rand_Nthermalpower_p1(NBIN*2,RCTS,num_experiments)
    real(dp) :: rand_Nfissionfraction_p1(NBIN*2,RIR,num_experiments)
    real(dp) :: rand_Navrgenergyperfission_p1(NBIN*2,1,num_experiments)
    real(dp) :: rand_Nreactorfluxmodel_p1(NBIN*2,num_experiments)

    real(dp) :: rand_Nthermalpower_p2(NBIN*2,RCTS,num_experiments)
    real(dp) :: rand_Nfissionfraction_p2(NBIN*2,RIR,num_experiments)
    real(dp) :: rand_Navrgenergyperfission_p2(NBIN*2,1,num_experiments)
    real(dp) :: rand_Nreactorfluxmodel_p2(NBIN*2,num_experiments)

    real(dp) :: rand_Nthermalpower_p3(NBIN*2,RCTS,num_experiments)
    real(dp) :: rand_Nfissionfraction_p3(NBIN*2,RIR,num_experiments)
    real(dp) :: rand_Navrgenergyperfission_p3(NBIN*2,1,num_experiments)
    real(dp) :: rand_Nreactorfluxmodel_p3(NBIN*2,num_experiments)

    real(dp) :: rand_Ncrosssection_p1(NBIN*2,1,num_experiments)
    real(dp) :: rand_Ncrosssection_p2(NBIN*2,1,num_experiments)
    real(dp) :: rand_Ncrosssection_p3(NBIN*2,1,num_experiments)

    real(dp) :: rand_Nweightedefficiencytp_p1(NBIN*2,ADS,num_experiments)
    real(dp) :: rand_Nweightedefficiencytp_p2(NBIN*2,ADS,num_experiments)
    real(dp) :: rand_Nweightedefficiencytp_p3(NBIN*2,ADS,num_experiments)
    !real(dp) :: rand_Nenergy_p1(NBIN,num_experiments)
    !real(dp) :: rand_Nspectramodel_n_p1(NBIN*2,num_experiments)
    !real(dp) :: rand_Nspectramodel_f_p1(NBIN*2,num_experiments)

    real(dp) :: thermal_power_p1(RCTS)
    real(dp) :: sigma_thermal_power_p1(RCTS)
    real(dp) :: fission_fraction_p1(RIR)
    real(dp) :: sigma_fission_fraction_p1(RIR)
    real(dp) :: average_energy_released_per_fission_p1
    real(dp) :: sigma_average_energy_released_per_fission_p1
    real(dp) :: reactor_flux_model_p1(NBIN)
    real(dp) :: sigma_reactor_flux_model_p1(NBIN)

    real(dp) :: thermal_power_p2(RCTS)
    real(dp) :: sigma_thermal_power_p2(RCTS)
    real(dp) :: fission_fraction_p2(RIR)
    real(dp) :: sigma_fission_fraction_p2(RIR)
    real(dp) :: average_energy_released_per_fission_p2
    real(dp) :: sigma_average_energy_released_per_fission_p2
    real(dp) :: reactor_flux_model_p2(NBIN)
    real(dp) :: sigma_reactor_flux_model_p2(NBIN)

    real(dp) :: thermal_power_p3(RCTS)
    real(dp) :: sigma_thermal_power_p3(RCTS)
    real(dp) :: fission_fraction_p3(RIR)
    real(dp) :: sigma_fission_fraction_p3(RIR)
    real(dp) :: average_energy_released_per_fission_p3
    real(dp) :: sigma_average_energy_released_per_fission_p3
    real(dp) :: reactor_flux_model_p3(NBIN)
    real(dp) :: sigma_reactor_flux_model_p3(NBIN)

    real(dp) :: cross_section_p1(NBIN)
    real(dp) :: sigma_cross_section_p1(NBIN)
    real(dp) :: cross_section_p2(NBIN)
    real(dp) :: sigma_cross_section_p2(NBIN)
    real(dp) :: cross_section_p3(NBIN)
    real(dp) :: sigma_cross_section_p3(NBIN)

    real(dp) :: weighted_efficiency_target_proton_p1(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_un_p1(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_corr_p1(ADS)
    real(dp) :: weighted_efficiency_target_proton_p2(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_un_p2(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_corr_p2(ADS)
    real(dp) :: weighted_efficiency_target_proton_p3(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_un_p3(ADS)
    real(dp) :: sigma_weighted_efficiency_target_proton_corr_p3(ADS)

    real(dp) :: lengths(ADS,RCTS)
    real(dp) :: live_time_days_per_ad(3,ADS)
    real(dp) :: prompt_energy_bines(NBIN,2)
    

    
end module db_data
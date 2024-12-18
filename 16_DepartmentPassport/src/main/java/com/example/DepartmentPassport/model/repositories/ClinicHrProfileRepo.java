package com.example.DepartmentPassport.model.repositories;


import com.example.DepartmentPassport.model.entity.ClinicHrProfile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClinicHrProfileRepo extends JpaRepository<ClinicHrProfile, Long> {
    @Query("select clinicHrProfile from ClinicHrProfile clinicHrProfile where clinicHrProfile.clinicHrStatus <> '2'")
    Page<ClinicHrProfile> findAllNotDeleted(Pageable request);
}

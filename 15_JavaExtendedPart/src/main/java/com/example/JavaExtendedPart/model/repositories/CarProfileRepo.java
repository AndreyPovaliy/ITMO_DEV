package com.example.JavaExtendedPart.model.repositories;

import com.example.JavaExtendedPart.model.entity.CarProfile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CarProfileRepo extends JpaRepository<CarProfile, Long> {

    @Query("select carProfile from CarProfile carProfile where carProfile.carStatus <> '2'")
    Page<CarProfile> findAllNotDeleted(Pageable request);
}

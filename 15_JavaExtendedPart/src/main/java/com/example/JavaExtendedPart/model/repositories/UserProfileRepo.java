package com.example.JavaExtendedPart.model.repositories;

import com.example.JavaExtendedPart.model.entity.UserProfile;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserProfileRepo extends JpaRepository <UserProfile, Long> {

    Optional <UserProfile> findAllByEmail(String email);

}

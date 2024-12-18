package com.example.JavaExtendedPart.sevice.impl;

import com.example.JavaExtendedPart.exceptions.CustomException;
import com.example.JavaExtendedPart.model.dto.UserInfoRequest;
import com.example.JavaExtendedPart.model.dto.UserInfoResponse;
import com.example.JavaExtendedPart.model.entity.UserProfile;
import com.example.JavaExtendedPart.model.enums.UserStatus;
import com.example.JavaExtendedPart.model.repositories.UserProfileRepo;
import com.example.JavaExtendedPart.sevice.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserProfileRepo userProfileRepo;
    private final ObjectMapper mapper;

    @Override
    public UserInfoResponse createUser(UserInfoRequest userInfoRequest) {

        String email = userInfoRequest.getEmail();

        if (!EmailValidator.getInstance().isValid(email)){
            throw new CustomException("Invalid email", HttpStatus.BAD_REQUEST);
        }

        userProfileRepo.findAllByEmail(userInfoRequest.getEmail())
                .ifPresent(u -> {
                    throw new CustomException("User already exist", HttpStatus.CONFLICT);
                });

        UserProfile userProfile = mapper.convertValue(userInfoRequest, UserProfile.class);
        userProfile.setCreatedAt(LocalDateTime.now());
        userProfile.setStatus(UserStatus.CREATED);

        UserProfile save = userProfileRepo.save(userProfile);

        return mapper.convertValue(save, UserInfoResponse.class);
    }

    @Override
    public UserInfoResponse getUser(Long id) {
        UserProfile userProfile = getUserProfile(id);
        return mapper.convertValue(userProfile, UserInfoResponse.class);
    }

    @Override
    public UserInfoResponse updateUser(Long id, UserInfoRequest request) {
        UserProfile userProfile = getUserProfile(id);


        userProfile.setAge(request.getAge() == null ? userProfile.getAge() : request.getAge());
        userProfile.setGender(request.getGender() == null ? userProfile.getGender() : request.getGender());
        userProfile.setEmail(StringUtils.isBlank(request.getEmail()) ? userProfile.getEmail() : request.getEmail());
        userProfile.setFirstName(StringUtils.isBlank(request.getFirstName()) ? userProfile.getEmail() : request.getFirstName());
        userProfile.setLastName(StringUtils.isBlank(request.getLastName()) ? userProfile.getLastName() : request.getLastName());
        userProfile.setMiddleName(StringUtils.isBlank(request.getMiddleName()) ? userProfile.getMiddleName() : request.getMiddleName());
        userProfile.setPassword(StringUtils.isBlank(request.getPassword()) ? userProfile.getPassword() : request.getPassword());

        userProfile.setStatus(UserStatus.UPDATED);
        userProfile.setUpdateAt(LocalDateTime.now());

        UserProfile save = userProfileRepo.save(userProfile);

        return mapper.convertValue(save, UserInfoResponse.class);

    }

    @Override
    public void deleteUser(Long id) {
        UserProfile userProfile = getUserProfile(id);

        userProfile.setStatus(UserStatus.DELETED);
        userProfile.setUpdateAt(LocalDateTime.now());

        userProfileRepo.save(userProfile);


    }

    @Override
    public UserProfile getUserProfile(Long id) {
        return userProfileRepo.findById(id)
                .orElseThrow(() -> new CustomException("User is not found", HttpStatus.NOT_FOUND));
    }

    @Override
    public void updateCarList(UserProfile userProfile) {
        userProfileRepo.save(userProfile);
    }

    @Override
    public List<UserInfoResponse> getAllUsers() {
        return userProfileRepo.findAll().stream()
                .filter(u -> u.getStatus() != UserStatus.DELETED)
                .map(u -> mapper.convertValue(u, UserInfoResponse.class))
                .collect(Collectors.toList());
    }
}

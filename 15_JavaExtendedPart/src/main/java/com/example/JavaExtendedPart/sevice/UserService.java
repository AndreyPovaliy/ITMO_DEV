package com.example.JavaExtendedPart.sevice;

import com.example.JavaExtendedPart.model.dto.UserInfoRequest;
import com.example.JavaExtendedPart.model.dto.UserInfoResponse;
import com.example.JavaExtendedPart.model.entity.UserProfile;

import java.util.List;

public interface UserService {
    UserInfoResponse createUser(UserInfoRequest userInfoRequest);

    UserInfoResponse getUser(Long id);

    UserInfoResponse updateUser(Long id, UserInfoRequest userInfoRequest);

    void deleteUser(Long id);

    UserProfile getUserProfile(Long id);

    void updateCarList(UserProfile userProfile);

    List<UserInfoResponse> getAllUsers();
}

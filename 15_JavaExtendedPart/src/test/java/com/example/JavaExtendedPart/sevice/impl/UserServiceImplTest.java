package com.example.JavaExtendedPart.sevice.impl;

import com.example.JavaExtendedPart.exceptions.CustomException;
import com.example.JavaExtendedPart.model.dto.UserInfoRequest;
import com.example.JavaExtendedPart.model.dto.UserInfoResponse;
import com.example.JavaExtendedPart.model.entity.UserProfile;
import com.example.JavaExtendedPart.model.enums.UserStatus;
import com.example.JavaExtendedPart.model.repositories.UserProfileRepo;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.catalina.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.MockitoJUnitRunner;


import java.util.Optional;
import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceImplTest {
    @InjectMocks
    private UserServiceImpl userService;
    @Mock
    private UserProfileRepo userProfileRepo;
    @Spy
    private ObjectMapper mapper;

//    @After
//    public void tearDown() throws Exception {
//    }

    @Test
    public void createUser() {
        UserInfoRequest userInfoRequest = new UserInfoRequest();
        userInfoRequest.setEmail("test@test.com");

        UserProfile userProfile = new UserProfile();
        userProfile.setId(1L);

        when(userProfileRepo.save(any(UserProfile.class))).thenReturn(userProfile);

        UserInfoResponse result = userService.createUser(userInfoRequest);
        assertEquals(Optional.of(1L), Optional.of(result.getId()));
    }

    @Test(expected = CustomException.class)
    public  void createUser_badEmail () {
        UserInfoRequest userInfoRequest = new UserInfoRequest();
        userInfoRequest.setEmail("test@.test.com");

        userService.createUser(userInfoRequest);

    }
    @Test(expected = CustomException.class)
    public  void create_UserExist (){
        UserInfoRequest userInfoRequest = new UserInfoRequest();
        userInfoRequest.setEmail("test@test.com");

        UserProfile userProfile = new UserProfile();
        userProfile.setId(1L);
        when(userProfileRepo.findAllByEmail(anyString())).thenReturn(Optional.of(userProfile));

        userService.createUser(userInfoRequest);
    }

    @Test
    public void getUser() {
        UserProfile userProfile = new UserProfile();
        userProfile.setId(1L);

        when(userProfileRepo.findById(1L)).thenReturn(Optional.of(userProfile));

        UserInfoResponse result = userService.getUser(1L);
        assertEquals(Optional.of(1L), Optional.of(result.getId()));
        assertEquals(userProfile.getId(), result.getId());


    }


    @Test
    public void updateUser() {
    }

    @Test
    public void deleteUser() {
        UserProfile userProfile = new UserProfile();
        userProfile.setId(1L);

        when (userProfileRepo.findById(1L)).thenReturn(Optional.of(userProfile));

        userService.deleteUser(1L);
        verify(userProfileRepo, times(1)).save(any(UserProfile.class));
        assertEquals(UserStatus.DELETED, userProfile.getStatus());
    }

    @Test
    public void getUserProfile() {
    }

    @Test
    public void updateCarList() {
    }

    @Test
    public void getAllUsers() {
    }

    @Test
    public void testCreateUser() {
    }

    @Test
    public void testGetUser() {
    }

    @Test
    public void testUpdateUser() {
    }

    @Test
    public void testDeleteUser() {
    }

    @Test
    public void testGetUserProfile() {
    }

    @Test
    public void testUpdateCarList() {
    }

    @Test
    public void testGetAllUsers() {
    }
}
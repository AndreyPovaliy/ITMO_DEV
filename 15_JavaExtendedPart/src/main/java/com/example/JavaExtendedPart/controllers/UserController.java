package com.example.JavaExtendedPart.controllers;

import com.example.JavaExtendedPart.model.dto.UserInfoRequest;
import com.example.JavaExtendedPart.model.dto.UserInfoResponse;
import com.example.JavaExtendedPart.sevice.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name ="users")
@RestController
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {


    private final UserService userService;

    @PostMapping
    @Operation(summary = "create user")
    public UserInfoResponse createUser(@RequestBody UserInfoRequest userInfoRequest) {

        return userService.createUser(userInfoRequest);
    }

    @GetMapping("/{id}")
    @Operation (summary = "get user")
    public UserInfoResponse readUser(@PathVariable Long id) {

        return userService.getUser(id);
    }

    @PutMapping("/{id}")
    @Operation (summary = "update user")
    public UserInfoResponse updateUser(@PathVariable Long id, @RequestBody UserInfoRequest userInfoRequest) {
        return userService.updateUser(id, userInfoRequest);
    }

    @DeleteMapping
    @Operation (summary = "delete user")
    public void deleteUser(@PathVariable Long id) {

        userService.deleteUser(id);
    }

    @GetMapping("/all")
    @Operation (summary = "get all users")
    public List<UserInfoResponse> getAllUsers() {

        return userService.getAllUsers();
    }

}



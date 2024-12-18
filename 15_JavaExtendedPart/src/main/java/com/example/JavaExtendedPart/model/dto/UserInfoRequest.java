package com.example.JavaExtendedPart.model.dto;

import com.example.JavaExtendedPart.model.enums.Gender;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserInfoRequest {

    @NotNull
    String email;
    String password;
    String firstName;
    String lastName;
    String middleName;
    Integer age;
    Gender gender;
}

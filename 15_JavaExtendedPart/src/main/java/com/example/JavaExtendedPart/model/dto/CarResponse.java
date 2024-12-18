package com.example.JavaExtendedPart.model.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
@ToString
public class CarResponse extends  CarRequest{
    Long id;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    UserInfoResponse user;
}

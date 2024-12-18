package com.example.JavaExtendedPart.model.dto;


import com.example.JavaExtendedPart.model.enums.CarType;
import com.example.JavaExtendedPart.model.enums.Color;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CarRequest {

    String brand;
    String model;
    Color color;
    Integer year;
    CarType carType;
    Long price;
    Boolean isNew;

}

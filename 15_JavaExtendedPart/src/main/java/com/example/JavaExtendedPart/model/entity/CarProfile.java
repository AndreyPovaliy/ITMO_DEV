package com.example.JavaExtendedPart.model.entity;


import com.example.JavaExtendedPart.model.enums.CarStatus;
import com.example.JavaExtendedPart.model.enums.CarType;
import com.example.JavaExtendedPart.model.enums.Color;
import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name ="cars")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CarProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String brand;
    String model;
    Color color;
    Integer year;
    @Column (name = "car_type")
    CarType carType;
    Long price;
    @Column (name = "is_new")
    Boolean isNew;

    @ManyToOne
    @JsonBackReference(value="driver_cars")
    UserProfile userProfile;

    @Column (name = "created_at")
    LocalDateTime createdAt;

    @Column (name = "update_at")
    LocalDateTime updateAt;

    @Enumerated(EnumType.STRING)
    CarStatus carStatus;


}

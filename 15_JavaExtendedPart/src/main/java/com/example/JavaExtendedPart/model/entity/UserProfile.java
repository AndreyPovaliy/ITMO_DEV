package com.example.JavaExtendedPart.model.entity;

import com.example.JavaExtendedPart.model.enums.Gender;
import com.example.JavaExtendedPart.model.enums.UserStatus;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name ="users")
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String email;
    String password;
    @Column (name = "first_name")
    String firstName;
    @Column (name = "last_name")
    String lastName;
    @Column (name = "middle_name")
    String middleName;

    Integer age;
    Gender gender;

    @Column (name = "created_at")
    LocalDateTime createdAt;

    @Column (name = "update_at")
    LocalDateTime updateAt;

    @Enumerated(EnumType.STRING)
    UserStatus status;


    @OneToMany
    @JsonManagedReference (value="driver_cars")
    List<CarProfile> carProfiles;
}

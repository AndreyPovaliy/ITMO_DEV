package com.example.JavaExtendedPart.sevice.impl;

import com.example.JavaExtendedPart.exceptions.CustomException;
import com.example.JavaExtendedPart.model.dto.CarRequest;
import com.example.JavaExtendedPart.model.dto.CarResponse;
import com.example.JavaExtendedPart.model.dto.UserInfoResponse;
import com.example.JavaExtendedPart.model.entity.CarProfile;
import com.example.JavaExtendedPart.model.entity.UserProfile;
import com.example.JavaExtendedPart.model.enums.CarStatus;
import com.example.JavaExtendedPart.model.repositories.CarProfileRepo;
import com.example.JavaExtendedPart.sevice.CarService;
import com.example.JavaExtendedPart.sevice.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;


import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.example.JavaExtendedPart.utils.PaginationUtil.getPageRequest;

@Slf4j
@Service
@RequiredArgsConstructor
public class CarServiceImpl implements CarService {
    private final CarProfileRepo carProfileRepo;
    private final ObjectMapper mapper;
    private final UserService userService;

    @Override
    public CarResponse createCar(CarRequest carRequest) {
        CarProfile carProfile = mapper.convertValue(carRequest, CarProfile.class);
        carProfile.setCreatedAt(LocalDateTime.now());
        carProfile.setCarStatus(CarStatus.CREATED);

        CarProfile save = carProfileRepo.save(carProfile);

        return mapper.convertValue(save, CarResponse.class);
    }

    @Override
    public CarResponse getCar(Long id) {
        CarProfile car = getCarById(id);
        return mapper.convertValue(car, CarResponse.class);

    }

    private CarProfile getCarById (Long id) {
        return carProfileRepo.findById(id)
                .orElseThrow(() -> new CustomException("Car is not found", HttpStatus.NOT_FOUND));

    }

    @Override
    public CarResponse updateCar(Long id, CarRequest request) {
        CarProfile car = getCarById(id);

        car.setBrand(StringUtils.isBlank(request.getBrand()) ? car.getBrand() : request.getBrand());
        car.setModel(StringUtils.isBlank(request.getModel()) ? car.getModel() : request.getModel());
        car.setColor(request.getColor() == null ? car.getColor() : request.getColor());
        car.setYear(request.getYear() == null ? car.getYear() : request.getYear());
        car.setCarType(request.getCarType() == null ? car.getCarType() : request.getCarType());
        car.setPrice(request.getPrice() == null ? car.getPrice() : request.getPrice());
        car.setIsNew(request.getIsNew() == null ? car.getIsNew() : request.getIsNew());

        car.setCarStatus(CarStatus.UPDATED);
        car.setUpdateAt(LocalDateTime.now());

        CarProfile save = carProfileRepo.save(car);

        return mapper.convertValue(save, CarResponse.class);
    }

    @Override
    public void deleteCar(Long id) {

        CarProfile car = getCarById(id);
            car.setCarStatus(CarStatus.DELETED);
            car.setUpdateAt(LocalDateTime.now());

            carProfileRepo.save(car);


    }

    @Override
    public Page<CarResponse> getAllCars(Integer page, Integer perPage, String sort, Sort.Direction order) {

        Pageable pageRequest = getPageRequest(page, perPage, sort, order);

        Page<CarProfile> pageList = carProfileRepo.findAllNotDeleted(pageRequest);
        List<CarResponse> responses = pageList.getContent().stream()
                .map(c -> mapper.convertValue(c, CarResponse.class))
                .collect(Collectors.toList());
        return new PageImpl<>(responses);

    }

    @Override
    public CarResponse addCarToUser(Long carId, Long userId) {
        CarProfile carProfile = getCarById(carId);
        UserProfile userProfile = userService.getUserProfile(userId);

        userProfile.getCarProfiles().add(carProfile);
        userService.updateCarList(userProfile);

        carProfile.setUserProfile(userProfile);
        CarProfile save = carProfileRepo.save(carProfile);

        CarResponse carResponse = mapper.convertValue(save, CarResponse.class);
        UserInfoResponse user = mapper.convertValue(userProfile, UserInfoResponse.class);
        carResponse.setUser(user);

        return carResponse;
    }
}

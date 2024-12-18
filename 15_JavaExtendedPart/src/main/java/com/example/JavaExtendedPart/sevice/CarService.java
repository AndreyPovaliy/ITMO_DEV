package com.example.JavaExtendedPart.sevice;

import com.example.JavaExtendedPart.model.dto.CarRequest;
import com.example.JavaExtendedPart.model.dto.CarResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

public interface CarService {
    CarResponse createCar (CarRequest carRequest);

    CarResponse getCar (Long id);

    CarResponse updateCar (Long id, CarRequest CarRequest);

    void deleteCar (Long id);

    Page<CarResponse> getAllCars(Integer page, Integer perPage, String sort, Sort.Direction order);

    CarResponse addCarToUser(Long carId, Long userId);
}

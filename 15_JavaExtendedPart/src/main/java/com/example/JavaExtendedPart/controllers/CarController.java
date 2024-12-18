package com.example.JavaExtendedPart.controllers;

import com.example.JavaExtendedPart.model.dto.CarRequest;
import com.example.JavaExtendedPart.model.dto.CarResponse;
import com.example.JavaExtendedPart.sevice.CarService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;



@Tag(name="cars")
@RestController
@RequestMapping("/cars")
@RequiredArgsConstructor
public class CarController {

    private final CarService carService;

    @PostMapping
    @Operation (summary = "create car")
    public CarResponse createCar(@RequestBody CarRequest carRequest) {

        return carService.createCar(carRequest);
    }

    @GetMapping("/{id}")
    @Operation (summary = "get car")
    public CarResponse readCar(@PathVariable Long id) {

        return carService.getCar(id);
    }

    @PutMapping("/{id}")
    @Operation (summary = "update car")
    public CarResponse updateCar(@PathVariable Long id, @RequestBody CarRequest carRequest) {
        return carService.updateCar(id, carRequest);
    }

    @DeleteMapping
    @Operation (summary = "delete car")
    public void deleteCar(@PathVariable Long id) {

        carService.deleteCar(id);
    }

    @GetMapping("/all")
    @Operation (summary = "get all cars")
    public Page<CarResponse> getAllCars(@RequestParam (defaultValue = "1") Integer page,
                                        @RequestParam (defaultValue = "10") Integer perPage,
                                        @RequestParam (defaultValue = "brand") String sort,
                                        @RequestParam (defaultValue = "ASC") Sort.Direction order

                                        ) {

        return carService.getAllCars(page,perPage,sort,order);
    }

    @PostMapping("/addCarToUser/{carId}/{userId}")
    @Operation (summary = "add car to user")
    public CarResponse addCarToUser(@PathVariable Long carId, @PathVariable Long userId) {
        return carService.addCarToUser(carId, userId);
    }

}


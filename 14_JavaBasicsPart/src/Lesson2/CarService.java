package Lesson2;

public class CarService {
    public static long totalPrice(Car car, Integer servicePrice){
        if (servicePrice==null){
            return car.getPrice();
        } else {
            return car.getPrice() + servicePrice;
        }
    }
}

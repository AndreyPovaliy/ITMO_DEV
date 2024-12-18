package Lesson2;

import static Lesson2.CarService.totalPrice;

public class Main {
    public static void main(String[] args) {

        Car car = new Car();

        Car car1 = new Car("Lada", "Vesta", true, Color.WHITE);
        car1.setSeatPlace(5);
        car1.setPrice(10000L);
        car1.setEngineCapacity(2.0);

        System.out.println(car);
        System.out.println(car1);

        long totalPrice = totalPrice(car1, 3000);

        System.out.println(totalPrice);

    }

    public static String someMethod(String word) {
        String localString;

        if (word == null) {
            localString = "word is null";

        } else {
            localString = "word is:" + word;

        }
        System.out.println(localString);
        return  word;

    }

}

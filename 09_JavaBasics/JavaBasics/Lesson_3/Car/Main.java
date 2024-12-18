package JavaBasics.Lesson_3.Car;


public class Main {
    public static void main(String[] args) {
        Car lada = new Car(Colour.BLACK, "X-RAY", 1085.5);
        Car uaz = new Car(Colour.GREEN, "PATRIOT", 1650.0);
        Car kia = new Car(Colour.RED);
        Car volga = new Car(Colour.GREEN, 1250.0);
        Car futurecar = new Car();

        System.out.println(lada);
        System.out.println(uaz);
        System.out.println(kia);
        System.out.println(volga);
        System.out.println(futurecar);

    }
}

package JavaBasics.Lesson_6.Car;

public class Main {
    public static void main(String[] args) {
        Car volga = new Car(1700, "Volga", 'w', 140);
        Car gazel = new Cargo(3300, "Gazel", 'b', 120, 4, 4000);
        volga.outPut();
        gazel.outPut();
    }

}

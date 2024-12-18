package Lesson6;

public class Bus extends Transport implements SomeInterface {

    public Bus(Integer weight, Integer seatPlace, Boolean isFly) {
        super(weight, seatPlace, isFly);
    }

    @Override
    public void printTransportInfo() {
        System.out.println(transportName());
    }

    @Override
    public String transportName() {
        return "SCANIA";
    }

    @Override
    public void info() {
        System.out.println("info");
    }

    @Override
    void abstractMethod() {

    }
}

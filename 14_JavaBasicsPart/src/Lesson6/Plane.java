package Lesson6;

public class Plane extends Transport{
    public Plane(Integer weight, Integer seatPlace, Boolean isFly) {
        super(weight, seatPlace, isFly);
    }

    @Override
    void abstractMethod() {

    }

    @Override
    public void printTransportInfo()  {
        System.out.println(transportName());
    }

    @Override
    public String transportName() {
        return "superJet";
    }
}

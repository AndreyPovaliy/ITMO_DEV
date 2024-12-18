package Lesson6;

public abstract class Transport implements Moveable {
    private Integer weight;
    private Integer seatPlace;
    private Boolean isFly;

    public Transport(Integer weight, Integer seatPlace, Boolean isFly) {
        this.weight = weight;
        this.seatPlace = seatPlace;
        this.isFly = isFly;
    }

    abstract void abstractMethod();
}

package JavaBasics.Lesson_3.Car;

import JavaBasics.Lesson_2.Bicycle.Color;

public class Car {
    private Colour colour;
    private String name;
    private Double weight;

    public Colour getColour() {
        return colour;
    }

    public void setColour(Colour colour) {
        this.colour = colour;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Car(Colour colour, String name, Double weight) {
        this.colour = colour;
        this.name = name;
        this.weight = weight;
    }

    public Car(Colour colour) {
        this.colour = colour;
    }

    public Car(Colour colour, Double weight) {
        this.colour = colour;
        this.weight = weight;
    }

    public Car() {
    }

    @Override
    public String toString() {
        return "Эта машина имеет " +
                "цвет=" + colour +
                ", название='" + name + '\'' +
                ", вес=" + weight +
                '.';
    }
}





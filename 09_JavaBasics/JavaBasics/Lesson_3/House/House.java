package JavaBasics.Lesson_3.House;

public class House {
    private Integer floor;
    private Integer year;
    private String name;

    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public House(Integer floor, Integer year, String name) {
        this.floor = floor;
        this.year = year;
        this.name = name;
    }

    @Override
    public String toString() {
        int age = 2023 - year;
        return "Дом имеет " +
                floor + " этажей," +
                year + " года постройки." +
                "Его название " + name +
                "Дом имеет " +
                age + " лет с момента постройки.";
    }


}


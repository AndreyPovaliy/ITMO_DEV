package JavaBasics.Lesson_6.Car;

public class Cargo extends Car {
    private Integer numberWheels;
    private Integer maxWight;

    public static Integer newWheels(Integer number) {
        return number;

    }

    public Cargo(int w, String m, char c, float s, Integer numberWheels, Integer maxWight) {
        super(w, m, c, s);
        this.numberWheels = numberWheels;
        this.maxWight = maxWight;
    }

    @Override
    public void outPut() {
        System.out.println("Вес " + model + " составляет " + weight + "кг.");
        System.out.println("Цвет машины - " + color + " и её скорость - " + speed);
        System.out.println("Количество колес машины - " + numberWheels + " максимальный вес - " + maxWight + "кг.");
    }


}

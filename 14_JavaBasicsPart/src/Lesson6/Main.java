package Lesson6;

import java.lang.reflect.Field;

public class Main {
    public static void main(String[] args) {
//        использование рефлексии, обращение к инкапсулированным полям, нарушение инкупсуляции
        Car car = new Car();
        Field[] declaredFields = car.getClass().getDeclaredFields();

        for (Field declaredField : declaredFields) {
            System.out.println(declaredField);
        }

        // суперкласс в java это object
        Object object = new Object();

        Parent parent = new Parent("");
        Parent child = new Child("");
        Parent anotherChild = new AnotherChild("");

        parent.print();
        child.print();
        anotherChild.print();

//        ошибка classCastExeption
//        ((Child)parent).print();

//        printInfo(parent);
//        printInfo(child);
//        printInfo(anotherChild);

//        Moveable scania = new Bus();
//        Moveable lada = new Car();
//        создание анонимного класса
//        Moveable moveable = new Moveable() {
//            @Override
//            public void printTransportInfo() {
//
//            }
//
//            @Override
//            public String transportName() {
//                return null;
//            }
//        };
//        printInfo(scania);
//        printInfo(lada);

        Transport scania = new Bus(400, 30, false);
        Transport superJet = new Plane(4000, 130, true);

        printInfo(scania);
        printInfo(superJet);
//        множественное наследование запрещено
    }

    public static void printInfo(Parent parent) {
        parent.print();
    }

    public static void printInfo(Moveable moveable) {
        moveable.printTransportInfo();
    }
}

package Lesson6;

public interface Moveable {
//    полиморфизм может быть как статический (перегрузка метода)
//    так динамический

    // public static final по умолчанию
    public static final String BRAND = "BMW";

//    public abstract по умолчанию
    public abstract void printTransportInfo();

    String transportName();

//    метод изначально абстрактный и для определения нужен default
    default void someMethod(){
        System.out.println("someMethod");
    }

    // public везде в java 8, но в java 11 есть private
    public static void staticMethod(){

    }
}

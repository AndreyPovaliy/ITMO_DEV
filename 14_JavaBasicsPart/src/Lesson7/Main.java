package Lesson7;

public class Main {
    public static void main(String[] args) {
//        OuterClass.InnerClass innerClass = new OuterClass.InnerClass(); <-- нет доступа снаружи к обычному вложенному внутреннему классу
    }

    public void some() {
//        OuterClass.InnerClass innerClass = new OuterClass.InnerClass(); <-- нет доступа снаружи, вне зависимости от модификатора
        OuterClass.NestedStaticClass nestedStaticClass = new OuterClass.NestedStaticClass();
        nestedStaticClass.methodNestedStaticClass();

// создание на основе интерфейса вызывает неявно класс
        Some anonymous = new Some() {
            @Override
            public void print() {
                System.out.println(name());
            }

            @Override
            public String name() {
                return "John";
            }
        };

        anonymous.print();

    }

}

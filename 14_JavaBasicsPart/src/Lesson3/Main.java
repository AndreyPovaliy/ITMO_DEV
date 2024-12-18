package Lesson3;

import static Lesson3.StaticExample.STATIC_CONSTANT;

public class Main {
    public static void main(String[] args) {
        //или так, или через импорт
        // String staticConstant = StaticExample.STATIC_CONSTANT;
        String staticConstant = STATIC_CONSTANT;
        System.out.println(staticConstant);

        Singleton singleton = Singleton.getInstance();
        System.out.println(singleton);

        Sun sun = Sun.getSun();
        sun.setSize(123);
        sun.setColor("white");

        Sun sun2 = Sun.getSun();
        sun2.setSize(777);
        sun2.setColor("yellow");

        System.out.println(sun);
        System.out.println(sun2);
    }
}

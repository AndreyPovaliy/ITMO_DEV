package JavaBasics.Lesson_4.Part_1;


public class Programs_1 {

    static void oddNumber() {
        System.out.println("Задание №1");
        for (int i = 1; i <= 99; i++) {
            if (i % 2 != 0) {
                System.out.println(i);
            }
        }
    }

    static void divisibleTreeFive() {
        System.out.println("Задание №2");
        for (int i = 1; i <= 100; i++) {
            if (i % 3 == 0) {
                System.out.println("Делятся на 3:");
                System.out.println(i);
            }
        }
        for (int i = 1; i <= 100; i++) {
            if (i % 5 == 0) {
                System.out.println("Делятся на 5:");
                System.out.println(i);
            }
        }
        for (int i = 1; i <= 100; i++) {
            if (i % 3 == 0 & i % 5 == 0) {
                System.out.println("Делятся на 3 и 5:");
                System.out.println(i);
            } else continue;
        }
    }


    static void sumNumberTrue(int number_1, int number_2, int number_3) {
        System.out.println("Задание №3");
        boolean isSumIsRight;
        if (number_1 + number_2 == number_3) {
            isSumIsRight = true;
            System.out.println(isSumIsRight);

        } else {
            isSumIsRight = false;
            System.out.println(isSumIsRight);
        }
    }

    static void moreThenOtherTrue(int number_1, int number_2, int number_3) {
        System.out.println("Задание №4");
        boolean isMoreTenOther;
        if (number_2 > number_1 && number_3 > number_2) {
            isMoreTenOther = true;
            System.out.println(isMoreTenOther);

        } else {
            isMoreTenOther = false;
            System.out.println(isMoreTenOther);
        }
    }

    static void arrayBeginThreeMoreTwo(int[] array) {
        System.out.println("Задание №5");
        boolean isAllRight;
        if (array.length >= 2) {
            if (array[0] == 3 && array[array.length - 1] == 3) {
                isAllRight = true;
                System.out.println(isAllRight);
            } else {
                isAllRight = false;
                System.out.println("Числа 3 как первый или последний элемент массива целых чисел не являются!\n" + isAllRight);
            }
        } else {
            isAllRight = false;
            System.out.println("Длина массива должна быть больше или равна двум!\n" + isAllRight);
        }
    }

    static void arrayIsOneAndThree(int[] array) {
        System.out.println("Задание №6");
        boolean isOneAndThree = false;
        for (int item : array) {
            if (item == 1 || item == 3) {
                isOneAndThree = true;
                break;
            }

        }
        System.out.println(isOneAndThree);
    }
}



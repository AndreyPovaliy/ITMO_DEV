package JavaBasics.Lesson_4.Part_2;

import java.util.Arrays;
import java.util.Scanner;

public class Programs_2 {
    static void sortArray(int[] array) {
        System.out.println("Задание №1");
        boolean isSort = false;
        for (int i = 0; i <= (array.length - 1); i++) {
            if (array[i] < array[i + 1]) {
                isSort = true;
                break;
            } else {
                isSort = false;
            }
        }
        System.out.println(isSort);
    }

    static void newArray() {
        System.out.println("Задание №2");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Какая длинна массива?");
        int l = scanner.nextInt();
        int[] array = new int[l];
        System.out.println("Какие элементы массива массива?");
        for (int i = 0; i < l; i++) {
            Scanner scannerNumber = new Scanner(System.in);
            array[i] = scannerNumber.nextInt();
        }
        System.out.println("Результат:" + Arrays.toString(array));
    }

    static void changePlaces(int[] array) {
        System.out.println("Задание №3");
        int[] replacedArray = new int[array.length];
        replacedArray[0] = array[array.length - 1];
        replacedArray[array.length - 1] = array[0];
        for (int i = 1; i < array.length - 1; i++) {
            replacedArray[i] = array[i];
        }
        System.out.println("Array 1:" + Arrays.toString(array));
        System.out.println("Array 2:" + Arrays.toString(replacedArray));
    }

    static void uniqueNum(int[] array) {
        System.out.println("Задание №4");
        int num = 0;
        for (int i = 0; i < array.length; i++) {
            boolean isUni = true;

            for (int j = 0; j < array.length; j++) {
                if (array[i] == array[j] && i != j) {
                    isUni = false;
                    break;
                }
            }
            if (isUni) {
                num = array[i];
                break;
            }
        }
        System.out.println(num);
    }
}









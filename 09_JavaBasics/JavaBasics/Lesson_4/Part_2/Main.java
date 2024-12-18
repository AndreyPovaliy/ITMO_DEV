package JavaBasics.Lesson_4.Part_2;

import JavaBasics.Lesson_4.Part_1.Programs_1;

public class Main {

    public static void main(String[] args) {
        int[] array = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9};
        int[] arraySecond = new int[]{1, 2, 7, 1, 2, 4};
        Programs_2.sortArray(array);
        //Programs_2.newArray();
        Programs_2.changePlaces(array);
        Programs_2.uniqueNum(arraySecond);

    }


}

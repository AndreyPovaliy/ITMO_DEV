package JavaBasics.Lesson_1;

import java.util.Scanner;

public class Task_6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int b = scanner.nextInt();
        String a = "Четное";
        String c = "Нечетное";
        String d = "Выход за пределы";

        if (b > 100) {
            System.out.println(d);
        } else if (b % 2 == 0) {
            System.out.println(a);
        } else {
            System.out.println(c);
        }
    }
}

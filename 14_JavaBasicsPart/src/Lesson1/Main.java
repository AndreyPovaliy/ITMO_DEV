package Lesson1;
// первая программа

import java.util.Scanner;

/* типы данных:
    Примитивные:
                 * логический тип(boolean)
                 * числовые типы
                    Целые (byte, short, int, long, char)
                    Вещественные (float, double)
    Ссылочные (классы, массивы, интерфейсы, переменные типов)

 */
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");

        byte b = 100;
        short s = 123;
        int i = 500;
        long l = 5000000000L;
        float f = 13.3f;
        double d = 14.5d;

        char c = 'a';
        boolean isTrue = true;

        System.out.println(c);
        //результат в int
        int resultInt = b + i;

        //результат в byte
        byte resultByte = (byte) (b + i);
        System.out.println(resultInt);

        long q = b + i;
        // как привести в double, чтобы не потерять остаток
        double var = i / 3;
        double var1 = i * 1.0 / 3;
        double var2 = i / 3.0;
        double var3 = i / 3d;
        double var4 = (double) (i / 3);

        String str = "Java";
        String string = new String("Java");
        System.out.println(str);
        System.out.println(string);


        int x = 10;
        int y = 20;

        if (x == y) {
            System.out.println("equally");
        } else {
            System.out.println("not equally");
        }

        if (x != y) {
            System.out.println("not equally");
        } else {
            System.out.println("equally");
        }

        // x==y; x!=y; x>y; x<y; x>=y; x<=y; x%2==0;
        // && and || or & - проверка второго условия **имперсанты

        if (x != y && x % 2 == 0) {
            System.out.println("not equally and even");
        }

        if (x != y || x % 2 == 0) {
            System.out.println("not equally or even");
        }

        // альтернатива if-else тернарный оператор

        int a = 3;

        String res = a == 5 ? "Yes" : "No";

        System.out.println(res);

        Scanner scanner = new Scanner(System.in);
        String s1 = scanner.nextLine();
        int i1 = scanner.nextInt();

        System.out.println(s1);
        System.out.println(i1);

        String word = switcher(y);
        print(word);

    }

    public static String switcher(Integer number) {
        switch (number) {
            case 10:
                return "ten";
            case 20:
                return "twenty";
            default:
                return "illegal number";

        }
    }

    public static void print(String word) {
        System.out.println(word);
    }
}





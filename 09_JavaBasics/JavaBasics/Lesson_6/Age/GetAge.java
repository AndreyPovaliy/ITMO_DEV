package JavaBasics.Lesson_6.Age;

import java.util.Scanner;

public class GetAge {
    private Integer age;
    Scanner scanner = new Scanner(System.in);

    public Integer getAge() {
        age = scanner.nextInt();
        return age;
    }


}

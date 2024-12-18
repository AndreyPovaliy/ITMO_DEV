package JavaBasics.Lesson_6.Age;

public class GetName extends GetAge {
    public void getInfo() {
        System.out.println("Введите Имя");
        String name = scanner.nextLine();
        System.out.println("Имя: " + name);
        System.out.println("Введите Возраст");
        System.out.println("Возраст: " + getAge());
    }
}

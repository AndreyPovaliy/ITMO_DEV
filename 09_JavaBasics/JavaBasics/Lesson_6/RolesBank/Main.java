package JavaBasics.Lesson_6.RolesBank;

public class Main {
    public static void main(String[] args) {
        Person client = new Client("Ivan", "Zaycev", "Sber");
        client.personInfo();
        client.printOperation();
        Person employee = new BankEmployee("Roman", "Smirnov", "Zauber");
        employee.personInfo();
        employee.printOperation();

    }
}

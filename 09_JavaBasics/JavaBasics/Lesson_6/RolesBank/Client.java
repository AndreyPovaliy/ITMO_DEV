package JavaBasics.Lesson_6.RolesBank;

public class Client extends Person {
    private String bank;

    public Client(String name, String surname, String bank) {
        super(name, surname);
        this.bank = bank;
    }


    @Override
    public void personInfo() {
        System.out.println("Клиент банка " + bank + " " + getName() + " " + getSurname());
    }


    @Override
    public void printOperation() {
        System.out.println("Участвует в операции: " + typeOfOperation());
    }

    @Override
    public String typeOfOperation() {
        return "трансакция";
    }
}

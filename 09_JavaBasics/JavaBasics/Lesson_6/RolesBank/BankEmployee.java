package JavaBasics.Lesson_6.RolesBank;

public class BankEmployee extends Person {
    private String bank;

    public BankEmployee(String name, String surname, String bank) {
        super(name, surname);
        this.bank = bank;
    }

    @Override
    public void personInfo() {
        System.out.println("Служащий банка " + bank + " " + getName() + " " + getSurname());

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

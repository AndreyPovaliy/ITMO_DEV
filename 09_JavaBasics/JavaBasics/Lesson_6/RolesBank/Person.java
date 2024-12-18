package JavaBasics.Lesson_6.RolesBank;

public abstract class Person implements Operation {
    private String name;
    private String surname;


    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }


    public Person(String name, String surname) {
        this.name = name;
        this.surname = surname;
    }

    public abstract void personInfo();


}

package Lesson6;

public class Parent {

    public String field;

    public Parent(String field) {
        this.field = field;
    }

    public void print() {
        System.out.println("Method from :" + this.getClass().getSimpleName() + " class");
    }

    @Override
    public String toString() {
        return "Parent{" +
                "field='" + field + '\'' +
                '}';
    }
}

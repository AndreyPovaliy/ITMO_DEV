package Lesson6;

public class Child extends Parent {

    public Child(String field) {
        super(field);
    }

    @Override
    public void print(){
        System.out.println("Overridden child method");
    }
}

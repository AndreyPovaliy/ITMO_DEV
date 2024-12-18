package Lesson6;

public class AnotherChild extends Parent {

    public AnotherChild(String field) {
        super(field);
    }

    @Override
    public void print(){
        System.out.println("Overridden anotherChild method");
    }
}

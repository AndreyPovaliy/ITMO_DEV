package JavaBasics.Lesson_3.Tree;

public class Tree {
    private Integer age;
    private Boolean alive;
    private String name;

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Boolean getAlive() {
        return alive;
    }

    public void setAlive(Boolean alive) {
        this.alive = alive;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Tree(Integer age, String name) {
        this.age = age;
        this.name = name;
    }

    public Tree(Integer age, Boolean alive, String name) {
        this.age = age;
        this.alive = alive;
        this.name = name;
    }

    public Tree() {
        System.out.println("Пустой конструктор без параметров сработал");
    }

    @Override
    public String toString() {
        return "Tree{" +
                "age=" + age +
                ", alive=" + alive +
                ", name='" + name + '\'' +
                '}';
    }
}

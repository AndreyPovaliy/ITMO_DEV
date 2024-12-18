package JavaBasics.Lesson_3.Tree;

public class Main {
    public static void main(String[] args) {
        Tree tree_A = new Tree();
        Tree tree_B = new Tree(80, true, "Oak");
        Tree tree_C = new Tree(15, "Pine");

        System.out.println(tree_A);
        System.out.println(tree_B);
        System.out.println(tree_C);
    }
}

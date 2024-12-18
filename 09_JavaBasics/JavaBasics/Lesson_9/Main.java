package JavaBasics.Lesson_9;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        List<Integer> integers = new ArrayList<>();
        integers.add(4);
        integers.add(6);
        integers.add(5);
        integers.add(8);
        integers.add(4);

        Programs check = new Programs();
        check.noRepeat(integers);

        List<Integer> integers1 = new ArrayList<>();
        List<Integer> integers2 = new LinkedList<>();


        check.arrayAndList(integers1, integers2);
        check.elementFromList(integers1);
        check.elementFromList(integers2);


        check.playerScore();


    }
}

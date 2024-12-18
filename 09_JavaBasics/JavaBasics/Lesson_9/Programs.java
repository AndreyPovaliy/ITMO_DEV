package JavaBasics.Lesson_9;

import java.util.*;

public class Programs {
    public Set<Integer> noRepeat(List<Integer> list) {
        System.out.println("Задание №2");
        Set<Integer> noRepeatSet = new HashSet<>(list);
        System.out.println(noRepeatSet);
        return noRepeatSet;
    }

    public void arrayAndList(List<Integer> arrayList, List<Integer> linkedList) {
        for (int i = 0; i <= 1000000; i++) {
            arrayList.add(i);
            linkedList.add(i);
        }

    }

    public void elementFromList(List<Integer> list) {
        System.out.println("Задание №3");
        Random random = new Random();
        int randNum = list.get(random.nextInt(1000000));
        System.out.println(randNum);

    }

    public void playerScore() {
        System.out.println("Задание №4");

        Scanner scanner = new Scanner(System.in);
        String playerName = scanner.nextLine();
        Integer playerScore = 0;

        Map<User, Integer> playList = new HashMap<>();
        playList.put(new User("Ann"), 4);
        playList.put(new User("Ivan"), 5);
        playList.put(new User("David"), 3);
        playList.put(new User("Ketty"), 7);
        playList.put(new User("Edward"), 9);


        for (User user : playList.keySet()) {
            if (user.getName().equals(playerName)) {
                playerScore = playList.get(user);
            }
        }
        System.out.println("Score of " + playerName + " is " + playerScore);
    }
}



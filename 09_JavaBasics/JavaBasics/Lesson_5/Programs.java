package JavaBasics.Lesson_5;

import java.util.Arrays;

public class Programs {
    public static String TheLongest(String newText) {
        System.out.println("Задание №1");
        String[] textArr = newText.split(" ");
        Arrays.sort(textArr);
        int symbols = 0;
        String longWord = null;
        for (String word : textArr) {
            if (word.length() > symbols) {
                symbols = word.length();
                longWord = word;
            }
        }
        System.out.println(longWord);
        return longWord;
    }

    public static Boolean Palindrome(String testWord) {
        System.out.println("Задание №2");
        boolean isPali = false;
        testWord = testWord.toLowerCase().toString();
        StringBuilder testWordRev = new StringBuilder(testWord);

        if (testWord.equals(testWordRev.reverse().toString())) {
            isPali = true;
            System.out.println(isPali);
        } else System.out.println(isPali);
        return isPali;
    }


    public static String Censorship(String text, String word, String replacement) {
        System.out.println("Задание №3");
        text = text.replaceAll(word, replacement);
        System.out.println(text);
        return text;
    }

    public static Integer Insert(String text, String subsring) {
        System.out.println("Задание №4");
        String[] textArr = text.split(" ");
        int counter = 0;
        for (String word : textArr) {
            if (word.contains(subsring.toLowerCase()) || word.contains(subsring.toUpperCase())) {
                counter++;
            }
        }
        System.out.println("Количество вхождений:" + counter);
        return counter;


    }

    public static String inverterWord(String newText) {
        System.out.println("Задание №5");
        System.out.println("The given string is:" + newText);
        String[] textArr = newText.split(" ");
        StringBuilder textBuild = new StringBuilder();
        for (String word : textArr) {
            StringBuilder w = new StringBuilder(word);
            String newWord = w.reverse().toString();
            textBuild.append(newWord + " ");
        }
        String s = textBuild.toString();
        System.out.println("The string reversed word by word is: " + s);
        return (s);

    }
}




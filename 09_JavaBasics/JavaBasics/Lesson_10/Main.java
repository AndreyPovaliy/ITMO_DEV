package JavaBasics.Lesson_10;

public class Main {
    public static void main(String[] args) {
        ReadFile text1 = new ReadFile();
        text1.readFile("src/JavaBasics/Lesson_10/text.txt");
        WriteFile text2 = new WriteFile();
        text2.writeFile("Тестовая строка здесь!","src/JavaBasics/Lesson_10/text2.txt");

        MergeFile outFile = new MergeFile();
        outFile.mergeFile("src/JavaBasics/Lesson_10/text.txt","src/JavaBasics/Lesson_10/text2.txt","src/JavaBasics/Lesson_10/outText.txt");

        Replacement changedFile = new Replacement();
        changedFile.replacement ("src/JavaBasics/Lesson_10/text.txt","src/JavaBasics/Lesson_10/textChanged.txt");

    }
}

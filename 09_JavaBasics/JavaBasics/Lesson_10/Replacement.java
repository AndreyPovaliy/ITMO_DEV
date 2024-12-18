package JavaBasics.Lesson_10;

import java.util.List;

public class Replacement {

    public void replacement(String text,String path) {
        ReadFile readFile = new ReadFile();
        WriteFile newFile = new WriteFile();
        List<String> str = readFile.readFile(text);
        StringBuilder builder = new StringBuilder();
        String newString;
        for (String newList : str) {
            newString= newList.replaceAll("[^а-яА-Яa-zA-Z0-9]", "\\$");
            builder.append(newString);
        }

        newFile.writeFile(builder.toString(),path);
    }
}

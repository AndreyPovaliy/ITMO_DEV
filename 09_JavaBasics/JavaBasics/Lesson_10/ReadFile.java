package JavaBasics.Lesson_10;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class ReadFile {

    public List<String> readFile(String path) {
        File file = new File(path);
        List<String> newList = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String input;
            while ((input = reader.readLine()) != null) {
                newList.add(input);


            }

        } catch (IOException e) {
            System.err.println("Error:" + e.getMessage());
        }


        return newList;
    }


}



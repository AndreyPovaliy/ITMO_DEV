package JavaBasics.Lesson_10;

import java.io.*;
import java.util.List;

public class MergeFile {

    public void mergeFile(String text1, String text2, String outputFile) {

        ReadFile readFile = new ReadFile();
        String str1 = readFile.readFile(text1).toString();
        String str2 = readFile.readFile(text2).toString();



        try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {
            writer.write(str1);
            writer.write(str2);



        } catch (IOException e) {
            System.err.println("Error:" + e.getMessage());
        }


    }
}


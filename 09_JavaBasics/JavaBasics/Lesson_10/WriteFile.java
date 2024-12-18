package JavaBasics.Lesson_10;

import java.io.*;

public class WriteFile {
    public void writeFile (String  str, String path) {


        try (BufferedWriter writer = new BufferedWriter(new FileWriter(path))){

                writer.write(str);


        } catch ( IOException e){
            System.err.println("Error:" + e.getMessage());
        }

    }
}

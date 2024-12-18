package Lesson10;

import java.io.*;
import java.nio.file.Path;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        File file = new File("files/text.txt");
        File file2 = new File("files/output.txt");

        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String input;
            while ((input = reader.readLine()) != null) {
                System.out.println(input);
            }
        } catch (IOException io) {
            System.err.println("Error: " + io.getMessage());
        }

        InputStream is = null;
        OutputStream os = null;

        try {
            is = new FileInputStream(file);
            os = new FileOutputStream(file2);
            while (is.available() > 0) {
                os.write(is.read());
            }
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        } finally {
            try {
                if (is != null) {
                    is.close();
                }

                if (os != null) {
                    os.close();
                }
            } catch (IOException e) {
                System.err.println("Error: " + e.getMessage());
            }
        }
        writeData(Arrays.asList("Java is ","Programming ","Language"),"files/output2.txt");


        // какие файлы
        Path path = Path.of("/Users/user/Documents");

        File[] files = path.toFile().listFiles();

        if (files != null){
            for (File f: files){
                System.out.println(f.getName());
            }
        }

        double totalSpace = path.toFile().getTotalSpace() / 1_000_000_000.0;
        String format = new DecimalFormat("#.##").format(totalSpace);

        System.out.println(format + "GB");

        System.out.println(path.getFileSystem());

    }

    public static void writeData(List<String> stringList, String path) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(path))) {
            for (String s : stringList) {
                writer.write(s);
            }

        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }

}

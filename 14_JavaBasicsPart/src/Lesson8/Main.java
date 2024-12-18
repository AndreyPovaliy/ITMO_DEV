package Lesson8;

import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.logging.Logger;

public class Main {
    static Logger logger = Logger.getLogger("Logger");
    public static void main(String[] args) {
        try {
            getFile("text1.txt");
            Scanner read = new Scanner(System.in);
            int x = read.nextInt();
            int y = read.nextInt();
            System.out.println((double) x / y);
            logger.info("ok");
        } catch (ArithmeticException | FileNotFoundException e) {
//            System.err.println(e.getMessage());
            logger.warning(e.getMessage());
        } catch (Exception e) {
            System.err.println(e.getMessage() + e);
        } finally {
            System.out.println("finally");
        }

    }

    public static void getFile(String path) throws FileNotFoundException {
        Scanner scanner = new Scanner(new File(path));

    }
}

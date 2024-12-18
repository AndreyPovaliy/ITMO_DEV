package Lesson5;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Locale;

public class StringExample {
    public static void main(String[] args) throws IOException {

        String java = "Java";

        String java2 = new String("Java");

//        при сравнеии через знак равно, то сравниваются ссылки объектов
//        чтобы провести сравнение объектов, ножно использовать equals
        System.out.println("java == java2 = " + (java == java2));
        System.out.println("java.equals(java2) = " + (java.equals(java2)));
//        регистр важен, для игнорирования регистра нужен метод
        System.out.println("java.equalsIgnoreCase(java2) = " + (java.equalsIgnoreCase(java2)));
//         конкатенация
//        класс String иммутабельный, поэтому нужно создать новыый объект или
//        перезаписать объект
        java = java.concat(" Developer");
        System.out.println("java.concat = " + java);
//        тоже конкатенация
        java = java + 123;
        System.out.println("java + 123 = " + java);
//        не совсем кокатенация, так как int вначале и обрабатываются цифры,
//        затем string приводит в конкатенацию. для определения приоритета,
//        нужно использовать скобки
        java = 80 + 120 + java + 140 + 160;
        System.out.println("80 + 120 + java + 140 + 160 = " + java);

        int length = java.length();
        System.out.println("length = " + length);

        char[] chars = java.toCharArray();
        System.out.println("char[] chars = java.toCharArray()");
        System.out.println(Arrays.toString(chars));

        String empty = "";
        System.out.println("empty.isEmpty() = " + empty.isEmpty());

        String substring = java.substring(3);
        System.out.println("java.substring(3) = " + substring);

        String substring1 = java.substring(3, 7);
        System.out.println("java.substring(3,7) = " + substring1);

        String string = "  Hello word!    ";
        System.out.println(string);
        System.out.println("string.trim() = " + string.trim());

        String lll = string.replaceAll("l", "?");
        System.out.println("string.replaceAll(\"l\",\"?\") = " + lll);

        String lll1 = string.replaceAll("[^0-9]", "?");
        System.out.println("string.replaceAll(\"[^0-9]\",\"?\") = " + lll1);

        String text = "Lorem Ipsum - это текст-\"рыба\", " +
                "часто используемый в печати и вэб-дизайне. " +
                "Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице " +
                "с начала XVI века. В то время некий безымянный печатник создал " +
                "большую коллекцию размеров и форм шрифтов, используя " +
                "Lorem Ipsum для распечатки образцов. " +
                "Lorem Ipsum не только успешно пережил без заметных изменений п" +
                "ять веков, но и перешагнул в электронный дизайн. " +
                "Его популяризации в новое время послужили публикация листов " +
                "Letraset с образцами Lorem Ipsum в 60-х годах и, " +
                "в более недавнее время, программы электронной вёрстки типа " +
                "Aldus PageMaker, " +
                "в шаблонах которых используется Lorem Ipsum.";

        String [] strings = text.split(" ");
        System.out.println("String [] strings = text.split(\" \")");
        for (String s : strings){
            System.out.println(s);
        }

        int counter = 0;
        char[] chars1 = string.toCharArray();
        for (char aChar : chars){
            if (Character.isDigit(aChar)){
                counter++;
            }
        }

        System.out.println("isDigit counter = " + counter);

        Integer number = 4525442;
//        лучше так не преобразовывать
        number.toString();
//        лучше оборачивать
        String s = String.valueOf(number);
        System.out.println("String.valueOf(number)" + s);

//        другой способ считывания
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String line = reader.readLine();

        System.out.println(Integer.parseInt(line));


        StringBuilder builder = new StringBuilder(java);
        StringBuilder builder2 = new StringBuilder(java);
//        false, сравнение ссылок
        System.out.println(java == builder.toString());
//        false, сравнение ссылок
        System.out.println(builder == builder2);
//        false, сравнение объектов
        System.out.println(builder.equals(builder2));
//          true, строка строке равна
        System.out.println(java.equals(builder.toString()));
//         false, разные типы
        System.out.println(java.equals(builder));
// конкатенацию можно выполнять в рамках StringBuilder

        for (String word : text.split("")) {
            builder.append(word)
                    .append(", ");
        }

        String result = builder.toString();
        System.out.println(result);

        System.out.println(builder.reverse());

        builder.insert(3, "MOSCOW");
        System.out.println(builder);
//        StringBuilder не потокобезопасный, для этого используется StringBuffer
        StringBuffer stringBuffer = new StringBuffer();

    }
}

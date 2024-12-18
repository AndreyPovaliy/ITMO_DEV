package Lesson3;

// типы модификаторов private, default package, protected, public
public class StaticExample {
    public static final String STATIC_CONSTANT = "some constant";
    private String string;
    public static String staticString;
    private final String nonStaticSring;
    protected String protectedString;

    static {
        System.out.println("================");
        System.out.println("static block start");
        staticString = "staticString";
        System.out.println(staticString);
        System.out.println("static block end");
        System.out.println("================");
        // все статические поля запускаются с main
    }

    {
        System.out.println("================");
        System.out.println("nonstatic block start");
        // staticString ="init staticString"; <-- инициализация возможно, в отличие от статик
        nonStaticSring = "nonstaticString";
        System.out.println(nonStaticSring);
        System.out.println("nonstatic block end");
        System.out.println("================");
        // чтобы запустить в main нужно сделать объект класса
    }

    public static void main(String[] args) {
        StaticExample staticExample = new StaticExample();
        //StaticExample staticExample = null; <--- обращение к экземпляру вызовет ошибку, нужно проверять на null
        //позднее связывание
        staticExample.print("1234");

        /* ранее связывание, есть статическое (связывание во время компиляции), объектов не вызовет ошибку
        Есть еще позднее связываение, те динамическое (связывание во время исполнения)
         */

        Integer integer = null;
        int i = integer.parseInt("123");
        System.out.println(i);
    }
    /* в статических методах можно обращаться только к статическим методам,
    если нужно в статическом методе обратиться к нестатическому, нужно создать экземпляр
    класса. В нестаическом можно обращаться к любому методу.
     */


    public void print(String str) {
        System.out.println(str);
    }

    public void nonStaticMethod() {
        print("qwerty");
        staticMethod();
        //logic
    }

    public static void printStaticVar() {
        System.out.println(staticString + "in static method");
        //print(); <-error
        StaticExample staticExample = new StaticExample();
        staticExample.print(staticString);


    }

    public static void staticMethod() {
        printStaticVar();
        //logic
    }

    // final объявление неизменяемую переменную
    public static void someMethod(final int x, final int y) {
        int i = x + y;
        System.out.println(i);
    }
}


/* опросы для уточнения:
1) ранее и позднее связывание


 */
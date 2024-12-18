package Lesson9;

import Lesson6.Car;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        List list = new ArrayList();
        list.add(123);
        list.add("String");
        list.add(true);
        list.add(new Car());

//        System.out.println(list);
//        чтобы типизировать спиок нужен джененрик
        List<String> strings = new ArrayList<>();


        strings.add("String");
        strings.add("true");
        strings.add("1234");

        StringBuilder builder = new StringBuilder();

        for (String string : strings) {
            builder.append(string)
                    .append(" ");
        }

        System.out.println(builder);
        System.out.println(strings);
        Collections.sort(strings);
        System.out.println(strings);
        Collections.reverse(strings);


//        дженерик может быть только ссылочным
        List<Integer> integers = new ArrayList<>();

        integers.add(1234);
        integers.add(12245);
        integers.add(34425);
        integers.add(85943);
        integers.add(854738);
        System.out.println(integers);

//        integers.remove(1234); <--- ошибка, так как передается индекс
        integers.remove(Integer.valueOf(1234)); // remove возвращает boolean исключений не будет
        System.out.println(integers);

//        создание неизменяемого списка
        List<Integer> ints = Arrays.asList(4522, 8899, 9012); //Java8
        List<Integer> ints1 = List.of(4522, 8899, 9012); //Java11

//        ints.add(2134); <-- UnsupportedOperationException

//        for (Integer integer : integers) {
//            if (integer % 2 == 0) {
//                integers.remove(integer);
//            } <---- ConcurrentModificationException

//        для удаления нужен итератор
        Iterator<Integer> iterator = integers.iterator();

        while (iterator.hasNext()) {
            if (iterator.next() % 2 == 0) {
                iterator.remove();
            }

        }

        System.out.println(integers);

//        вывод элементов с новой строки
        for (int i = 0; i < integers.size(); i++) {
            System.out.println(integers.get(i));

        }

        Set<String> set = new LinkedHashSet<>();

        for (int i = 0; i < 100; i++) {
            set.add("Java");

        }
// порядок сохраняется по hashCode. для того, чтобы сохранить заданный порядок нужно HashSet замнить на LinkedHashSet
//        для сортированного set  нужно использовать TreeSet

        set.add("String");
        set.add("77");
        set.add("world");
        set.add("Hello");

        System.out.println(set);

//        для выведение списка с уникальными значениями в set  можно передать List

        Set<Integer> uniques = new HashSet<>(integers);
        System.out.println(uniques);

        Map<String, Integer> map = new HashMap<>();

        map.put("John", 23455);
        map.put("Alice", 2344355);
        map.put("Katie", 2348755);
        map.put("Bob", 23433355);
        map.put("Mike", 29803455);

        Set<String> keys = map.keySet();
        Collection<Integer> values = map.values();

        Integer bobNumber = map.get("Bob");
        System.out.println(bobNumber);

        // если идет поиск по отсутвующему значенияю, вернентся null

        List<String> keyByValue = getKeyByValue(map, 2344355);
        System.out.println(keyByValue);
    }

    public static List<String> getKeyByValue (Map <String, Integer> map , Integer value ){
        List <String> result = new ArrayList<>();

        for (Map.Entry<String,Integer> pair: map.entrySet()){
            String pairKey = pair.getKey();
            Integer pairValue = pair.getValue();

            if (value.equals(pairValue)){
                result.add(pairKey);
            }
        }
        return result;

    }
}

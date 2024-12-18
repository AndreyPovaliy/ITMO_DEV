package JavaBasics.Lesson_2.Bicycle;

public class Main {
    public static void main(String[] args) {
        Bicycle bicycleBmxID0 = new Bicycle();

        Bicycle bicycleCrossCountryID012324 = new Bicycle("GT", "012324", Color.SILVER, Type.CYCLOCROSS_BIKE, 89000L, true);

        Bicycle bicycleCityID0 = new Bicycle("TRACK", false);

        System.out.println(bicycleBmxID0);
        System.out.println(bicycleCrossCountryID012324);
        System.out.println(bicycleCityID0);

        String typeOfBicycleCrossCountryID012324 = bicycleCrossCountryID012324.getType().getDescription();
        System.out.println(typeOfBicycleCrossCountryID012324);
    }
}

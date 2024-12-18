package JavaBasics.Lesson_7;

public class Plane {
    static class Wing {
        private Integer weight;

        public Wing(Integer weight) {
            this.weight = weight;
        }

        void recordWeight() {
            System.out.println("Weight of wing is " + weight);
        }


    }

    public void printInfo(final Integer weight) {
        Wing wing = new Wing(weight);
        wing.recordWeight();
    }
}

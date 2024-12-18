package Lesson3;

public class Sun {
    private static Sun sun;
    private String color;
    private Integer size;



    public static Sun getSun(){
        if (sun== null){
            sun = new Sun();
        }
        return  sun;

    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Sun{" +
                "color='" + color + '\'' +
                ", size=" + size +
                '}';
    }
}

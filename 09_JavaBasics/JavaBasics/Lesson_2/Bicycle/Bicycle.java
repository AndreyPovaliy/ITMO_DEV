package JavaBasics.Lesson_2.Bicycle;

public class Bicycle {
    private String brand;
    private String numberID;
    private Color color;
    private Type type;
    private Long price;
    private Boolean isAvailable;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getNumberID() {
        return numberID;
    }

    public void setNumberID(String numberID) {
        this.numberID = numberID;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Boolean getAvailable() {
        return isAvailable;
    }

    public void setAvailable(Boolean available) {
        isAvailable = available;
    }

    public Bicycle() {
    }

    public Bicycle(String brand, Boolean isAvailable) {
        this.brand = brand;
        this.isAvailable = isAvailable;
    }

    public Bicycle(String brand, String numberID, Color color, Type type, Long price, Boolean isAvailable) {
        this.brand = brand;
        this.numberID = numberID;
        this.color = color;
        this.type = type;
        this.price = price;
        this.isAvailable = isAvailable;
    }

    @Override
    public String toString() {
        return "Bicycle{" +
                "brand='" + brand + '\'' +
                ", numberID='" + numberID + '\'' +
                ", color=" + color +
                ", type=" + type +
                ", price=" + price +
                ", isAvailable=" + isAvailable +
                '}';
    }
}

package Lesson2;

public class Car {
/* в классе все ссылочные переменные (Integer) устанавливают значение NULL,
но! примитивная переменная (int) устанавливает значение 0
В методе окальные переменные не инициализируются
 */


    private String brand;
    private String model;
    private Integer seatPlace;
    private Long price;
    private  Double engineCapacity;
    private Boolean isNew;
    private Color color;

    private int doorCount;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Integer getSeatPlace() {
        return seatPlace;
    }

    public void setSeatPlace(Integer seatPlace) {
        this.seatPlace = seatPlace;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Double getEngineCapacity() {
        return engineCapacity;
    }

    public void setEngineCapacity(Double engineCapacity) {
        this.engineCapacity = engineCapacity;
    }

    public Boolean getNew() {
        return isNew;
    }

    public void setNew(Boolean aNew) {
        isNew = aNew;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Car() {

    }

    public Car(String brand, String model, Boolean isNew, Color color) {
        this.brand = brand;
        this.model = model;
        this.isNew = isNew;
        this.color = color;
    }

    @Override
    public String toString() {
        return "Car{" +
                "brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", seatPlace=" + seatPlace +
                ", price=" + price +
                ", engineCapacity=" + engineCapacity +
                ", isNew=" + isNew +
                ", color=" + color +
                ", doorCount=" + doorCount +
                '}';
    }
}



package entity;


public class productsales {
    private String name, img, price,brand, sale;
    private int id;
    public productsales(){
        
    }
    public productsales(int id,String name, String img,String price,String brand,String sale){
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.brand = brand;
        this.sale = sale;
    }
    public productsales(String name, String img, String price, String brand){
        this.name = name;
        this.img = img;
        this.price = price;
        this.brand = brand;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSale() {
        return sale;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }

    @Override
    public String toString() {
        return "productsales{" + "name=" + name + ", img=" + img + ", price=" + price + ", brand=" + brand + ", sale=" + sale + '}';
    }
    
}

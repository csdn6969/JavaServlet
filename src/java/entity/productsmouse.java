/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class productsmouse {
    private String namemouse, img, price, brand;
    public productsmouse(){
        
    }
    public productsmouse(String namemouse, String img, String price, String brand){
        this.namemouse = namemouse;
        this.img = img;
        this.price = price;
        this.brand = brand;
    }

    public String getNamemouse() {
        return namemouse;
    }

    public void setNamemouse(String namemouse) {
        this.namemouse = namemouse;
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

    @Override
    public String toString() {
        return "productsmouse{" + "namemouse=" + namemouse + ", img=" + img + ", price=" + price + ", brand=" + brand + '}';
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class categoryProduct {
     private String name, img, price, brand;
    public categoryProduct(){
        
    }
    public categoryProduct(String name, String img, String price, String brand){
        this.name = name;
        this.img = img;
        this.price = price;
        this.brand = brand;
    }

    public String getNamemouse() {
        return name;
    }

    public void setNamemouse(String namemouse) {
        this.name = namemouse;
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
        return "category{" + "name=" + name + ", img=" + img + ", price=" + price + ", brand=" + brand + '}';
    }
}

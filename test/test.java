
import dao.Details;
import dao.MouseDao;
import dao.Search;
import dao.ShowAll;
import dao.ViewProductSales;
import dao.getData;
import dao.loginDao;
import entity.menu;
import entity.prodetails;
import entity.productsales;
import entity.productsmouse;
import entity.showall;
import entity.user;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class test {
    public static void main(String[] args){
       Search sr = new Search();
       List<prodetails> list = sr.getSearch("Tai nghe");
       for(prodetails o : list){
           System.out.print(o);
       }
    }
}

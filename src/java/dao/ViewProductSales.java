/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.productsales;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ViewProductSales {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<productsales> getAll(){
        List<productsales> listAll = new ArrayList<>();
        String query = "select * from salesproducts";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            int limit = 0;
            while(rs.next() && limit < 5){
               listAll.add(new productsales(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6)));
               limit++;
            }
        }catch(Exception e){
            
        }
        return listAll;
    }
}

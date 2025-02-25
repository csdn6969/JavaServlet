/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.productsmouse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class MouseDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<productsmouse> getAllMouse(){
        List<productsmouse> listmouse = new ArrayList<>();
        String query = "select * from productsofmouse";
        int limit = 0;
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                if(limit < 10){
                                 listmouse.add(new productsmouse(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));   
                }
                limit++;
            }
        }catch(Exception e){
            
        }
        return listmouse;
    }
}

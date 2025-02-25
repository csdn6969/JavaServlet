/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.menu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class MenuDao {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<menu> getAllMenu(){
        List<menu> listmenu = new ArrayList<>();
        String query = "select * from Categories";
        int limit = 0;
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                if(limit < 10){
                      listmenu.add(new menu(rs.getString(2)));
                }
                limit++;
            }
        }catch(Exception e){
            
        }
        return listmenu;
    }
}

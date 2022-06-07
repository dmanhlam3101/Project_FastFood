/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Food;


/**
 *
 * @author dmanh
 */
public class FoodDAO {
     public List<Food> getallFood(){
        List<Food> list = new ArrayList<>();
        
        try {
              String sql = "select * from Foods";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Food(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                       rs.getInt(5), 
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getString(9)));
            }
           
        } catch (Exception e) {
        }
        return list;
    }
     public static void main(String[] args) {
        FoodDAO dao = new FoodDAO();
         List<Food> a = dao.getallFood();
         System.out.println(a);
        
    }
}

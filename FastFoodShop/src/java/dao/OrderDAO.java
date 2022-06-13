/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.Order;

/**
 *
 * @author dmanh
 */
public class OrderDAO {

    public int createReturnId(Order order) {
       
        try {
             String sql = "INSERT INTO [dbo].[Orders]\n"
                + "           ([account_id]\n"
                + "           ,[Name]\n"
                + "           ,[Phone]\n"
                + "           ,[Address]\n"
                + "           ,[TotalPrice]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,0)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getAcount_id());
            ps.setString(2, order.getName());
            ps.setString(3, order.getPhone());
            ps.setString(4, order.getAddress());
            ps.setFloat(5, order.getTotalprice());
            ps.executeUpdate();
            
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            
        }
     return 0;
    }

}

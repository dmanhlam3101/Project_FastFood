/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Map;
import model.Cart;

/**
 *
 * @author dmanh
 */
public class OrderDetailDAO {

//    public void saveCart(int orderId) {
//
//        try {
//            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
//                    + "           ([OrderID]\n"
//                    + "           )\n"
//                    + "     VALUES\n"
//                    + "           (?)";
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setInt(1, orderId);
//            ps.executeUpdate();
////            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
////                Integer foodid = entry.getKey();
////                Cart cart = entry.getValue();
////                 ps.setInt(1, orderId);
////                ps.setString(2, cart.getProduct().getFoodname());
////                ps.setString(3, cart.getProduct().getImage());
////                ps.setFloat(4, cart.getProduct().getUnitprice());
////                ps.setInt(5, cart.getQuantity());
////                ps.executeUpdate();
////            }
//
//        } catch (Exception e) {
//        }
//    }
    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([OrderID]\n"
                    + "           ,[NameFood]\n"
                    + "           ,[ImageFood]\n"
                    + "           ,[PriceFood]\n"
                    + "           ,[Quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer foodid = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(1, orderId);
                ps.setString(2, cart.getProduct().getFoodname());
                ps.setString(3, cart.getProduct().getImage());
                ps.setFloat(4, cart.getProduct().getUnitprice());
                ps.setInt(5, cart.getQuantity());
                ps.executeUpdate();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}

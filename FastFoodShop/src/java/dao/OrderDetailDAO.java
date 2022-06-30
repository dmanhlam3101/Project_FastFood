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
import java.util.Map;
import model.Cart;
import model.OrderDetail;

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

    public List<OrderDetail> getOrderDetailByAccountID(int id){
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "select * from OrderDetail where OrderID in (select OrderID from Orders where account_id = "  + id + " and created_date = cast(GETDATE() as date))";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderDetail(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
     public List<OrderDetail> getOrderDetailByOrderID(int id){
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "select * from OrderDetail where  OrderID = " + id;
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new OrderDetail(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public static void main(String[] args) {
        OrderDetailDAO dao = new OrderDetailDAO();
        List<OrderDetail> list = dao.getOrderDetailByOrderID(14);
        int a = 0;
        for (OrderDetail list1 : list) {
            System.out.println(list1);
        }
    }
}

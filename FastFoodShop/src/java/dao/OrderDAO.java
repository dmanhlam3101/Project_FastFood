/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Order;
import model.Shipper;

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
   public void UpdateOrder(String orderId) {

        try {
            String sql = "update Orders set status = 1 where OrderID = " +orderId;
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);      
            ps.executeUpdate();

        } catch (Exception e) {

        }
    
    }
    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select * from Orders";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> getOrderById(int id) {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select * from Orders where OrderID = " + id;
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> getOrderNotAcceptByShipperID() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "select * from Orders where ShipperID is null and status = 1";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
      public List<Order> getOrderWithpaggingByPhone(int index, String textSearch) {
        List<Order> list = new ArrayList<Order>();
        try {
            String sql = "select * from Orders where status = 0 and Phone = '" + textSearch + "' order by OrderID offset ? row fetch next 9 rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int OrderId = rs.getInt(1); 
                int acount_id = rs.getInt(2);
                String name = rs.getString(3);
                String phone = rs.getString(4); 
                String address = rs.getString(5); 
                float totalprice = rs.getFloat(6);
                int sellerID = rs.getInt(7);
                int shipperID = rs.getInt(8); 
                boolean Status = rs.getBoolean(10);
                String DateCreated = rs.getString(9);
                Order order = new Order(OrderId, acount_id, name, phone, address, totalprice, sellerID, shipperID, DateCreated, Status);
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
     
        return list;
    }
     public List<Order> getOrderWithpagging(int index) {
        List<Order> list = new ArrayList<Order>();
        try {
            String sql = "select * from Orders where status = 0 order by OrderID offset ? row fetch next 9 rows only";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int OrderId = rs.getInt(1); 
                int acount_id = rs.getInt(2);
                String name = rs.getString(3);
                String phone = rs.getString(4); 
                String address = rs.getString(5); 
                float totalprice = rs.getFloat(6);
                int sellerID = rs.getInt(7);
                int shipperID = rs.getInt(8); 
     
                String DateCreated = rs.getString(9);   
                boolean Status = rs.getBoolean(10);
                Order order = new Order(OrderId, acount_id, name, phone, address, totalprice, sellerID, shipperID, DateCreated, Status);
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
     }
    public List<Order> getOrderAcceptByShipperID() {
        List<Order> list = new ArrayList<>();
        try {
            String sql = "Select * From Orders where ShipperID is not null and status = 1";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> AddShipperIDtoOrder(int orderid, int accountid) {
        List<Order> list = new ArrayList<>();
        try {
            String sql = " Update Orders set ShipperID = (select ShipperID from Shipper where AccountID = ?) where OrderID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
//            System.out.println(orderid + accountid);
            ps.setInt(1, accountid);
            ps.setInt(2, orderid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Order> DisplayOrderByShipperID( int accountid) {
        List<Order> list = new ArrayList<>();
        try {
                String sql = "select * from orders where shipperid = (select ShipperID from Shipper where AccountID = ?) and status = 1";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
//            System.out.println(orderid + accountid);
            ps.setInt(1, accountid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }   
    
//    public List<Order> UpdateDeliveryMoney(float deliverymoney, int shipperID) {
//        List<Order> list = new ArrayList<>();
//        try {
//                String sql = "Update shipper set DeliveryMoney = ? where ShipperID = (select ShipperID from Shipper where AccountID = ?)";
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setFloat(1, deliverymoney);
//            ps.setInt(2, shipperID);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Order(rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getFloat(6),
//                        rs.getInt(7),
//                        rs.getInt(8),
//                        rs.getString(9),
//                        rs.getBoolean(10)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    
    public Order UpdateStatusBackNull(int orderID) {
       
        try {
                String sql = "update orders set status = null where OrderID = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               return new Order(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getBoolean(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

   public float getTotalPriceByOrderId(int orderID) {
       try {
                String sql = "  select TotalPrice from Orders where OrderID =?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderID);
            ResultSet rs = ps.executeQuery();
             if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
 
    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();

        float totalprice = dao.getTotalPriceByOrderId(1);
        System.out.println(totalprice);
    }

  
}

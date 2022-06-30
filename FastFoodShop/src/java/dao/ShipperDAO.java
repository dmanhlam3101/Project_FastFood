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
import model.Seller;
import model.Shipper;

/**
 *
 * @author dmanh
 */
public class ShipperDAO {

    public Shipper insertShipperByAccountId(int id) {
        String sql = "INSERT INTO Shipper (ShipperName,Phone,[Address],DeliveryMoney,AccountID,[Status])\n"
                + "SELECT a.Displayname,a.Phone,a.[Address],0,a.ID,1\n"
                + "FROM Account as a\n"
                + "WHERE a.ID = ?  ;";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Shipper(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Shipper checkShipperExist(int id) {
        String sql = "select *from Shipper where AccountID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Shipper(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Shipper> getallShipper() {//chua su dung den
        List<Shipper> list = new ArrayList<>();
        try {
            String sql = "select *from Shipper ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Shipper(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Shipper deleteShipperByAccountid(int id) {
        String sql = "delete from Shipper where AccountID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Shipper(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Shipper getShipperByAccountID(int accountid) {
//        List<Shipper> list = new ArrayList<>();
        try {
            String sql = "select * from Shipper where ShipperID = (select ShipperID from Shipper where AccountID = ?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, accountid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Shipper(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void UpdateDeliveryMoney(float ReceiveMoney, int accountID) {

        try {
            String sql = "Update shipper set DeliveryMoney = ?  where ShipperID = (select ShipperID from Shipper where AccountID = ?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setFloat(1, ReceiveMoney);
            ps.setInt(2, accountID);
            ps.executeUpdate();
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Shipper(rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getFloat(6),
//                        rs.getInt(7),
//                        rs.getInt(8));
//            }
        } catch (Exception e) {
        }

//        return null;
    }
    
    public void UpdateDeliveryEqualZero( int accountID) {

        try {
            String sql = "Update shipper set DeliveryMoney = 0  where ShipperID = (select ShipperID from Shipper where AccountID = ?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, accountID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void UpdateReceive(float delivery) {
 
        try {
            String sql = "update Seller set ReceiveMoney = ReceiveMoney + " + delivery + " where AccountID = (select ID from Account where IsSaller = 1)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
           
        }
    }
 
    public Seller GetSeller() {
        try {
            String sql = "select * from Seller";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Seller(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ShipperDAO dao = new ShipperDAO();
         dao.UpdateReceive(120);
       
    }
}

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
<<<<<<< HEAD
    public static void main(String[] args) {
        ShipperDAO dao = new ShipperDAO();
        List<Shipper> a = dao.getallShipper();
        for (Shipper a1 : a) {
            System.out.println(a1);
        }
=======

    public List<Shipper> getShiperbyShipperID(int accountID) {
        List<Shipper> list = new ArrayList<>();

        try {
            String sql = "select *from Shipper where Shipperid = (select ShipperID from Shipper where AccountID = ?)";
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
  
        public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
//        List <Shipper> o = dao.getShipperByAccountID(7);
//        for (Shipper shipper : o) {
//            System.out.println(shipper);
//        }      
>>>>>>> 31e4b9bc2aa28a0ed712c47dc1789ad3b3d29dc8
    }
}

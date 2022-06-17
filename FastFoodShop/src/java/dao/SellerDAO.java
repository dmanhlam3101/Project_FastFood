/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Seller;

/**
 *
 * @author dmanh
 */
public class SellerDAO {

    public Seller insertSellerByAccountId(int id) {
        String sql = "INSERT INTO Seller (SallerName,Phone,[Address],ReceiveMoney,AccountID,[Status])\n"
                + "SELECT a.Displayname,a.Phone,a.[Address],0,a.ID,1\n"
                + "FROM Account as a\n"
                + "WHERE a.ID = ?  ;";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
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
    public Seller checkSellerExist(int id) {
        String sql = "select *from Seller where AccountID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
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
    public Seller deleteSellerByAccountid(int id) {
        String sql = "delete from Seller where AccountID = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
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
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author dmanh
 */
public class AccountDAO {

    public Account login(String username, String password) {
        String sql = "select *from Account where Username = ? and Password = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String username, String phone, String Address, String password) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([ID]\n"
                + "           ,[Username]\n"
                + "           ,[Password]\n"
                + "           ,[Phone]\n"
                + "           ,[Address]\n"
                + "           ,[isAdmin]\n"
                + "           ,[isCustomer]\n"
                + "           ,[IsShipper]\n"
                + "           ,[IsSaller])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, password);
            ps.setString(4, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ;
            }

        } catch (Exception e) {
        }

    }

    public Account checkAccountExist(String username) {
        String sql = "select *from Account where Username = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }

        } catch (Exception e) {
        }
        return null;
    }
}

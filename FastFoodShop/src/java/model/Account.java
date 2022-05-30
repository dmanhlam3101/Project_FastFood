/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author dmanh
 */
public class Account {
   String id;
   String username;
   String password;
   String isAdmin;
   String isCustomer;
   String isShipper;
   String isSeller;

    public Account() {
    }

    public Account(String id, String username, String password, String isAdmin, String isCustomer, String isShipper, String isSeller) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isCustomer = isCustomer;
        this.isShipper = isShipper;
        this.isSeller = isSeller;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(String isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getIsCustomer() {
        return isCustomer;
    }

    public void setIsCustomer(String isCustomer) {
        this.isCustomer = isCustomer;
    }

    public String getIsShipper() {
        return isShipper;
    }

    public void setIsShipper(String isShipper) {
        this.isShipper = isShipper;
    }

    public String getIsSeller() {
        return isSeller;
    }

    public void setIsSeller(String isSeller) {
        this.isSeller = isSeller;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + ", isCustomer=" + isCustomer + ", isShipper=" + isShipper + ", isSeller=" + isSeller + '}';
    }
   
   
}

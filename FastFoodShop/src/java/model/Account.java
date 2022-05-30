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
   int id;
   String username;
   String password;
   int phone;
   String Address;
   String isAdmin;
   String isCustomer;
   String isShipper;
   String isSeller;

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
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

    public Account(int id, String username, String password, int phone, String Address, String isAdmin, String isCustomer, String isShipper, String isSeller) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.Address = Address;
        this.isAdmin = isAdmin;
        this.isCustomer = isCustomer;
        this.isShipper = isShipper;
        this.isSeller = isSeller;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", phone=" + phone + ", Address=" + Address + ", isAdmin=" + isAdmin + ", isCustomer=" + isCustomer + ", isShipper=" + isShipper + ", isSeller=" + isSeller + '}';
    }

   
   
   
}

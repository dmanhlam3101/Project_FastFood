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
    private int id;
    private String username;
    private String password;
    private String Address;
    private int phone;
    private int isAdmin;
    private int isCustomer;
    private int isShipper;
    private int isSeller;

    public Account() {
    }

    public Account(int id, String username, String password, String Address, int phone, int isAdmin, int isCustomer, int isShipper, int isSeller) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.Address = Address;
        this.phone = phone;
        this.isAdmin = isAdmin;
        this.isCustomer = isCustomer;
        this.isShipper = isShipper;
        this.isSeller = isSeller;
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

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getIsCustomer() {
        return isCustomer;
    }

    public void setIsCustomer(int isCustomer) {
        this.isCustomer = isCustomer;
    }

    public int getIsShipper() {
        return isShipper;
    }

    public void setIsShipper(int isShipper) {
        this.isShipper = isShipper;
    }

    public int getIsSeller() {
        return isSeller;
    }

    public void setIsSeller(int isSeller) {
        this.isSeller = isSeller;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", Address=" + Address + ", phone=" + phone + ", isAdmin=" + isAdmin + ", isCustomer=" + isCustomer + ", isShipper=" + isShipper + ", isSeller=" + isSeller + '}';
    }

    
}

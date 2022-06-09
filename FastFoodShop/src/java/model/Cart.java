/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author trung
 */
public class Cart {
    private int cartId;
    private int customerId;
    private String nameFood;
    private String imageFood;
    private int quantity;
    private float totalPrice;
    private String createDate;

    public Cart() {
    }

    public Cart(int cartId, int customerId, String nameFood, String imageFood, int quantity, float totalPrice, String createDate) {
        this.cartId = cartId;
        this.customerId = customerId;
        this.nameFood = nameFood;
        this.imageFood = imageFood;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.createDate = createDate;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getNameFood() {
        return nameFood;
    }

    public void setNameFood(String nameFood) {
        this.nameFood = nameFood;
    }

    public String getImageFood() {
        return imageFood;
    }

    public void setImageFood(String imageFood) {
        this.imageFood = imageFood;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", customerId=" + customerId + ", nameFood=" + nameFood + ", imageFood=" + imageFood + ", quantity=" + quantity + ", totalPrice=" + totalPrice + ", createDate=" + createDate + '}';
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Order;
import model.Shipper;

/**
 *
 * @author vanhung38ht
 */
public class DeliveryMoney extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        OrderDAO dao = new OrderDAO();
        int accountid = Integer.parseInt(request.getParameter("accountid"));
        int accountid1 = Integer.parseInt(request.getParameter("accountid"));
        int orderID = Integer.parseInt(request.getParameter("orderid"));
        float totalprice = Float.parseFloat(request.getParameter("totalprice"));
        
        List<Shipper> listship = dao.getShipperByAccountID(accountid);
        for (Shipper shipper : listship) {
            float Delivery = shipper.getDeliverymoney();
            float deliverymoney = Delivery + totalprice;
            totalprice = 0;
            List<Order> list1 = dao.UpdateDeliveryMoney(deliverymoney, accountid1);
            List<Order> list2 = dao.UpdateStatusBackNull(orderID);
        }
        List<Order> list = dao.DisplayOrderByShipperID(accountid);
        List<Shipper> list1 = dao.getShipperByAccountID(accountid);

        request.setAttribute("list1", list1);
        request.setAttribute("list", list);
        request.getRequestDispatcher("shipperacceptorder.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
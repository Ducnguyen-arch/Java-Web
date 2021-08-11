/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Bill;
import model.BillDetail;

/**
 *
 * @author Admin
 */
@WebServlet(name = "BillServlet", urlPatterns = {"/bill"})
public class BillServlet extends HttpServlet {

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
        request.getRequestDispatcher("bill.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            HttpSession session = request.getSession();
            Account account = (Account) session.getAttribute("account");
            String address = request.getParameter("address");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String payment = request.getParameter("payment");
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<BillDetail> billDetail = accountDAO.getListBillDetail(account.getAccountID());
            long price = 0;
            
            //price = gia san pham * so luong san pham
            for (int i = 0; i < billDetail.size(); i++) {
                price = price + billDetail.get(i).getPrice() * billDetail.get(i).getPrice();
            }
            Date date = new Date(System.currentTimeMillis());
            Bill bill = new Bill(account.getAccountID(), price, payment, address, date, name, phone);
            accountDAO.insertBill(bill);
            accountDAO.deleteBillDetailByAccountId(account.getAccountID());
            session.setAttribute("thankBuy", "Cảm ơn bạn đã mua hàng");
            response.sendRedirect("thankyou.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(BillServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(BillServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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

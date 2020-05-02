/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ShareDAO;
import dal.SushiDAO;
import model.Share;
import model.Sushi;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 Purpose : Get information about sushi 
 Created on : 16/03/2020
 Author     : quanndhe130577
 */
@WebServlet(name = "DetailControl", urlPatterns = {"/DetailControl"})
public class DetailControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            //get share information
            ShareDAO shareDAO = new ShareDAO();
            List<Share> share = shareDAO.getShare();
            request.setAttribute("share", share);
            
            //get sushiID
            String id = request.getParameter("sushiId");
            int idSushi = 0;
            try {
                idSushi = Integer.parseInt(id);
            } catch (Exception e) {
                idSushi = 1;
            }

            SushiDAO sushiDAO = new SushiDAO();
            Sushi sushi = sushiDAO.getSushiByID(idSushi);
            // if sushi is null
            if (sushi == null) {
                request.setAttribute("sushi", sushiDAO.getSushiByID(1));
            } else {
                request.setAttribute("sushi", sushi);
            }

            request.getRequestDispatcher("SushiDetail.jsp").forward(request, response);
        } catch (Exception e) {
            response.getWriter().write(e.getMessage());
        }
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

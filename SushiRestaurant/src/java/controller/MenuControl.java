/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.MenuDAO;
import dal.ShareDAO;
import model.Menu;
import model.Share;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 Purpose : Get information about menu 
 Created on : 16/03/2020
 Author     : quanndhe130577
 */
@WebServlet(name = "MenuControl", urlPatterns = {"/MenuControl"})
public class MenuControl extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            
             //get share information
            ShareDAO shareDAO = new ShareDAO();
            List<Share> share = shareDAO.getShare();
            request.setAttribute("share", share);
           
            String pageIndex = request.getParameter("pageIndex");
            //if PageIndex is null
            if(pageIndex == null){
                pageIndex = "1";
            }
            int index = 0;
            try {
                index = Integer.parseInt(pageIndex);
            } catch (Exception e) {
                index = 1;
            }
            
            MenuDAO menuDAO = new MenuDAO();
            int pageSize = 3;
            int total = menuDAO.getMenuMax();
            int maxPage = total / pageSize;
            if(total % pageSize != 0){
                maxPage++;
            }
            if(index <= 0 || index > maxPage){
                index = 1;
            }
            // get Menu
            List<Menu> listMenu = menuDAO.getListMenu(index, pageSize);
            request.setAttribute("listMenu", listMenu);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("pageIndex", index);
            request.getSession().removeAttribute("activeInfor");
            request.setAttribute("activeMenu", "activeMenu");
            request.getRequestDispatcher("Menu.jsp").forward(request, response);
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

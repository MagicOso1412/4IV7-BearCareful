/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Control.AccionesUsuario;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Oso
 */
public class actualizarUsuario extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
            String usuario = "";
             int idusuario=1 ;
        HttpSession sesionusu = request.getSession();
        if(sesionusu.getAttribute("usuario")==null){
            response.sendRedirect("error.jsp");
            }else{
            usuario = (String)sesionusu.getAttribute("usuario");
            idusuario=(Integer)sesionusu.getAttribute("id");
             }
    
            
            int id_country;
        String nom_user, pass_user, email ;
           int id = idusuario;
           
           id_country  = Integer.parseInt(request.getParameter("pais2"));
         nom_user  = request.getParameter("nombre2");
         pass_user = request.getParameter("contra2");
         email  = request.getParameter("correo2");
         
         Usuario U = new Usuario();
         
         U.setId_user(id);
         U.setId_country(id_country);
         U.setNom_user(nom_user);
         U.setPass_user(pass_user);
         U.setEmail(email);
         
         int estatus = AccionesUsuario.actualizarUsuario(U);
            
            if(estatus > 0){
                response.sendRedirect("perfil-usuario.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }
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

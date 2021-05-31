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
import java.util.Date;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Oso
 */
public class guardarUsuario extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int id_country;
            String nom_user, pass_user, email;

            id_country = Integer.parseInt(request.getParameter("p"));
            nom_user = request.getParameter("nombre");
            pass_user = request.getParameter("contra");
            email = request.getParameter("correo");

//            boolean validarComillas = Validacion.comilla(id_country + nom_user + pass_user + email);
////         boolean validarEdad = Validacion.numero(id_country);
//            boolean validarTexto = Validacion.texto(nom_user + pass_user + email);
//            boolean validarCorreo = Validacion.correo(email);
////         boolean validarEdad2 = Validacion.edad(edad);
//            if (validarComillas == false && validarTexto == false && validarCorreo == true) {
                Usuario e = new Usuario();
                e.setId_country(id_country);
                e.setNom_user(nom_user);
                e.setPass_user(pass_user);
                e.setEmail(email);

                int estatus = AccionesUsuario.registrarUsuario(e);

                if (estatus > 0) {
                    
            HttpSession idsesion = request.getSession(true);
            
            //obtener los datos de la sesion
            
//            String iDsesion = idsesion.getId();
//            //fecha de creacion de la sesion
//            long fechacreacion = idsesion.getCreationTime();
//            //la fecha del ultimo acceso
//            long fechaultima = idsesion.getLastAccessedTime();
//            //vamos a guardar todos los datos de sesion en "cookie"
//            Integer cuenta = (Integer)idsesion.getAttribute("cuenta.ss");
//            if(cuenta == null){
//                cuenta = new Integer(1);
//            }else{
//                cuenta = new Integer(cuenta.intValue()+1);
//            }
            
//            idsesion.setAttribute("cuenta.ss", cuenta);
            idsesion.setAttribute("id", e.getId_user());
            idsesion.setAttribute("usuario", e.getNom_user());
       
            
            
            System.out.println("Sesion: "+ idsesion);
//            System.out.println("Fecha de creación: "+ new Date(fechacreacion).toString());
//            System.out.println("Fecha de ultimo acceso: "+ new Date(fechaultima).toString());
            
            Enumeration nombreParametros = idsesion.getAttributeNames();
            
            while(nombreParametros.hasMoreElements()){
                String parametro = (String)nombreParametros.nextElement();
                Object valor = idsesion.getAttribute(parametro);
                System.out.println("Atributos de la sesion: " + parametro 
                        + " Valor: " + valor.toString());
            }
            
            
          
                    
                    
                    response.sendRedirect("index-usuario.jsp");
                } else {
                    response.sendRedirect("errorUsu.jsp");
                }

//            }else {
//                response.sendRedirect("error.jsp");
//
            
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(guardarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(guardarUsuario.class.getName()).log(Level.SEVERE, null, ex);
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

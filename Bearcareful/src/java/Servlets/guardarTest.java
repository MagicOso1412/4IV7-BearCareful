/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Control.AccionesTest;
import Modelo.Test;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Oso
 */
public class guardarTest extends HttpServlet {

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
            int id_user, score_test, id_escala = 1;
            
            java.util.Date date = new java.util.Date();

            id_user = Integer.parseInt(request.getParameter("idses"));

            //obtenemos la fecha del sistema
           
            
            int i, sumatoria = 0;
            
            //Obtenemos el puntaje
            for (i = 1; i < 22; i++) {

                int input = Integer.parseInt(request.getParameter("input"+ i));
                sumatoria += input;
            } 
            
            score_test = sumatoria;
            //obtenemos la escala
            if (score_test >= 0 && score_test <= 10) {
                id_escala = 1;
            } else {
                if (score_test >= 11 && score_test <= 16) {
                    id_escala = 2;
                } else {
                    if (score_test >= 17 && score_test <= 20) {
                        id_escala = 3;
                    } else {
                        if (score_test >= 21 && score_test <= 30) {
                            id_escala = 4;
                        } else {
                            if (score_test >= 31 && score_test <= 40) {
                                id_escala = 5;
                            } else {
                                if (score_test >= 41) {
                                    id_escala = 6;
                                } else {
                                    System.out.println("Ninguna escala es valida");
                                    response.sendRedirect("error.jsp");
                                }
                            }
                        }
                    }
                }
            }

            Test t = new Test();

            t.setId_user(id_user);
            t.setId_escala(id_escala);
            System.out.println(id_user);
            System.out.println(id_escala);
            System.out.println(score_test);
            t.setScore_test(score_test);

            int estatus = AccionesTest.registrarTest(t);

            if (estatus > 0) {
                response.sendRedirect("historico-usuario.jsp");
            } else {
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
}

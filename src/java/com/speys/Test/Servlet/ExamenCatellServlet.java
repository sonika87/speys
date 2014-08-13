/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Test.Servlet;

import com.speys.Test.Bean.PeguntaExamenBean;
import com.speys.Test.Dao.ExamenCatellDao;
import com.speys.utilerias.ConexionBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julio
 */
public class ExamenCatellServlet extends HttpServlet {

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

            RequestDispatcher rd = null;

            if (request.getParameter("posicion") == null) {
                if (request.getParameter("prueba") != null) {
                    List<PeguntaExamenBean> listaPreguntas = new ExamenCatellDao().consultar();
                    Random random = new Random();
                    for (int i = 0; i < listaPreguntas.size(); i++) {
                        int aleatorio = random.nextInt(3);
                        if (aleatorio == 0) {
                            listaPreguntas.get(i).setRespuesta("A");
                        }else if(aleatorio == 1){
                            listaPreguntas.get(i).setRespuesta("B");
                        }else{
                            listaPreguntas.get(i).setRespuesta("C");
                        }
                        listaPreguntas.get(i).setEstado("R");
                    }
                    request.getSession().setAttribute("preguntas", listaPreguntas);
                    request.getSession().setAttribute("contador", 186);
                } else {
                    request.getSession().setAttribute("preguntas", new ExamenCatellDao().consultar());
                    request.getSession().setAttribute("contador", 0);
                }
                request.setAttribute("posicion", 0);
                rd = request.getRequestDispatcher("jsp/ExamenCatell.jsp");
            } else {

                int posicion = Integer.parseInt(request.getParameter("posicion"));
                List<PeguntaExamenBean> preguntas = (List<PeguntaExamenBean>) request.getSession().getAttribute("preguntas");
                System.out.println("pasa");
                if (request.getParameter("respuesta") != null) {
                    if (preguntas.get((posicion - 1)).getRespuesta() == null 
                            || preguntas.get((posicion - 1)).getRespuesta().equals("")) {
                        int contador = (int) request.getSession().getAttribute("contador");
                        request.getSession().setAttribute("contador", ++contador);
                    }
                    preguntas.get((posicion - 1)).setRespuesta(request.getParameter("respuesta"));
                    preguntas.get((posicion - 1)).setEstado("R");
                } else {
                    preguntas.get((posicion - 1)).setEstado("NR");
                }
                request.getSession().setAttribute("preguntas", preguntas);

                if (request.getParameter("direccion") != null) {
                    if (request.getParameter("direccion").equals("Anterior")) {
                        request.setAttribute("posicion", posicion - 1);
                    } else if (request.getParameter("direccion").equals("Aceptar")) {
                        request.setAttribute("posicion", posicion);
                    } else {
                        request.setAttribute("posicion", posicion + 1);
                    }
                } else {
                    posicion = Integer.parseInt(request.getParameter("posicionHiden"));
                    request.setAttribute("posicion", posicion);
                }

                rd = request.getRequestDispatcher("jsp/ExamenCatell.jsp");
            }

            rd.forward(request, response);

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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.PacienteCita.Servlet;

import com.speys.PacienteCita.Bean.PacienteCitaBean;
import com.speys.PacienteCita.Gestor.PacienteCitaGestor;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

/**
 *
 * @author Israel
 */
@WebServlet(name = "PacienteCitaServlet", urlPatterns = {"/PacienteCitaServlet"})
public class PacienteCitaServlet extends HttpServlet {

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
        System.out.println("entro al servlet");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opcion = "";

        PacienteCitaBean cita = new PacienteCitaBean();
        int citaID;
        JSONObject json = new JSONObject();
        opcion = request.getParameter("opcion");
        
        

        System.out.println("opcion" + opcion);
        if (opcion.equals("1")) {
            
            Calendar fecha = new GregorianCalendar();
        int año = fecha.get(Calendar.YEAR);
        int mes = fecha.get(Calendar.MONTH);
        int dia = fecha.get(Calendar.DAY_OF_MONTH);
        String f = Integer.toString(año)+Integer.toString(mes+1)+Integer.toString(dia);
            
             SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
            Date date = null;
            try {
                date = formatoFecha.parse(f);
            } catch (ParseException ex) {
                ex.printStackTrace();
            }        

            cita.setId_paciente(1);           
            cita.setFecha_cita(date);
            if(request.getParameter("pagoCheck") != null){
                cita.setPago_cita(1);
                        }else{
                cita.setPago_cita(0);
            }            
            cita.setObservaciones_cita(request.getParameter("observaciones"));

            System.out.println("lleno datos");
        }
        try {
            PacienteCitaGestor pG = new PacienteCitaGestor();
            String InfoMensajeJson = "";
            if (opcion.equals("1")) {
                System.out.println("entrando a insertar");
                InfoMensajeJson = pG.InsertaCita(cita);
                out.print(InfoMensajeJson);
            } 

        } catch (Exception e) {
            System.out.println(e.getCause());
        } finally {
            out.close();
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

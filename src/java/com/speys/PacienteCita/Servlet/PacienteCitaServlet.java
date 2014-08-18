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
import java.util.Date;
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
        
         SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
            String strFecha = request.getParameter("fecha");
            Date fecha = null;
            try {
                fecha = formatoFecha.parse(strFecha);
            } catch (ParseException ex) {
                ex.printStackTrace();
            }

        System.out.println("opcion" + opcion);
        if (opcion.equals("2") || opcion.equals("3")) {         

            System.out.println(fecha.toString());
            cita.setId_paciente(Integer.parseInt(request.getParameter("id_paciente")));           
            cita.setFecha_cita(fecha);
            cita.setPago_cita(Integer.parseInt(request.getParameter("pago")));
            cita.setObservaciones_cita(request.getParameter("observaciones"));

            System.out.println("lleno datos");
        }
        try {
            PacienteCitaGestor pG = new PacienteCitaGestor();
            String InfoMensajeJson = "";
            if (opcion.equals("2")) {
                System.out.println("entrando a insertar");
                InfoMensajeJson = pG.InsertaCita(cita);
                out.print(InfoMensajeJson);
            } else if (opcion.equals("3")) {
                cita.setId_cita(Integer.parseInt(request.getParameter("id_cita")));
//               InfoMensajeJson=pG.EditaPaciente(cita);
                System.out.println("InfoMensajeJson-->" + InfoMensajeJson);
                out.print(InfoMensajeJson);

            }
//            else if (opcion.equals("4")) {
//               PacienteId=Integer.parseInt(request.getParameter("pacienteId"));
//               InfoMensajeJson=pG.ConsultaPaciente(PacienteId);
//                out.print(InfoMensajeJson);
//                 System.out.println("paciente-->"+InfoMensajeJson);
//            }

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

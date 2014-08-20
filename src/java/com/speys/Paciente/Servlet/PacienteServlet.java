/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.speys.Paciente.Servlet;

import com.speys.Paciente.Bean.PacienteBean;
import com.speys.Paciente.Gestor.PacienteGestor;
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
 * @author Gaby
 */
@WebServlet(name = "PacienteServlet", urlPatterns = {"/PacienteServlet"})
public class PacienteServlet extends HttpServlet {

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
        PacienteBean pacienteB = new PacienteBean() ;
        int PacienteId;
        JSONObject json = new JSONObject();
        opcion = request.getParameter("opcion");    
        
        System.out.println("opcion"+opcion);
        if (opcion.equals("2")|| opcion.equals("3")){
            int edad=0;
            int meses=0;         
        edad = Integer.parseInt(request.getParameter("edad"));
        meses = Integer.parseInt(request.getParameter("meses"));
        pacienteB.setNombre(request.getParameter("nombreP"));
        pacienteB.setaPaterno(request.getParameter("aPaterno"));
        pacienteB.setaMaterno(request.getParameter("aMaterno"));
        pacienteB.setSexo(request.getParameter("sexo"));
        pacienteB.setAnioEdad(edad);
        pacienteB.setMesesEdad(meses);
        pacienteB.setDireccion(request.getParameter("direccionP"));
        pacienteB.setTelefono(request.getParameter("telefonoP"));
        pacienteB.setEstadoCivil(request.getParameter("estadoCivilP"));
        pacienteB.setCiudadOrigen(request.getParameter("ciudadOrigenP"));
        pacienteB.setCorreoElectronico(request.getParameter("correoElecP"));
        pacienteB.setNivelEstudios(request.getParameter("nivelEstudiosP"));
        pacienteB.setCostoConsulta(Double.parseDouble(request.getParameter("costoConsultaP")));
        
            System.out.println("lleno datos");
        }
        try {
            PacienteGestor pG = new PacienteGestor();
            String InfoMensajeJson = "";
            if (opcion.equals("1")) {
                InfoMensajeJson = pG.ConsultaPacientes();
                 out.print(InfoMensajeJson);
                 System.out.println("InfoMensajeJson-->"+InfoMensajeJson);
            } else if (opcion.equals("2")) {
                System.out.println("entrando a insertar");
              InfoMensajeJson=pG.InsertaPaciente(pacienteB);

              out.print(InfoMensajeJson);
            } else if (opcion.equals("3")) {
                pacienteB.setPacienteId(Integer.parseInt(request.getParameter("pacienteId")));
               InfoMensajeJson=pG.EditaPaciente(pacienteB);
                System.out.println("InfoMensajeJson-->"+InfoMensajeJson);
                out.print(InfoMensajeJson);
               
            }else if (opcion.equals("4")) {
               PacienteId=Integer.parseInt(request.getParameter("pacienteId"));
               InfoMensajeJson=pG.ConsultaPaciente(PacienteId);
                out.print(InfoMensajeJson);
                 System.out.println("paciente-->"+InfoMensajeJson);
            }else if (opcion.equals("5")) {
               PacienteId=Integer.parseInt(request.getParameter("pacienteId"));
               InfoMensajeJson=pG.EliminaPaciente(PacienteId);
                out.print(InfoMensajeJson);
            }else if (opcion.equals("6")) {
             
               InfoMensajeJson=pG.ConsultalistaPacientes();
                out.print(InfoMensajeJson);
                System.out.println("++++++++++"+InfoMensajeJson);
            }else if (opcion.equals("7")) {
              PacienteId=Integer.parseInt(request.getParameter("pacienteId"));
               InfoMensajeJson=pG.ConsultaHistorialPaciente(PacienteId);
                out.print(InfoMensajeJson);
                System.out.println("*************"+InfoMensajeJson);
            }else if (opcion.equals("8")) {
              PacienteId=Integer.parseInt(request.getParameter("pacienteId"));
               InfoMensajeJson=pG.buscaCita(PacienteId);
                out.print(InfoMensajeJson);
                System.out.println("-----------"+InfoMensajeJson);
            }else if (opcion.equals("9")) {
                 PacienteBean pacienteBean = new PacienteBean() ;
               pacienteBean.setPago_cita(Integer.parseInt(request.getParameter("statusP")));      
              pacienteBean.setObservaciones_cita(request.getParameter("obserP"));
              pacienteBean.setId_cita(Integer.parseInt(request.getParameter("citaId")));
               InfoMensajeJson=pG.EditaCita(pacienteBean);
                out.print(InfoMensajeJson);
                System.out.println("-----------"+InfoMensajeJson);
            }else if (opcion.equals("10")) {

             int pagocita=0;
              
                /*ALTA DE CITA*/
                 PacienteBean pacienteBean = new PacienteBean() ;
                 pacienteBean.setPacienteId(Integer.parseInt(request.getParameter("pacienteId")));

                 if(request.getParameter("statusP").equals("true")){
                    pagocita=1;
                 }else{
                      pagocita=0;
                 }
                 
                 System.out.println("pagocita{{{{{{{{{{{{{{{{{{"+pagocita);
               pacienteBean.setPago_cita(pagocita);      
              pacienteBean.setObservaciones_cita(request.getParameter("obserP"));
              
             pacienteBean.setFechaCita(request.getParameter("fechaCita"));
            
               InfoMensajeJson=pG.InsertaCita(pacienteBean);
                out.print(InfoMensajeJson);
                System.out.println("lllllllllllllllllllllllllllllll-------->"+InfoMensajeJson);
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

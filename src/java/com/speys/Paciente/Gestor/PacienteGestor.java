/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Paciente.Gestor;

import com.google.gson.Gson;
import com.speys.Paciente.Bean.PacienteBean;
import com.speys.Paciente.Dao.PacienteDao;
import com.speys.PacienteCita.Bean.PacienteCitaBean;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gaby
 */
public class PacienteGestor {

    PacienteDao paD = new PacienteDao();
    Gson gsonObjet;

    public String ConsultaPacientes() {
        List resul = new ArrayList();
        String json = null;
        resul = paD.consultaPacientes();
        json = new Gson().toJson(resul);
        return json;

    }
    
     public String ConsultalistaPacientes() {
        List resul = new ArrayList();
        String json = null;
        resul = paD.consultaListaPacientes();
        json = new Gson().toJson(resul);
        return json;

    }

    public String ConsultaPaciente(int pacienteId) {
        List resul = new ArrayList();
        String json = null;
        resul = paD.consultaPaciente(pacienteId);
        json = new Gson().toJson(resul);
        return json;

    }

    public String InsertaPaciente(PacienteBean pacienteB) {
        String json = null;
        String mensaje = "";
        mensaje = Message(paD.InsertaPaciente(pacienteB));
        json = new Gson().toJson(mensaje);
        return json;

    }

    public String EditaPaciente(PacienteBean pacienteB) {
        String json = null;
        String mensaje = "";
        mensaje = Message(paD.EditaPaciente(pacienteB));
        json = new Gson().toJson(mensaje);
        return json;
    }

    public String EliminaPaciente(int pacienteId) {
        String json = null;
        String mensaje = "";
        mensaje = Message(paD.EliminaPaciente(pacienteId));
        json = new Gson().toJson(mensaje);
        return json;
    }

    public String Message(boolean Ok) {
        String Message = null;
        if (Ok) {
            Message = "La operación se realizó satisfactoriamente";
        } else {
            Message = "Error al realizar la operación";
        }
        return Message;
    }
    
     public String ConsultaHistorialPaciente(int pacienteId) {
        List resul = new ArrayList();
        String json = null;
        resul = paD.consultaHistorialPaciente(pacienteId);
        json = new Gson().toJson(resul);
        return json;

    }
     
       public String buscaCita(int pacienteId ) {
        List resul = new ArrayList();
        String json = null;
        resul = paD.consultaCita(pacienteId);
        json = new Gson().toJson(resul);
        return json;

    }
       
       public String EditaCita(PacienteBean pacienteB) {
        String json = null;
        String mensaje = "";
        mensaje = Message(paD.EditaCita(pacienteB));
        json = new Gson().toJson(mensaje);
        return json;
    }
       public String InsertaCita(PacienteBean pacienteB) {
        String json = null;
        String mensaje = "";
        mensaje = Message(paD.InsertarCita(pacienteB));
        json = new Gson().toJson(mensaje);
        return json;

    }
       
       

}

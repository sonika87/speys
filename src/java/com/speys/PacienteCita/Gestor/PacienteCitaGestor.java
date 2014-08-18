/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.speys.PacienteCita.Gestor;

import com.google.gson.Gson;
import com.speys.PacienteCita.Bean.PacienteCitaBean;
import com.speys.PacienteCita.Dao.PacienteCitaDao;

/**
 *
 * @author Israel
 */
public class PacienteCitaGestor {
    PacienteCitaDao citaDao = new PacienteCitaDao();
    Gson gsonObjet;

    public String Message(boolean Ok) {
        String Message = null;
        if (Ok) {
            Message = "La operación se realizó satisfactoriamente";
        } else {
            Message = "Error al realizar la operación";
        }
        return Message;
    }
    
    public String InsertaCita(PacienteCitaBean pacienteB) {
        String json = null;
        String mensaje = "";
        mensaje = Message(citaDao.InsertarCita(pacienteB));
        json = new Gson().toJson(mensaje);
        return json;

    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.speys.PacienteCita.Dao;

import com.speys.PacienteCita.Bean.PacienteCitaBean;
import com.speys.utilerias.ConexionBD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Israel
 */
public class PacienteCitaDao {
    private CallableStatement stm = null;
    private Connection con;
    private PreparedStatement psm = null;
    private ConexionBD conMySql;
    private ResultSet rs;
    private String PA_SPEYS_Inserta_Cita = "{call PA_SPEYS_Inserta_Cita(?,?,?,?)}";

    public PacienteCitaDao() {
        conMySql = ConexionBD.getConexionInstance();
    }
    
    public boolean InsertarCita(PacienteCitaBean cita){
         boolean insertar = false;
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Inserta_Cita);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setInt(1, cita.getId_paciente());
            stm.setDate(2, (Date) cita.getFecha_cita());
            stm.setInt(3, cita.getPago_cita());
            stm.setString(4, cita.getObservaciones_cita());            
            insertar = stm.executeUpdate() == 1;
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return insertar;
    }
    
}

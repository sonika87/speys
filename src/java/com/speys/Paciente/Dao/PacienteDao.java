/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Paciente.Dao;

import com.speys.Paciente.Bean.PacienteBean;
import com.speys.utilerias.ConexionBD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Gaby
 */
public class PacienteDao {

    private CallableStatement stm = null;
    private Connection con;
    private PreparedStatement psm = null;
    private ConexionBD conMySql;
    private ResultSet rs;
    private String PA_SPEYS_Inserta_Paciente = "{call PA_SPEYS_Inserta_Paciente(?,?,?,?,?,?,?,?,?,?,?,?,?)}";

    PacienteDao() {
        conMySql = ConexionBD.getConexionInstance();
    }
    
    public boolean InsertaPaciente(PacienteBean pacienteB){
        boolean insercion = false;
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Inserta_Paciente);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setString(1, pacienteB.getNombre());
            stm.setString(2, pacienteB.getaPaterno());
            stm.setString(3, pacienteB.getaMaterno());            
            stm.setString(4, pacienteB.getSexo());
            stm.setInt(5, pacienteB.getAnioEdad());
            stm.setInt(6, pacienteB.getMesesEdad());
            stm.setString(7, pacienteB.getDireccion());
            stm.setString(8, pacienteB.getTelefono());
            stm.setString(9, pacienteB.getEstadoCivil());
            stm.setString(10, pacienteB.getCiudadOrigen());
            stm.setString(11, pacienteB.getCorreoElectronico());
            stm.setString(12, pacienteB.getNivelEstudios());
            stm.setDouble(13, pacienteB.getCostoConsulta());
            insercion = stm.executeUpdate() == 1;             
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return insercion;
    }
}

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
import java.util.ArrayList;
import java.util.List;

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
    private String PA_SPEYS_Consulta_Paciente = "{call PA_SPEYS_Consulta_Paciente(?)}";
    private String PA_SPEYS_Elimina_Paciente = "{call PA_SPEYS_Elimina_Paciente(?)}";
    private String PA_SPEYS_Edita_Paciente = "{call PA_SPEYS_Edita_Paciente(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
    private String PA_SPEYS_Consulta_Pacientes = "{call PA_SPEYS_Consulta_Pacientes()}";

    public PacienteDao() {
        conMySql = ConexionBD.getConexionInstance();
    }

    public boolean InsertaPaciente(PacienteBean pacienteB) {
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

    public List consultaPaciente(int pacienteId) {
        List resul = new ArrayList();
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Consulta_Paciente);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setInt(1, pacienteId);
            stm.execute();
            rs = stm.getResultSet();
            while (rs.next()) {
                PacienteBean pacienteB = new PacienteBean();
                pacienteB.setPacienteId(rs.getInt(1));
                pacienteB.setNombre(rs.getString(2));
                pacienteB.setaPaterno(rs.getString(3));
                pacienteB.setaMaterno(rs.getString(4));
                pacienteB.setSexo(rs.getString(5));
                pacienteB.setAnioEdad(rs.getInt(6));
                pacienteB.setMesesEdad(rs.getInt(7));
                pacienteB.setDireccion(rs.getString(8));
                pacienteB.setTelefono(rs.getString(9));
                pacienteB.setEstadoCivil(rs.getString(10));
                pacienteB.setCiudadOrigen(rs.getString(11));
                pacienteB.setCorreoElectronico(rs.getString(12));
                pacienteB.setNivelEstudios(rs.getString(13));
                pacienteB.setCostoConsulta(rs.getDouble(14));
                resul.add(pacienteB);
            }
            rs.close();
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return resul;
    }
    
     public List consultaPacientes() {
        List resul = new ArrayList();
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Consulta_Pacientes);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.execute();
            rs = stm.getResultSet();
            while (rs.next()) {
                PacienteBean pacienteB = new PacienteBean();
                pacienteB.setPacienteId(rs.getInt(1));
                pacienteB.setNombre(rs.getString(2));
                pacienteB.setaPaterno(rs.getString(3));
                pacienteB.setaMaterno(rs.getString(4));
                pacienteB.setSexo(rs.getString(5));
                pacienteB.setAnioEdad(rs.getInt(6));
                pacienteB.setMesesEdad(rs.getInt(7));
                pacienteB.setDireccion(rs.getString(8));
                pacienteB.setTelefono(rs.getString(9));
                pacienteB.setEstadoCivil(rs.getString(10));
                pacienteB.setCiudadOrigen(rs.getString(11));
                pacienteB.setCorreoElectronico(rs.getString(12));
                pacienteB.setNivelEstudios(rs.getString(13));
                pacienteB.setCostoConsulta(rs.getDouble(14));
                resul.add(pacienteB);
            }
            rs.close();
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            System.out.println(sqle);
        }
        return resul;
    }

    public boolean EliminaPaciente(int pacienteId) {
        boolean eliminacion = false;
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Elimina_Paciente);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setInt(1, pacienteId);
            eliminacion = stm.executeUpdate() == 1;
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return eliminacion;
    }

    public boolean EditaPaciente(PacienteBean pacienteB) {
        boolean edicion = false;
        try {
            con = (com.mysql.jdbc.Connection) conMySql.getCon();
            stm = (com.mysql.jdbc.CallableStatement) con.prepareCall(PA_SPEYS_Edita_Paciente);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setInt(1, pacienteB.getPacienteId());
            stm.setString(2, pacienteB.getNombre());
            stm.setString(3, pacienteB.getaPaterno());
            stm.setString(4, pacienteB.getaMaterno());
            stm.setString(5, pacienteB.getSexo());
            stm.setInt(6, pacienteB.getAnioEdad());
            stm.setInt(7, pacienteB.getMesesEdad());
            stm.setString(8, pacienteB.getDireccion());
            stm.setString(9, pacienteB.getTelefono());
            stm.setString(10, pacienteB.getEstadoCivil());
            stm.setString(11, pacienteB.getCiudadOrigen());
            stm.setString(12, pacienteB.getCorreoElectronico());
            stm.setString(13, pacienteB.getNivelEstudios());
            stm.setDouble(14, pacienteB.getCostoConsulta());
            edicion = stm.executeUpdate() == 1;
            stm.close();
            con.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return edicion;
    }
}

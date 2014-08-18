/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Test.Dao;

import com.speys.Test.Bean.PeguntaExamenBean;
import com.speys.utilerias.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Julio
 */
public class ExamenCatellDao {

    Connection con;

    public ExamenCatellDao() {
        ConexionBD conexionBD = new ConexionBD();
        con = conexionBD.getCon();
    }

    public List<PeguntaExamenBean> consultar() {

        List<PeguntaExamenBean> peguntas = new ArrayList<>();
        ResultSet rs = null;
        PreparedStatement stm = null;
        String sql = "SELECT * FROM preguntasPrueba";

        try {
            stm = (PreparedStatement) con.prepareStatement(sql);
            rs = (ResultSet) stm.executeQuery();
            while (rs.next()) {
                PeguntaExamenBean pregunta = new PeguntaExamenBean();
                pregunta.setNumero(rs.getInt("idPreguntaPrueba"));
                pregunta.setPregunta(rs.getString("pregunta"));
                pregunta.setResA(rs.getString("resA"));
                pregunta.setResB(rs.getString("resB"));
                pregunta.setResC(rs.getString("resC"));
                pregunta.setFactor("");
                pregunta.setEstado("");
                pregunta.setRespuesta("");

                peguntas.add(pregunta);

            }
            rs.close();
            con.close();
        } catch (SQLException sqle) {
            System.out.println("error: " + sqle.getErrorCode());
        }
        return peguntas;
    }

    public void insertarRespuestas(int id, String factor, float esten, String detalle) {

        Statement statement = null;
        try {
            statement = (Statement) con.createStatement();
            String query = "INSERT INTO resultados (paciente_id,factor,estenes,detalle) "
                    + "values ('"+id+"','"+factor+"','"+esten+"','"+detalle+"');";
            if (statement.execute(query)) {
                System.out.println("registro corresto");
            } else {
                System.out.println("error en la insercion");
            }
        } catch (SQLException e) {
            System.out.println("error " + e);
        } finally {

        }

    }

}

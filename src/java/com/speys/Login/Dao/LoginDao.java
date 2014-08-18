/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Login.Dao;

import com.speys.Login.Bean.LoginBean;
import com.speys.Login.Bean.PrincipalBean;
import com.speys.utilerias.ConexionBD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

/**
 *
 * @author Gaby
 */
public class LoginDao {

    private CallableStatement stm = null;
    private Connection con;
    private PreparedStatement psm = null;
    private ConexionBD conMySql;
    private ResultSet rs;
    private String PA_SPEYS_SESION = "{call PA_SPEYS_SESION(?,?,?)}";

    public LoginDao() {
        conMySql = ConexionBD.getConexionInstance();
    }

    public PrincipalBean inicioSesion(String param001, String param002) {
        PrincipalBean principal = new PrincipalBean();
        try {
            con = conMySql.getCon();
            stm = (CallableStatement) con.prepareCall(PA_SPEYS_SESION);
            /*PARAMETROS DE ENTRADA (VARIABLES QUE RECIBE EL PROCEDIMIENTO)*/
            stm.setString("param001", param001);
            stm.setString("param002", param002);
            /*PARAMETROS DE SALIDA (VARIABLES QUE NOS VA RETORNAR EL PROCEDIMIENTO)*/
            stm.registerOutParameter("param003", Types.BOOLEAN);
            /*SE EJECUTA EL PROCEDIMIENTO*/
            stm.execute();
            if (stm.getBoolean("param003")) {
                /*SI existe el usuario llenamos su bean*/
                LoginBean loginBean = new LoginBean();
                rs = stm.getResultSet();
                while (rs.next()) {
                    loginBean.setIdUsuario(rs.getInt(1));
                    loginBean.setNombreUsuario(rs.getString(2));
                    loginBean.setNombre(rs.getString(3));
                    loginBean.setaPaterno(rs.getString(4));
                    loginBean.setaMaterno(rs.getString(5));
                    loginBean.setContrasena(rs.getString(6));

                }
                principal.setLoginBean(loginBean);
                principal.setValidSesion(true);
                principal.setMensaje("Usuario Correcto");
            } else {
                /*NO EXISTE UN USUARIO CON ESAS CARACTERISTICAS*/
                principal.setHayMensajes(true);
                principal.setMensaje("Usuario Incorrecto");
                principal.setValidSesion(false);
            }
        } catch (SQLException ex) {
            System.out.println("Error en " + ex);
            System.out.println("query " + PA_SPEYS_SESION);
        }
        return principal;
    }

//       public static void main(String[] args) {
//        LoginDao lo = new LoginDao();
//        PrincipalBean pb = null;
//       pb = lo.inicioSesion("gabyrs", "123");
//           System.out.println("-->"+pb.getMensaje());
//           System.out.println(""+pb.isValidSesion()); 
//    }
}

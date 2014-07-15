/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.utilerias;

/**
 *
 * @author 13/07/2014
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;

/**
 * Clase que establece el medio de comunicacion con la base de datos
 */
public class ConexionBD {

    private static String ipAddress;
    private static String dbName;
    private static String user;
    private static String password;
    private static String service;
    private static ResourceBundle propiedadesBD;
    /*Se instancia para dar paso al patron singleton*/
    private static ConexionBD conexion;
    private static Connection con; //  guarda el objeto connexión.

    /*Constructor inicializa los datos de host,puerto,usuario,password*/
    public ConexionBD() {
        performConnection();
    }

    /*retorno la instancia*/
    public static ConexionBD getConexionInstance() {
        if (conexion == null) {
            conexion = new ConexionBD();
        }
        return conexion;

    }
    /*obtengo la conexion*/

    public Connection getCon() {
        try { // preparamos la conexión
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + ipAddress + ":" + service + "/" + dbName, user, password);
            System.out.println("Hay conexion");
        } catch (Exception e) {
            System.out.println("Error al abrir la conexión en: " + e);
        }
        return con;
    }

    /**
     * Método para eliminar la conexión y la instancia
     */
    public static void dellInstance() {

        closeConnection();
        conexion = null;
    }

    /**
     * toma los datos de un properties
     */
    private void performConnection() {
        if (propiedadesBD == null) {
            propiedadesBD = ResourceBundle.getBundle("mysql");
            ipAddress = propiedadesBD.getString("ip_address");
            dbName = propiedadesBD.getString("db_name");
            user = propiedadesBD.getString("user");
            password = propiedadesBD.getString("password");
            service = propiedadesBD.getString("service");
        }
    }

    /**
     * Método para cerrar la conexión con la base de datos
     */
    private static void closeConnection() {
        try {
            con.close();
        } catch (Exception e) {
            System.out.println("Error al cerrar la conexión.");
        }
    }

    /* Si se trata de clonar, para crear una nueva instancia...
     * El método "clone" es sobreescrito por el siguiente,
     * que arroja una excepción:*/
    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    public static void main(String[] args) {
        ConexionBD con = new ConexionBD();
        con.getCon();
    }
}

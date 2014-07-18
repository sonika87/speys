/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Login.Bean;

import java.util.List;

/**
 *
 * @author Gaby
 */
public class PrincipalBean {

    private boolean validSesion;
    private String tipoUsuario;
    private LoginBean loginBean;
    /* MENSAJES*/
    private String mensaje;
    private boolean hayMensajes;
    private List mensajes;

    /**
     * @return the validSesion
     */
    public boolean isValidSesion() {
        return validSesion;
    }

    /**
     * @param validSesion the validSesion to set
     */
    public void setValidSesion(boolean validSesion) {
        this.validSesion = validSesion;
    }

    /**
     * @return the tipoUsuario
     */
    public String getTipoUsuario() {
        return tipoUsuario;
    }

    /**
     * @param tipoUsuario the tipoUsuario to set
     */
    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    /**
     * @return the mensaje
     */
    public String getMensaje() {
        return mensaje;
    }

    /**
     * @param mensaje the mensaje to set
     */
    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    /**
     * @return the hayMensajes
     */
    public boolean isHayMensajes() {
        return hayMensajes;
    }

    /**
     * @param hayMensajes the hayMensajes to set
     */
    public void setHayMensajes(boolean hayMensajes) {
        this.hayMensajes = hayMensajes;
    }

    /**
     * @return the mensajes
     */
    public List getMensajes() {
        return mensajes;
    }

    /**
     * @param mensajes the mensajes to set
     */
    public void setMensajes(List mensajes) {
        this.mensajes = mensajes;
    }

    /**
     * @return the loginBean
     */
    public LoginBean getLoginBean() {
        return loginBean;
    }

    /**
     * @param loginBean the loginBean to set
     */
    public void setLoginBean(LoginBean loginBean) {
        this.loginBean = loginBean;
    }

}

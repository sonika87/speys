/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Login.Gestor;

import com.google.gson.Gson;
import com.speys.Login.Bean.PrincipalBean;
import com.speys.Login.Dao.LoginDao;

/**
 *
 * @author sonika
 */
public class LoginGestor {

    LoginDao loginD = new LoginDao();
    Gson gsonObjet;

    public String validarParametros(String param001, String param002) {
        String json = null;
        boolean sesionValida = false;
        PrincipalBean principalBean = loginD.inicioSesion(param001, param002);
        if (principalBean.isValidSesion()) {
            sesionValida = true;
        } else {
            sesionValida = false;
        }
        json = new Gson().toJson(sesionValida);
        return json;

    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Paciente.Bean;

import com.speys.PacienteCita.Bean.PacienteCitaBean;

/**
 *
 * @author Gaby
 */
public class PacienteBean extends PacienteCitaBean{

    private int pacienteId;
    private String nombre;
    private String aMaterno;
    private String aPaterno;
    private String sexo;
    private int anioEdad;
    private int mesesEdad;
    private String direccion;
    private String telefono;
    private String estadoCivil;
    private String ciudadOrigen;
    private String correoElectronico;
    private double costoConsulta;
    private String nivelEstudios;

    /**
     * @return the pacienteId
     */
    public int getPacienteId() {
        return pacienteId;
    }

    /**
     * @param pacienteId the pacienteId to set
     */
    public void setPacienteId(int pacienteId) {
        this.pacienteId = pacienteId;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the aMaterno
     */
    public String getaMaterno() {
        return aMaterno;
    }

    /**
     * @param aMaterno the aMaterno to set
     */
    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    /**
     * @return the aPaterno
     */
    public String getaPaterno() {
        return aPaterno;
    }

    /**
     * @param aPaterno the aPaterno to set
     */
    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the anioEdad
     */
    public int getAnioEdad() {
        return anioEdad;
    }

    /**
     * @param anioEdad the anioEdad to set
     */
    public void setAnioEdad(int anioEdad) {
        this.anioEdad = anioEdad;
    }

    /**
     * @return the mesesEdad
     */
    public int getMesesEdad() {
        return mesesEdad;
    }

    /**
     * @param mesesEdad the mesesEdad to set
     */
    public void setMesesEdad(int mesesEdad) {
        this.mesesEdad = mesesEdad;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the estadoCivil
     */
    public String getEstadoCivil() {
        return estadoCivil;
    }

    /**
     * @param estadoCivil the estadoCivil to set
     */
    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    /**
     * @return the ciudadOrigen
     */
    public String getCiudadOrigen() {
        return ciudadOrigen;
    }

    /**
     * @param ciudadOrigen the ciudadOrigen to set
     */
    public void setCiudadOrigen(String ciudadOrigen) {
        this.ciudadOrigen = ciudadOrigen;
    }

    /**
     * @return the correoElectronico
     */
    public String getCorreoElectronico() {
        return correoElectronico;
    }

    /**
     * @param correoElectronico the correoElectronico to set
     */
    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    /**
     * @return the costoConsulta
     */
    public double getCostoConsulta() {
        return costoConsulta;
    }

    /**
     * @param costoConsulta the costoConsulta to set
     */
    public void setCostoConsulta(double costoConsulta) {
        this.costoConsulta = costoConsulta;
    }

    /**
     * @return the nivelEstudios
     */
    public String getNivelEstudios() {
        return nivelEstudios;
    }

    /**
     * @param nivelEstudios the nivelEstudios to set
     */
    public void setNivelEstudios(String nivelEstudios) {
        this.nivelEstudios = nivelEstudios;
    }

}

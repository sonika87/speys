/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.speys.PacienteCita.Bean;



import java.util.Date;

/**
 *
 * @author Israel
 */
public class PacienteCitaBean{
    private int id_cita;
    private int id_paciente;
    private Date fecha_cita;
    private String fechaCita;
    private int pago_cita;
    private String observaciones_cita;

    /**
     * @return the id_cita
     */
    public int getId_cita() {
        return id_cita;
    }

    /**
     * @param id_cita the id_cita to set
     */
    public void setId_cita(int id_cita) {
        this.id_cita = id_cita;
    }

    /**
     * @return the id_paciente
     */
    public int getId_paciente() {
        return id_paciente;
    }

    /**
     * @param id_paciente the id_paciente to set
     */
    public void setId_paciente(int id_paciente) {
        this.id_paciente = id_paciente;
    }

    /**
     * @return the fecha_cita
     */
    public Date getFecha_cita() {
        return fecha_cita;
    }

    /**
     * @param fecha_cita the fecha_cita to set
     */
    public void setFecha_cita(Date fecha_cita) {
        this.fecha_cita = fecha_cita;
    }

    /**
     * @return the pago_cita
     */
    public int getPago_cita() {
        return pago_cita;
    }

    /**
     * @param pago_cita the pago_cita to set
     */
    public void setPago_cita(int pago_cita) {
        this.pago_cita = pago_cita;
    }

    /**
     * @return the observaciones_cita
     */
    public String getObservaciones_cita() {
        return observaciones_cita;
    }

    /**
     * @param observaciones_cita the observaciones_cita to set
     */
    public void setObservaciones_cita(String observaciones_cita) {
        this.observaciones_cita = observaciones_cita;
    }

    /**
     * @return the fechaCita
     */
    public String getFechaCita() {
        return fechaCita;
    }

    /**
     * @param fechaCita the fechaCita to set
     */
    public void setFechaCita(String fechaCita) {
        this.fechaCita = fechaCita;
    }
    
    

}

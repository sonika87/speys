/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.speys.Test.Bean;

/**
 *
 * @author Julio
 */
public class PeguntaExamenBean {
    
    private int numero;
    private String pregunta;
    private String resA;
    private String resB;
    private String resC;
    private String factor;
    private String estado;
    private String respuesta;
    
    /**
     * @return the numero
     */
    public int getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(int numero) {
        this.numero = numero;
    }

    /**
     * @return the pregunta
     */
    public String getPregunta() {
        return pregunta;
    }

    /**
     * @param pregunta the pregunta to set
     */
    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    /**
     * @return the resA
     */
    public String getResA() {
        return resA;
    }

    /**
     * @param resA the resA to set
     */
    public void setResA(String resA) {
        this.resA = resA;
    }

    /**
     * @return the resB
     */
    public String getResB() {
        return resB;
    }

    /**
     * @param resB the resB to set
     */
    public void setResB(String resB) {
        this.resB = resB;
    }

    /**
     * @return the resC
     */
    public String getResC() {
        return resC;
    }

    /**
     * @param resC the resC to set
     */
    public void setResC(String resC) {
        this.resC = resC;
    }

    /**
     * @return the factor
     */
    public String getFactor() {
        return factor;
    }

    /**
     * @param factor the factor to set
     */
    public void setFactor(String factor) {
        this.factor = factor;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the respuesta
     */
    public String getRespuesta() {
        return respuesta;
    }

    /**
     * @param respuesta the respuesta to set
     */
    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }
    
    
    //--------------------------------------------------------------------------
    //------------------------------Plantilla-----------------------------------
    //--------------------------------------------------------------------------
    
    private static final Object[] A = {new ValorRespuestaBean(20,2,1,0),21,39,58,77,96,115,134,153,172};
    private static final Object[] B = {3,22,40,41,59,60,78,79,97,116,135,154,173};
    private static final Object[] C = {4,23,42,61,80,98,99,117,118,136,137,155,174,};
    private static final Object[] E = {5,6,24,43,62,81,100,119,138,156,157,175,176};
    private static final Object[] F = {7,25,26,44,45,63,64,82,101,120,139,158,177,};
    private static final Object[] G = {8,27,46,65,83,102,121,140,159,178};
    private static final Object[] H = {9,28,47,66,84,85,103,104,122,123,141,160,179};
    private static final Object[] I = {10,29,48,67,86,105,124,142,161,180};
    private static final Object[] L = {11,30,49,68,87,106,125,143,162,181};
    private static final Object[] M = {12,31,50,69,88,107,126,144,145,163,164,182,183};
    private static final Object[] N = {13,32,51,70,89,108,127,146,165,184};
    private static final Object[] O = {14,15,33,34,52,53,71,90,109,128,147,166,185};
    private static final Object[] Q1 = {16,35,54,72,91,110,129,148,167,186};
    private static final Object[] Q2 = {17,36,55,73,74,92,111,130,149,168};
    private static final Object[] Q3 = {18,37,56,75,93,94,112,131,150,169};
    private static final Object[] Q4 = {19,38,57,76,95,113,114,132,133,151,152,170,171};
    
    /**
     * @return the A
     */
    public static Object[] getA() {
        return A;
    }

    /**
     * @return the B
     */
    public static Object[] getB() {
        return B;
    }

    /**
     * @return the C
     */
    public static Object[] getC() {
        return C;
    }

    /**
     * @return the E
     */
    public static Object[] getE() {
        return E;
    }

    /**
     * @return the F
     */
    public static Object[] getF() {
        return F;
    }

    /**
     * @return the G
     */
    public static Object[] getG() {
        return G;
    }

    /**
     * @return the H
     */
    public static Object[] getH() {
        return H;
    }

    /**
     * @return the I
     */
    public static Object[] getI() {
        return I;
    }

    /**
     * @return the L
     */
    public static Object[] getL() {
        return L;
    }

    /**
     * @return the M
     */
    public static Object[] getM() {
        return M;
    }

    /**
     * @return the N
     */
    public static Object[] getN() {
        return N;
    }

    /**
     * @return the O
     */
    public static Object[] getO() {
        return O;
    }

    /**
     * @return the Q1
     */
    public static Object[] getQ1() {
        return Q1;
    }

    /**
     * @return the Q2
     */
    public static Object[] getQ2() {
        return Q2;
    }

    /**
     * @return the Q3
     */
    public static Object[] getQ3() {
        return Q3;
    }

    /**
     * @return the Q4
     */
    public static Object[] getQ4() {
        return Q4;
    }
    
}

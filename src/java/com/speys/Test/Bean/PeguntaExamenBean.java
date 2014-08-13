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
    
    private static final Object[] A = {20, 2, 1, 0, 21, 0, 1, 2, 39, 0, 1, 2, 58, 0, 1, 2, 77, 2, 1, 0, 96, 0, 1, 2, 115, 2, 1, 0, 134, 2, 1, 0, 153, 0, 1, 2, 172, 2, 1, 0};
    private static final Object[] B = {3, 0, 1, 0, 22, 0, 1, 0, 40, 0, 1, 0, 41, 0, 0, 1, 59, 0, 1, 0, 60, 0, 0, 1, 78, 0, 1, 0, 79, 0, 0, 1, 97, 0, 1, 0, 116, 1, 0, 0, 135, 0, 0, 1, 154, 1, 0, 0, 173, 1, 0, 0};
    private static final Object[] C = {4, 2, 1, 0, 23, 0, 1, 2, 42, 0, 1, 2, 61, 2, 1, 0, 80, 2, 1, 0, 98, 0, 1, 2, 99, 0, 1, 2, 117, 2, 1, 0, 118, 2, 1, 0, 136, 0, 1, 2, 137, 2, 1, 0, 155, 0, 1, 2, 174, 2, 1, 0};
    private static final Object[] E = {5, 0, 1, 2, 6, 2, 1, 0, 24, 0, 1, 2, 43, 0, 1, 2, 62, 2, 1, 0, 81, 0, 1, 2, 100, 0, 1, 2, 119, 0, 1, 2, 138, 2, 1, 0, 156, 2, 1, 0, 157, 2, 1, 0, 175, 2, 1, 0, 176, 2, 1, 0};
    private static final Object[] F = {7, 0, 1, 2, 25, 2, 1, 0, 26, 2, 1, 0, 44, 0, 1, 2, 45, 2, 1, 0, 63, 0, 1, 2, 64, 0, 1, 2, 82, 2, 1, 0, 101, 2, 1, 0, 120, 0, 1, 2, 139, 0, 1, 2, 158, 2, 1, 0, 177, 2, 1, 0};
    private static final Object[] G = {8, 0, 1, 2, 27, 0, 1, 2, 46, 0, 1, 2, 65, 0, 1, 2, 83, 2, 1, 0, 102, 2, 1, 0, 121, 0, 1, 2, 140, 2, 1, 0, 159, 2, 1, 0, 178, 2, 1, 0};
    private static final Object[] H = {9, 2, 1, 0, 28, 0, 1, 2, 47, 2, 1, 0, 66, 0, 1, 2, 84, 0, 1, 2, 85, 0, 1, 2, 103, 0, 1, 2, 104, 2, 1, 0, 122, 2, 1, 0, 123, 2, 1, 0, 141, 2, 1, 0, 160, 0, 1, 2, 179, 2, 1, 0};
    private static final Object[] I = {10, 0, 1, 2, 29, 2, 1, 0, 48, 2, 1, 0, 67, 0, 1, 2, 86, 0, 1, 2, 105, 2, 1, 0, 124, 0, 1, 2, 142, 2, 1, 0, 161, 0, 1, 2, 180, 2, 1, 0};
    private static final Object[] L = {11, 0, 1, 2, 30, 2, 1, 0, 49, 0, 1, 2, 68, 0, 1, 2, 87, 2, 1, 0, 106, 0, 1, 2, 125, 2, 1, 0, 143, 2, 1, 0, 162, 0, 1, 2, 181, 2, 1, 0};
    private static final Object[] M = {12, 0, 1, 2, 31, 0, 1, 2, 50, 2, 1, 0, 69, 2, 1, 0, 88, 2, 1, 0, 107, 0, 1, 2, 126, 2, 1, 0, 144, 2, 1, 0, 145, 2, 1, 0, 163, 2, 1, 0, 164, 0, 1, 2, 182, 0, 1, 2, 183, 0, 1, 2};
    private static final Object[] N = {13, 0, 1, 2, 32, 2, 1, 0, 51, 0, 1, 2, 70, 2, 1, 0, 89, 0, 1, 2, 108, 0, 1, 2, 127, 0, 1, 2, 146, 2, 1, 0, 165, 2, 1, 0, 184, 2, 1, 0};
    private static final Object[] O = {14, 2, 1, 0, 15, 0, 1, 2, 33, 2, 1, 0, 34, 0, 1, 2, 52, 0, 1, 2, 53, 2, 1, 0, 71, 0, 1, 2, 90, 2, 1, 0, 109, 2, 1, 0, 128, 2, 1, 0, 147, 2, 1, 0, 166, 0, 1, 2, 185, 0, 1, 2};
    private static final Object[] Q1 = {16, 2, 1, 0, 35, 0, 1, 2, 54, 0, 1, 2, 72, 2, 1, 0, 91, 2, 1, 0, 110, 0, 1, 2, 129, 0, 1, 2, 148, 2, 1, 0, 167, 2, 1, 0, 186, 0, 1, 2};
    private static final Object[] Q2 = {17, 0, 1, 2, 36, 2, 1, 0, 55, 2, 1, 0, 73, 2, 1, 0, 74, 0, 1, 2, 92, 0, 1, 2, 111, 0, 1, 2, 130, 0, 1, 2, 149, 2, 1, 0, 168, 2, 1, 0};
    private static final Object[] Q3 = {18, 0, 1, 2, 37, 0, 1, 2, 56, 2, 1, 0, 75, 2, 1, 0, 93, 2, 1, 0, 94, 0, 1, 2, 112, 0, 1, 2, 131, 2, 1, 0, 150, 0, 1, 2, 169, 2, 1, 0};
    private static final Object[] Q4 = {19, 0, 1, 2, 38, 2, 1, 0, 57, 2, 1, 0, 76, 2, 1, 0, 95, 0, 1, 2, 113, 2, 1, 0, 114, 0, 1, 2, 132, 2, 1, 0, 133, 0, 1, 2, 151, 2, 1, 0, 152, 0, 1, 2, 170, 2, 1, 0, 171, 0, 1, 2};

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

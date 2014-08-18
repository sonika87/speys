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
    private static final int[] A = {20, 2, 1, 0, 21, 0, 1, 2, 39, 0, 1, 2, 58, 0, 1, 2, 77, 2, 1, 0, 96, 0, 1, 2, 115, 2, 1, 0, 134, 2, 1, 0, 153, 0, 1, 2, 172, 2, 1, 0};
    private static final int[] B = {3, 0, 1, 0, 22, 0, 1, 0, 40, 0, 1, 0, 41, 0, 0, 1, 59, 0, 1, 0, 60, 0, 0, 1, 78, 0, 1, 0, 79, 0, 0, 1, 97, 0, 1, 0, 116, 1, 0, 0, 135, 0, 0, 1, 154, 1, 0, 0, 173, 1, 0, 0};
    private static final int[] C = {4, 2, 1, 0, 23, 0, 1, 2, 42, 0, 1, 2, 61, 2, 1, 0, 80, 2, 1, 0, 98, 0, 1, 2, 99, 0, 1, 2, 117, 2, 1, 0, 118, 2, 1, 0, 136, 0, 1, 2, 137, 2, 1, 0, 155, 0, 1, 2, 174, 2, 1, 0};
    private static final int[] E = {5, 0, 1, 2, 6, 2, 1, 0, 24, 0, 1, 2, 43, 0, 1, 2, 62, 2, 1, 0, 81, 0, 1, 2, 100, 0, 1, 2, 119, 0, 1, 2, 138, 2, 1, 0, 156, 2, 1, 0, 157, 2, 1, 0, 175, 2, 1, 0, 176, 2, 1, 0};
    private static final int[] F = {7, 0, 1, 2, 25, 2, 1, 0, 26, 2, 1, 0, 44, 0, 1, 2, 45, 2, 1, 0, 63, 0, 1, 2, 64, 0, 1, 2, 82, 2, 1, 0, 101, 2, 1, 0, 120, 0, 1, 2, 139, 0, 1, 2, 158, 2, 1, 0, 177, 2, 1, 0};
    private static final int[] G = {8, 0, 1, 2, 27, 0, 1, 2, 46, 0, 1, 2, 65, 0, 1, 2, 83, 2, 1, 0, 102, 2, 1, 0, 121, 0, 1, 2, 140, 2, 1, 0, 159, 2, 1, 0, 178, 2, 1, 0};
    private static final int[] H = {9, 2, 1, 0, 28, 0, 1, 2, 47, 2, 1, 0, 66, 0, 1, 2, 84, 0, 1, 2, 85, 0, 1, 2, 103, 0, 1, 2, 104, 2, 1, 0, 122, 2, 1, 0, 123, 2, 1, 0, 141, 2, 1, 0, 160, 0, 1, 2, 179, 2, 1, 0};
    private static final int[] I = {10, 0, 1, 2, 29, 2, 1, 0, 48, 2, 1, 0, 67, 0, 1, 2, 86, 0, 1, 2, 105, 2, 1, 0, 124, 0, 1, 2, 142, 2, 1, 0, 161, 0, 1, 2, 180, 2, 1, 0};
    private static final int[] L = {11, 0, 1, 2, 30, 2, 1, 0, 49, 0, 1, 2, 68, 0, 1, 2, 87, 2, 1, 0, 106, 0, 1, 2, 125, 2, 1, 0, 143, 2, 1, 0, 162, 0, 1, 2, 181, 2, 1, 0};
    private static final int[] M = {12, 0, 1, 2, 31, 0, 1, 2, 50, 2, 1, 0, 69, 2, 1, 0, 88, 2, 1, 0, 107, 0, 1, 2, 126, 2, 1, 0, 144, 2, 1, 0, 145, 2, 1, 0, 163, 2, 1, 0, 164, 0, 1, 2, 182, 0, 1, 2, 183, 0, 1, 2};
    private static final int[] N = {13, 0, 1, 2, 32, 2, 1, 0, 51, 0, 1, 2, 70, 2, 1, 0, 89, 0, 1, 2, 108, 0, 1, 2, 127, 0, 1, 2, 146, 2, 1, 0, 165, 2, 1, 0, 184, 2, 1, 0};
    private static final int[] O = {14, 2, 1, 0, 15, 0, 1, 2, 33, 2, 1, 0, 34, 0, 1, 2, 52, 0, 1, 2, 53, 2, 1, 0, 71, 0, 1, 2, 90, 2, 1, 0, 109, 2, 1, 0, 128, 2, 1, 0, 147, 2, 1, 0, 166, 0, 1, 2, 185, 0, 1, 2};
    private static final int[] Q1 = {16, 2, 1, 0, 35, 0, 1, 2, 54, 0, 1, 2, 72, 2, 1, 0, 91, 2, 1, 0, 110, 0, 1, 2, 129, 0, 1, 2, 148, 2, 1, 0, 167, 2, 1, 0, 186, 0, 1, 2};
    private static final int[] Q2 = {17, 0, 1, 2, 36, 2, 1, 0, 55, 2, 1, 0, 73, 2, 1, 0, 74, 0, 1, 2, 92, 0, 1, 2, 111, 0, 1, 2, 130, 0, 1, 2, 149, 2, 1, 0, 168, 2, 1, 0};
    private static final int[] Q3 = {18, 0, 1, 2, 37, 0, 1, 2, 56, 2, 1, 0, 75, 2, 1, 0, 93, 2, 1, 0, 94, 0, 1, 2, 112, 0, 1, 2, 131, 2, 1, 0, 150, 0, 1, 2, 169, 2, 1, 0};
    private static final int[] Q4 = {19, 0, 1, 2, 38, 2, 1, 0, 57, 2, 1, 0, 76, 2, 1, 0, 95, 0, 1, 2, 113, 2, 1, 0, 114, 0, 1, 2, 132, 2, 1, 0, 133, 0, 1, 2, 151, 2, 1, 0, 152, 0, 1, 2, 170, 2, 1, 0, 171, 0, 1, 2};

    private static final int[][] estenMujerA = {/*1*/new int[]{0, 5},/*2*/ new int[]{6},/*3*/ new int[]{7, 8},/*4*/ new int[]{9},/*5*/ new int[]{10, 11},/*6*/ new int[]{12},/*7*/ new int[]{13},/*8*/ new int[]{14},/*9*/ new int[]{15},/*10*/ new int[]{16, 20}};
    private static final int[][] estenMujerB = {/*1*/new int[]{0, 2},/*2*/ new int[]{3},/*3*/ new int[]{4},/*4*/ new int[]{5},/*5*/ new int[]{6},/*6*/ new int[]{7},/*7*/ new int[]{8},/*8*/ new int[]{9},/*9*/ new int[]{10},/*10*/ new int[]{11, 13}};
    private static final int[][] estenMujerC = {/*1*/new int[]{0, 12},/*2*/ new int[]{13},/*3*/ new int[]{14},/*4*/ new int[]{15, 17},/*5*/ new int[]{18, 19},/*6*/ new int[]{20},/*7*/ new int[]{21, 22},/*8*/ new int[]{23},/*9*/ new int[]{24, 25},/*10*/ new int[]{26}};
    private static final int[][] estenMujerE = {/*1*/new int[]{0, 4},/*2*/ new int[]{5},/*3*/ new int[]{6},/*4*/ new int[]{7, 8},/*5*/ new int[]{9, 10},/*6*/ new int[]{11, 12},/*7*/ new int[]{13, 14},/*8*/ new int[]{15, 16},/*9*/ new int[]{17},/*10*/ new int[]{18, 26}};
    private static final int[][] estenMujerF = {/*1*/new int[]{0, 3},/*2*/ new int[]{4, 6},/*3*/ new int[]{7, 8},/*4*/ new int[]{9, 10},/*5*/ new int[]{11, 12},/*6*/ new int[]{13, 14},/*7*/ new int[]{15, 16},/*8*/ new int[]{17},/*9*/ new int[]{18, 21},/*10*/ new int[]{22, 26}};
    private static final int[][] estenMujerG = {/*1*/new int[]{0, 7},/*2*/ new int[]{8},/*3*/ new int[]{9},/*4*/ new int[]{10, 11},/*5*/ new int[]{12, 13},/*6*/ new int[]{14, 15},/*7*/ new int[]{16},/*8*/ new int[]{17},/*9*/ new int[]{18},/*10*/ new int[]{19, 20}};
    private static final int[][] estenMujerH = {/*1*/new int[]{0, 5},/*2*/ new int[]{6, 7},/*3*/ new int[]{8, 9},/*4*/ new int[]{10, 12},/*5*/ new int[]{13, 14},/*6*/ new int[]{15, 16},/*7*/ new int[]{17, 20},/*8*/ new int[]{21, 23},/*9*/ new int[]{24},/*10*/ new int[]{25, 26}};
    private static final int[][] estenMujerI = {/*1*/new int[]{0, 3},/*2*/ new int[]{4, 5},/*3*/ new int[]{6},/*4*/ new int[]{7},/*5*/ new int[]{8, 10},/*6*/ new int[]{11, 12},/*7*/ new int[]{13, 14},/*8*/ new int[]{15},/*9*/ new int[]{16},/*10*/ new int[]{17, 20}};
    private static final int[][] estenMujerL = {/*1*/new int[]{0, 4},/*2*/ new int[]{5},/*3*/ new int[]{6},/*4*/ new int[]{7},/*5*/ new int[]{8},/*6*/ new int[]{9, 10},/*7*/ new int[]{11},/*8*/ new int[]{12, 13},/*9*/ new int[]{14},/*10*/ new int[]{15, 20}};
    private static final int[][] estenMujerM = {/*1*/new int[]{0, 6},/*2*/ new int[]{7, 8},/*3*/ new int[]{9},/*4*/ new int[]{10},/*5*/ new int[]{11, 13},/*6*/ new int[]{14, 15},/*7*/ new int[]{16},/*8*/ new int[]{17, 18},/*9*/ new int[]{19, 20},/*10*/ new int[]{21, 26}};
    private static final int[][] estenMujerN = {/*1*/new int[]{0, 5},/*2*/ new int[]{6, 7},/*3*/ new int[]{8},/*4*/ new int[]{9},/*5*/ new int[]{10},/*6*/ new int[]{11, 12},/*7*/ new int[]{13},/*8*/ new int[]{14},/*9*/ new int[]{15},/*10*/ new int[]{16, 20}};
    private static final int[][] estenMujerO = {/*1*/new int[]{0, 2},/*2*/ new int[]{3},/*3*/ new int[]{4, 5},/*4*/ new int[]{6, 8},/*5*/ new int[]{9, 10},/*6*/ new int[]{11},/*7*/ new int[]{12, 13},/*8*/ new int[]{14},/*9*/ new int[]{15, 16},/*10*/ new int[]{17, 26}};
    private static final int[][] estenMujerQ1 = {/*1*/new int[]{0, 3},/*2*/ new int[]{4, 5},/*3*/ new int[]{6, 7},/*4*/ new int[]{8, 9},/*5*/ new int[]{10, 11},/*6*/ new int[]{12},/*7*/ new int[]{13, 14},/*8*/ new int[]{15},/*9*/ new int[]{16},/*10*/ new int[]{17, 20}};
    private static final int[][] estenMujerQ2 = {/*1*/new int[]{0, 5},/*2*/ new int[]{6},/*3*/ new int[]{7, 8},/*4*/ new int[]{9},/*5*/ new int[]{10},/*6*/ new int[]{11, 12},/*7*/ new int[]{13, 14},/*8*/ new int[]{15, 16},/*9*/ new int[]{17},/*10*/ new int[]{18, 20}};
    private static final int[][] estenMujerQ3 = {/*1*/new int[]{0, 4},/*2*/ new int[]{5, 6},/*3*/ new int[]{7, 9},/*4*/ new int[]{10, 11},/*5*/ new int[]{12},/*6*/ new int[]{13, 15},/*7*/ new int[]{16},/*8*/ new int[]{17},/*9*/ new int[]{18},/*10*/ new int[]{19, 20}};
    private static final int[][] estenMujerQ4 = {/*1*/new int[]{0, 2},/*2*/ new int[]{3},/*3*/ new int[]{4},/*4*/ new int[]{5, 6},/*5*/ new int[]{7, 8},/*6*/ new int[]{9, 10},/*7*/ new int[]{11, 12},/*8*/ new int[]{13, 15},/*9*/ new int[]{16, 17},/*10*/ new int[]{18, 26}};
    
    private static final int[][] estenHombreA = {/*1*/new int[]{0,3},/*2*/ new int[]{4,5},/*3*/ new int[]{6,7},/*4*/ new int[]{8},/*5*/ new int[]{9,10},/*6*/ new int[]{11,12},/*7*/ new int[]{13},/*8*/ new int[]{14,15},/*9*/ new int[]{16,17},/*10*/ new int[]{18,20}};
    private static final int[][] estenHombreB = {/*1*/new int[]{0,1},/*2*/ new int[]{2},/*3*/ new int[]{3,4},/*4*/ new int[]{5},/*5*/ new int[]{6},/*6*/ new int[]{7},/*7*/ new int[]{8},/*8*/ new int[]{100},/*9*/ new int[]{9},/*10*/ new int[]{10,13}};
    private static final int[][] estenHombreC = {/*1*/new int[]{0,9},/*2*/ new int[]{10,12},/*3*/ new int[]{13,14},/*4*/ new int[]{15,17},/*5*/ new int[]{18,19},/*6*/ new int[]{20,21},/*7*/ new int[]{22,23},/*8*/ new int[]{24},/*9*/ new int[]{25},/*10*/ new int[]{26}};
    private static final int[][] estenHombreE = {/*1*/new int[]{0,5},/*2*/ new int[]{6},/*3*/ new int[]{7},/*4*/ new int[]{8,9},/*5*/ new int[]{10,11},/*6*/ new int[]{12,13},/*7*/ new int[]{14,15},/*8*/ new int[]{16,18},/*9*/ new int[]{19,20},/*10*/ new int[]{21,26}};
    private static final int[][] estenHombreF = {/*1*/new int[]{0,4},/*2*/ new int[]{5,6},/*3*/ new int[]{7,8},/*4*/ new int[]{9,10},/*5*/ new int[]{11,13},/*6*/ new int[]{14,15},/*7*/ new int[]{16,17},/*8*/ new int[]{18,20},/*9*/ new int[]{21,22},/*10*/ new int[]{23,26}};
    private static final int[][] estenHombreG = {/*1*/new int[]{0,8},/*2*/ new int[]{9},/*3*/ new int[]{10,11},/*4*/ new int[]{12},/*5*/ new int[]{13,14},/*6*/ new int[]{15,16},/*7*/ new int[]{17},/*8*/ new int[]{18},/*9*/ new int[]{19},/*10*/ new int[]{20}};
    private static final int[][] estenHombreH = {/*1*/new int[]{0,6},/*2*/ new int[]{7},/*3*/ new int[]{8,10},/*4*/ new int[]{11,13},/*5*/ new int[]{14,17},/*6*/ new int[]{18,19},/*7*/ new int[]{20,22},/*8*/ new int[]{23,24},/*9*/ new int[]{25},/*10*/ new int[]{26}};
    private static final int[][] estenHombreI = {/*1*/new int[]{0,1},/*2*/ new int[]{2,3},/*3*/ new int[]{4},/*4*/ new int[]{5},/*5*/ new int[]{6,7},/*6*/ new int[]{8,9},/*7*/ new int[]{10},/*8*/ new int[]{11,12},/*9*/ new int[]{13},/*10*/ new int[]{14,20}};
    private static final int[][] estenHombreL = {/*1*/new int[]{0,2},/*2*/ new int[]{3},/*3*/ new int[]{4,5},/*4*/ new int[]{6,7},/*5*/ new int[]{8,9},/*6*/ new int[]{10},/*7*/ new int[]{11,12},/*8*/ new int[]{13,14},/*9*/ new int[]{15},/*10*/ new int[]{16,20}};
    private static final int[][] estenHombreM = {/*1*/new int[]{0,6},/*2*/ new int[]{7},/*3*/ new int[]{8,9},/*4*/ new int[]{10},/*5*/ new int[]{11,12},/*6*/ new int[]{13,14},/*7*/ new int[]{15,16},/*8*/ new int[]{17},/*9*/ new int[]{18},/*10*/ new int[]{19,26}};
    private static final int[][] estenHombreN = {/*1*/new int[]{0,5},/*2*/ new int[]{6},/*3*/ new int[]{7,8},/*4*/ new int[]{9,10},/*5*/ new int[]{11},/*6*/ new int[]{12},/*7*/ new int[]{13,14},/*8*/ new int[]{15},/*9*/ new int[]{16,17},/*10*/ new int[]{18,20}};
    private static final int[][] estenHombreO = {/*1*/new int[]{0,3},/*2*/ new int[]{4,5},/*3*/ new int[]{6},/*4*/ new int[]{7},/*5*/ new int[]{8,10},/*6*/ new int[]{11},/*7*/ new int[]{12,14},/*8*/ new int[]{15,16},/*9*/ new int[]{17,19},/*10*/ new int[]{20,16}};
    private static final int[][] estenHombreQ1 = {/*1*/new int[]{0,4},/*2*/ new int[]{5,6},/*3*/ new int[]{7},/*4*/ new int[]{8,9},/*5*/ new int[]{10},/*6*/ new int[]{11,12},/*7*/ new int[]{13,14},/*8*/ new int[]{15},/*9*/ new int[]{16},/*10*/ new int[]{17,20}};
    private static final int[][] estenHombreQ2 = {/*1*/new int[]{0,3},/*2*/ new int[]{4,5},/*3*/ new int[]{6,7},/*4*/ new int[]{8},/*5*/ new int[]{9,10},/*6*/ new int[]{11,12},/*7*/ new int[]{13},/*8*/ new int[]{14,15},/*9*/ new int[]{16,17},/*10*/ new int[]{18,20}};
    private static final int[][] estenHombreQ3 = {/*1*/new int[]{0,5},/*2*/ new int[]{6,8},/*3*/ new int[]{9,10},/*4*/ new int[]{11,12},/*5*/ new int[]{13},/*6*/ new int[]{14,15},/*7*/ new int[]{16},/*8*/ new int[]{17},/*9*/ new int[]{18},/*10*/ new int[]{19,20}};
    private static final int[][] estenHombreQ4 = {/*1*/new int[]{0,1},/*2*/ new int[]{2},/*3*/ new int[]{3},/*4*/ new int[]{4,5},/*5*/ new int[]{6,7},/*6*/ new int[]{8,9},/*7*/ new int[]{10,11},/*8*/ new int[]{12,13},/*9*/ new int[]{14,16},/*10*/ new int[]{17,26}};

    public static void main(String[] args) {
        imprimir(getEstenHombreA(),"A");
        imprimir(getEstenHombreB(),"B");
        imprimir(getEstenHombreC(),"C");
        imprimir(getEstenHombreE(),"E");
        imprimir(getEstenHombreF(),"F");
        imprimir(getEstenHombreG(),"G");
        imprimir(getEstenHombreH(),"H");
        imprimir(getEstenHombreI(),"I");
        imprimir(getEstenHombreL(),"L");
        imprimir(getEstenHombreM(),"M");
        imprimir(getEstenHombreN(),"N");
        imprimir(getEstenHombreO(),"O");
        imprimir(getEstenHombreQ1(),"Q1");
        imprimir(getEstenHombreQ2(),"Q2");
        imprimir(getEstenHombreQ3(),"Q3");
        imprimir(getEstenHombreQ4(),"Q4");
    }

    static void imprimir(int[][] array,String dato) {
        //System.out.println(dato);
        for (int i = 0; i < array.length; i++) {
            if (array[i].length == 1) {
                System.out.print(array[i][0] + " ");
            } else if (array[i].length == 2) {
                for (int j = array[i][0]; j <= array[i][1]; j++) {
                    System.out.print( j + " ");
                }
            } else {
                System.out.println("algo mal");
            }
        }
        System.out.println("");
    }

    /**
     * @return the A
     */
    public static int[] getA() {
        return A;
    }

    /**
     * @return the B
     */
    public static int[] getB() {
        return B;
    }

    /**
     * @return the C
     */
    public static int[] getC() {
        return C;
    }

    /**
     * @return the E
     */
    public static int[] getE() {
        return E;
    }

    /**
     * @return the F
     */
    public static int[] getF() {
        return F;
    }

    /**
     * @return the G
     */
    public static int[] getG() {
        return G;
    }

    /**
     * @return the H
     */
    public static int[] getH() {
        return H;
    }

    /**
     * @return the I
     */
    public static int[] getI() {
        return I;
    }

    /**
     * @return the L
     */
    public static int[] getL() {
        return L;
    }

    /**
     * @return the M
     */
    public static int[] getM() {
        return M;
    }

    /**
     * @return the N
     */
    public static int[] getN() {
        return N;
    }

    /**
     * @return the O
     */
    public static int[] getO() {
        return O;
    }

    /**
     * @return the Q1
     */
    public static int[] getQ1() {
        return Q1;
    }

    /**
     * @return the Q2
     */
    public static int[] getQ2() {
        return Q2;
    }

    /**
     * @return the Q3
     */
    public static int[] getQ3() {
        return Q3;
    }

    /**
     * @return the Q4
     */
    public static int[] getQ4() {
        return Q4;
    }
    
    /**
     * @return the estenMujerA
     */
    public static int[][] getEstenMujerA() {
        return estenMujerA;
    }

    /**
     * @return the estenMujerB
     */
    public static int[][] getEstenMujerB() {
        return estenMujerB;
    }

    /**
     * @return the estenMujerC
     */
    public static int[][] getEstenMujerC() {
        return estenMujerC;
    }

    /**
     * @return the estenMujerE
     */
    public static int[][] getEstenMujerE() {
        return estenMujerE;
    }

    /**
     * @return the estenMujerF
     */
    public static int[][] getEstenMujerF() {
        return estenMujerF;
    }

    /**
     * @return the estenMujerG
     */
    public static int[][] getEstenMujerG() {
        return estenMujerG;
    }

    /**
     * @return the estenMujerH
     */
    public static int[][] getEstenMujerH() {
        return estenMujerH;
    }

    /**
     * @return the estenMujerI
     */
    public static int[][] getEstenMujerI() {
        return estenMujerI;
    }

    /**
     * @return the estenMujerL
     */
    public static int[][] getEstenMujerL() {
        return estenMujerL;
    }

    /**
     * @return the estenMujerM
     */
    public static int[][] getEstenMujerM() {
        return estenMujerM;
    }

    /**
     * @return the estenMujerN
     */
    public static int[][] getEstenMujerN() {
        return estenMujerN;
    }

    /**
     * @return the estenMujerO
     */
    public static int[][] getEstenMujerO() {
        return estenMujerO;
    }

    /**
     * @return the estenMujerQ1
     */
    public static int[][] getEstenMujerQ1() {
        return estenMujerQ1;
    }

    /**
     * @return the estenMujerQ2
     */
    public static int[][] getEstenMujerQ2() {
        return estenMujerQ2;
    }

    /**
     * @return the estenMujerQ3
     */
    public static int[][] getEstenMujerQ3() {
        return estenMujerQ3;
    }

    /**
     * @return the estenMujerQ4
     */
    public static int[][] getEstenMujerQ4() {
        return estenMujerQ4;
    }

    /**
     * @return the estenHombreA
     */
    public static int[][] getEstenHombreA() {
        return estenHombreA;
    }

    /**
     * @return the estenHombreB
     */
    public static int[][] getEstenHombreB() {
        return estenHombreB;
    }

    /**
     * @return the estenHombreC
     */
    public static int[][] getEstenHombreC() {
        return estenHombreC;
    }

    /**
     * @return the estenHombreE
     */
    public static int[][] getEstenHombreE() {
        return estenHombreE;
    }

    /**
     * @return the estenHombreF
     */
    public static int[][] getEstenHombreF() {
        return estenHombreF;
    }

    /**
     * @return the estenHombreG
     */
    public static int[][] getEstenHombreG() {
        return estenHombreG;
    }

    /**
     * @return the estenHombreH
     */
    public static int[][] getEstenHombreH() {
        return estenHombreH;
    }

    /**
     * @return the estenHombreI
     */
    public static int[][] getEstenHombreI() {
        return estenHombreI;
    }

    /**
     * @return the estenHombreL
     */
    public static int[][] getEstenHombreL() {
        return estenHombreL;
    }

    /**
     * @return the estenHombreM
     */
    public static int[][] getEstenHombreM() {
        return estenHombreM;
    }

    /**
     * @return the estenHombreN
     */
    public static int[][] getEstenHombreN() {
        return estenHombreN;
    }

    /**
     * @return the estenHombreO
     */
    public static int[][] getEstenHombreO() {
        return estenHombreO;
    }

    /**
     * @return the estenHombreQ1
     */
    public static int[][] getEstenHombreQ1() {
        return estenHombreQ1;
    }

    /**
     * @return the estenHombreQ2
     */
    public static int[][] getEstenHombreQ2() {
        return estenHombreQ2;
    }

    /**
     * @return the estenHombreQ3
     */
    public static int[][] getEstenHombreQ3() {
        return estenHombreQ3;
    }

    /**
     * @return the estenHombreQ4
     */
    public static int[][] getEstenHombreQ4() {
        return estenHombreQ4;
    }

}

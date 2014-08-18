/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.speys.Test.Servlet;

import com.speys.Test.Bean.PeguntaExamenBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julio
 */
@WebServlet(name = "EvaluacionCatellServlet", urlPatterns = {"/EvaluacionCatellServlet"})
public class EvaluacionCatellServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        List<PeguntaExamenBean> preguntas = (List<PeguntaExamenBean>) request.getSession().getAttribute("preguntas");
        int posicion = 1; //Integer.parseInt(request.getParameter("posicion"));
        preguntas.get((posicion - 1)).setRespuesta(request.getParameter("respuesta"));

        int A = getValorBruto(preguntas, PeguntaExamenBean.getA());
        int B = getValorBruto(preguntas, PeguntaExamenBean.getB());
        int C = getValorBruto(preguntas, PeguntaExamenBean.getC());
        int E = getValorBruto(preguntas, PeguntaExamenBean.getE());
        int F = getValorBruto(preguntas, PeguntaExamenBean.getF());
        int G = getValorBruto(preguntas, PeguntaExamenBean.getG());
        int H = getValorBruto(preguntas, PeguntaExamenBean.getH());
        int I = getValorBruto(preguntas, PeguntaExamenBean.getI());
        int L = getValorBruto(preguntas, PeguntaExamenBean.getL());
        int M = getValorBruto(preguntas, PeguntaExamenBean.getM());
        int N = getValorBruto(preguntas, PeguntaExamenBean.getN());
        int O = getValorBruto(preguntas, PeguntaExamenBean.getO());
        int Q1 = getValorBruto(preguntas, PeguntaExamenBean.getQ1());
        int Q2 = getValorBruto(preguntas, PeguntaExamenBean.getQ2());
        int Q3 = getValorBruto(preguntas, PeguntaExamenBean.getQ3());
        int Q4 = getValorBruto(preguntas, PeguntaExamenBean.getQ4());

        int estenA = getValorEsten(A, PeguntaExamenBean.getEstenHombreA());
        int estenB = getValorEsten(B, PeguntaExamenBean.getEstenHombreB());
        int estenC = getValorEsten(C, PeguntaExamenBean.getEstenHombreC());
        int estenE = getValorEsten(E, PeguntaExamenBean.getEstenHombreE());
        int estenF = getValorEsten(F, PeguntaExamenBean.getEstenHombreF());
        int estenG = getValorEsten(G, PeguntaExamenBean.getEstenHombreG());
        int estenH = getValorEsten(H, PeguntaExamenBean.getEstenHombreG());
        int estenI = getValorEsten(I, PeguntaExamenBean.getEstenHombreI());
        int estenL = getValorEsten(L, PeguntaExamenBean.getEstenHombreL());
        int estenM = getValorEsten(M, PeguntaExamenBean.getEstenHombreM());
        int estenN = getValorEsten(N, PeguntaExamenBean.getEstenHombreN());
        int estenO = getValorEsten(O, PeguntaExamenBean.getEstenHombreO());
        int estenQ1 = getValorEsten(Q1, PeguntaExamenBean.getEstenHombreQ1());
        int estenQ2 = getValorEsten(Q2, PeguntaExamenBean.getEstenHombreQ2());
        int estenQ3 = getValorEsten(Q3, PeguntaExamenBean.getEstenHombreQ3());
        int estenQ4 = getValorEsten(Q4, PeguntaExamenBean.getEstenHombreQ4());
       
        request.setAttribute("A", estenA);
        request.setAttribute("B", estenB);
        request.setAttribute("C", estenC);
        request.setAttribute("E", estenE);
        request.setAttribute("F", estenF);
        request.setAttribute("G", estenG);
        request.setAttribute("H", estenH);
        request.setAttribute("I", estenI);
        request.setAttribute("L", estenL);
        request.setAttribute("M", estenM);
        request.setAttribute("N", estenN);
        request.setAttribute("O", estenO);
        request.setAttribute("Q1", estenQ1);
        request.setAttribute("Q2", estenQ2);
        request.setAttribute("Q3", estenQ3);
        request.setAttribute("Q4", estenQ4);
        
         RequestDispatcher rd = null;
         rd = request.getRequestDispatcher("jsp/ResultadosExamenCatell.jsp");
         rd.forward(request, response);
        
    }

    private int getValorBruto(List<PeguntaExamenBean> preguntas, int[] valores) {
        int valor = 0;
        for (int i = 0; i < valores.length; i = i + 4) {
            String respuesta = preguntas.get(valores[i] - 1).getRespuesta().trim();
            switch (respuesta) {
                case "A":
                    valor += valores[(i + 1)];
                    break;
                case "B":
                    valor += valores[(i + 2)];
                    break;
                case "C":
                    valor += valores[(i + 3)];
                    break;
            }
        }
        return valor;
    }

    private int getValorEsten(int valorBruto, int[][] rangoEstenArray) {
        for (int i = 0; i < rangoEstenArray.length; i++) {
            if (rangoEstenArray[i].length == 1) {
                if (rangoEstenArray[i][0] == valorBruto) {
                    System.out.println("valor b: " + valorBruto + " valE: " + (i+1));
                    return (i + 1);
                }
            } else if (rangoEstenArray[i].length == 2) {
                for (int j = rangoEstenArray[i][0]; j <= rangoEstenArray[i][1]; j++) {
                    if (valorBruto >= rangoEstenArray[i][0] && valorBruto <= rangoEstenArray[i][1]) {
                        System.out.println("valor b: " + valorBruto + " valE: " + (i+1));
                        return (i + 1);
                    }
                }
            }
        }
        return 404;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

package com.speys.utilerias;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.util.HashMap;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;

/**
 *
 * @author Mauricio
 */
/**
 * Servlet implementation class Patient
 */
@WebServlet("/ReportGenerator")
public class ReportGenerator extends HttpServlet implements Servlet {

    private Connection con;
    private ConexionBD conMySql;
    JasperReport jasperReport;
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportGenerator() {
        super();
        conMySql = ConexionBD.getConexionInstance();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String salida;
 
        try {
            String jrxmlFileName = "diagnostico-res.jasper";
            File archivoReporte = new File(request.getRealPath(jrxmlFileName));
            HashMap hm = null;
            hm = new HashMap();
 
            ServletOutputStream servletOutputStream = response.getOutputStream();
 
            byte[] bytes = null;
 
            try {
                bytes = JasperRunManager.runReportToPdf(archivoReporte.getPath(), hm, new JREmptyDataSource());
 
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                servletOutputStream.write(bytes, 0, bytes.length);
                servletOutputStream.flush();
                servletOutputStream.close();
            } catch (JRException e) {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                e.printStackTrace(printWriter);
                response.setContentType("text/plain");
                response.getOutputStream().print(stringWriter.toString());
            }
        } catch (Exception e) {
            salida = "Error generando Reporte Jasper, el error del Sistema es " + e;
            System.out.println(salida);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}

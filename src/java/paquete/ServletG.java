/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paquete;

import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Diego Herrera Tirado
 * Servlet para guardar los diagramas de los clientes, funciona con jquery y ajax:
 * crea un archivo con base al nombre recibido y coloca el xml del diagrama dentro de este
 * obviamente dentro de la carpeta del usuario
 */
public class ServletG extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String ruta = request.getRealPath("/");
        String nameFile = request.getParameter("name");
        String xml = request.getParameter("diagrama");
        HttpSession session = request.getSession();
        String user = (String)session.getAttribute("username");
 
           String path;
           path=ruta+user+"\\diagramas.xml";
        File archivo;
        FileWriter escribir;
        PrintWriter linea;
        File directorio = new File(ruta+"\\"+user);
        
        
        
        directorio.mkdirs();
        archivo = new File(ruta+"\\"+user+"\\"+nameFile+".xml");
        if (archivo.exists()) {
            archivo.delete();
            archivo = new File(ruta+"\\"+user+"\\"+nameFile+".xml");
            archivo.createNewFile();
            escribir = new FileWriter(archivo, true);
            linea = new PrintWriter(escribir);
            linea.println(xml);
            linea.close();
        }else{
            archivo.createNewFile();
            escribir = new FileWriter(archivo, true);
            linea = new PrintWriter(escribir);
            linea.println(xml);
            linea.close();
            
            
        }
        
            PrintWriter out = response.getWriter();
                        out.println("El archivo ha llegado correctamente a nombre de: "+ user +"con el nombre de: "+nameFile);
          
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }

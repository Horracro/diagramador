/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paquete;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileReader;
/**
 *
 * @author Diego Herrera Tirado
 * 
 * //Servlet para Ajax y Jquery de la funcion importar 
 * Recibo una cadena y busco su existencia dentro de los archivos del usuario
 * si es asi la devuelvo para efectuar la importación
 * si no devuelvo un nel perro.
 */
public class ServletI extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String ruta = request.getRealPath("/");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        
        //obtenemos el nombre desde la sesion para que 
        String user = (String)session.getAttribute("username");
        
        //recibimos el nombre del archivo que vamos a importar
        String name= request.getParameter("dato");
        
        
        String path = ruta+"\\"+user+"\\"+name+".xml";
        File directorio = new File(path);
        
         if(directorio.exists()){
             String cadena;
             FileReader f = new FileReader(directorio);
           
             try (BufferedReader b = new BufferedReader(f)) {
                while((cadena = b.readLine())!=null) {
                    out.println(cadena);
                }   }
    

         out.println("<!DOCTYPE html>");
         
         }
         else{
             out.println("No existe esa webada");
         }

        
        
        
        
        
            /* TODO output your page here. You may use following sample code. */
            
       
        
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

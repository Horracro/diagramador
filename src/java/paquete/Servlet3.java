package paquete;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;


public class Servlet3 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        String ruta = request.getRealPath("/");
        String username = request.getParameter("username");
        HttpSession session = request.getSession();
        String user = (String)session.getAttribute("user");
        PrintWriter out = response.getWriter();
        try {
            SAXBuilder builder = new SAXBuilder();
            File archivoXML = new File(ruta + "\\Imagenes_1.xml");
            Document documento = builder.build(archivoXML);
            Element raiz = documento.getRootElement();
            List lista = raiz.getChildren("imagen");
            String imagenxml = "";
            String usuarioxml="";
            List<String> imagenes = new ArrayList<String>();
            
            for (int i = 0; i < lista.size(); i++) {
                Element elemento = (Element) lista.get(i);
                usuarioxml = elemento.getAttributeValue("usuario");
                
                imagenxml = elemento.getAttributeValue("ruta");
                
               if (user.compareTo(usuarioxml) == 0){
                    imagenes.add(imagenxml);
               }
               

            }
       int i = 0 ;
        for ( i = 0; i < lista.size(); i++)
            out.print(imagenes.get(i));     
        
        }
        
        catch (JDOMException e) {
            e.printStackTrace();
        }}}
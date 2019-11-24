package paquete;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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

public class Servlet1 extends HttpServlet {
        int banderaUser = 0;
        int banderaPass = 0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        String ruta = request.getRealPath("/");
        String username = request.getParameter("username");
        //HttpSession session = request.getSession();
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        try {
        SAXBuilder builder = new SAXBuilder();
        File archivoXML = new File(ruta+"\\archivoXML.xml");
        Document documento=builder.build(archivoXML);
        Element raiz = documento.getRootElement();
        List lista=raiz.getChildren("usuario");
        String [] usernamexml = new String [5];
        String [] passwordxml = new String [5];
            for(int cont=0;cont<lista.size();cont++)
            {
             Element elemento = (Element)lista.get(cont);
             //out.println(elemento);
             usernamexml[cont]=elemento.getAttributeValue("username");
             passwordxml[cont]=elemento.getAttributeValue("password");
            }
            for(int i= 0; i <4; i++){
                if(username.equals(usernamexml[i]) && password.equals(passwordxml[i])){
                    banderaUser=1;
                    banderaPass=1;
                    break;
                }
                
                else{
                    banderaUser=0;
                    banderaPass=0;
                    
                }
                    
            }
           
            if (banderaUser == 1 && banderaPass == 1) {
                HttpSession session = request.getSession(true);
                session.setAttribute("username",username);
                out.println("/Diagramador/inicioDiagramador.jsp");
                //out.println("/Diagramador/prueba.html");
            } else{
                out.println("/Diagramador/inicioFallido.html");
            }

        } catch (JDOMException e) {
            e.printStackTrace();
        }

    }
}

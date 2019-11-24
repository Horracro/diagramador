<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
    <meta charset="utf-8">
     <link rel="icon" type="image/ico" href="./img/zorro.ico" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
    <title>Diagramador</title>
    
    <style>
            body{
				background: #56CCF2;  /* fallback for old browsers */
				background: -webkit-linear-gradient(to right, #2F80ED, #56CCF2);  /* Chrome 10-25, Safari 5.1-6 */
				background: linear-gradient(to right, #2F80ED, #56CCF2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }
        </style>
        
</head>
<body>
            <nav>
                <div class="nav-wrapper light-blue darken-4 white-text">
                  <!--<a href="/Diagramador/index.html" class="large material-icons">home</a> -->
                  <font size='3' color="white">&nbsp;&nbsp;&nbsp;&nbsp;Bienvenido:
                    <%
                        if (session != null) {
                            if (session.getAttribute("username") != null) {
                                String nombre = (String) session.getAttribute("username");
                                out.print(nombre);
                            } else {
                                response.sendRedirect("/Diagramador/index.html");
                            }
                        }
                    %>
                </font>
                <%
                    for (int i = 0; i < 100; i++) {
                        out.print("&nbsp;");
                    }
                %>
                <font size="5" face='times new roman'>Diagramador PRO</font>
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a class="material-icons" title="Pulse para regresar al inicio" href="/Diagramador/inicioDiagramador.jsp">home</a></li>
                    <li><form action="Servlet4" method="get">
                            <button title="Pulse para cerrar sesión" class="btn-large waves-effect waves-light light-blue darken-4" type="submit" name="action">Cerrar Sesión
                                <i class="material-icons left">send</i>
                            </button></form></li>
                  </ul>
                </div>
              </nav>
    <div class="container">
        <div class="row mt-5"></div>
            <div class="col-md-4 offset-md-1"></div>
                <div id="create-article-works"></div>
                </div>

<script type="text/javascript" src="main2.js"></script></body>

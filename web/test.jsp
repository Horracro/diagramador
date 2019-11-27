
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>	


    <head>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link type="text/css" rel="stylesheet" href="css/UDStyle.css" media="screen" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
        <script src="http://code.jquery.com/jquery-latest.js"></script>	
        <script type="text/javascript" src="UDCore.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"/>
        <script type="text/javascript" src="UDModules.js"></script>

        <style type="text/css">
            body{
                background: #56CCF2;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #2F80ED, #56CCF2);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #2F80ED, #56CCF2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }

            .botoncin{
                text-decoration: none;
                padding: 10px;
                font-weight: 600;
                font-size: 15px;
                color: #ffffff;
                background-color: #1883ba;
               
               
            }
            .botoncin:hover{
                color: #1883ba;
                background-color: #ffffff;
            }
            .botonson{
                text-decoration: none;
                padding: 10px;
                font-weight: 600;
                font-size: 20px;
                color: #ffffff;
                background-color: #CD2222;
               
               
            }
            .botonson:hover{
                color: #010101;
                background-color: #FEF570;
            }



        </style>

    </head>



 

    <body class="p-3 mb-2 bg-info text-white">
    <nav >
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



    <div id="nodoPadre">


        <script type="text/javascript" >

            var div = document.getElementById("nodoPadre");
            var width = 1280;
            var height = 720;
            div.setAttribute('class', 'ud_diagram_div');
            div.style.width = width + 'px';
            div.style.height = height + 'px';
            var canvas = document.createElement('canvas');

            canvas.setAttribute('class', 'ud_diagram_canvas');
            canvas.width = width;
            canvas.height = height;
            var mainContext = canvas.getContext('2d');
            div.appendChild(canvas);
            canvas = document.createElement('canvas');
            canvas.setAttribute('class', 'ud_diagram_canvas');
            ;
            canvas.width = this.width;
            canvas.height = this.height;
            canvas.onmousedown = function () {
                return false;
            }
            var motionContext = canvas.getContext('2d');




            var diagramaComponentes = new UMLComponentDiagram({backgroundNodes: "#4ACDC8"});
            diagramaComponentes.initialize(0, div, mainContext, motionContext, width, height);
            var botones = document.createElement("ul");
            diagramaComponentes.setUpdateHeightCanvas(true);
            botones.setAttribute("id", "botones");
            var b = document.createElement("li");
            var b1 = document.createElement("li");
            var b2 = document.createElement("li");
            var b3 = document.createElement("li");
            var b4 = document.createElement("li");
            var b5 = document.createElement("li");
            var b6 = document.createElement("li");
            var b7 = document.createElement("li");
            var b8 = document.createElement("li");
            var b9 = document.createElement("li");
            var b10 = document.createElement("li");
            var b11 = document.createElement("li");
            var b12 = document.createElement("li");
            var b13 = document.createElement("li");
            var b14 = document.createElement("li");
            var b15 = document.createElement("li");

            botones.appendChild(b);
            botones.appendChild(b1);
            botones.appendChild(b2);
            botones.appendChild(b3);
            botones.appendChild(b4);
            botones.appendChild(b5);
            botones.appendChild(b6);
            botones.appendChild(b7);
            botones.appendChild(b8);
            botones.appendChild(b9);
            botones.appendChild(b10);
            botones.appendChild(b11);
            botones.appendChild(b12);
            botones.appendChild(b13);
            botones.appendChild(b14);
            botones.appendChild(b15);



            var w = 1;
            var v = 10;

            diagramaComponentes.draw();
            diagramaComponentes.interaction(true);

            var button = document.createElement('button');
            button.type = 'button';
            button.innerText = 'Nuevo Componente';
            b.appendChild(button);
            button.setAttribute("class", "botoncin");


            var button1 = document.createElement('button');
            button1.type = 'button';
            button1.innerText = 'Nueva interfaz';
            b1.appendChild(button1);
            button1.setAttribute("class", "botoncin");

            var button2 = document.createElement('button');
            button2.type = 'button';
            button2.innerText = 'Nueva interfaz extendida';
            b2.appendChild(button2);
            button2.setAttribute("class", "botoncin");

            var button3 = document.createElement('button');
            button3.type = 'button';
            button3.innerText = 'Generalizacion';
            b3.appendChild(button3);
            button3.setAttribute("class", "botoncin");

            var buttonL = document.createElement('button');
            buttonL.type = 'button';
            buttonL.innerText = 'Conexión con interfaz';
            b4.appendChild(buttonL);
            buttonL.setAttribute("class", "botoncin");

            var buttonRL = document.createElement('button');
            buttonRL.type = 'button';
            buttonRL.innerText = 'Interfaz relacional';
            b5.appendChild(buttonRL);
            buttonRL.setAttribute("class", "botoncin");


            var buttonP = document.createElement('button');
            buttonP.type = 'button';
            buttonP.innerText = 'Paquete';
            b6.appendChild(buttonP);
            buttonP.setAttribute("class", "botoncin");

            var buttonPC = document.createElement('button');
            buttonPC.type = 'button';
            buttonPC.innerText = 'Contenedor paquete';
            b7.appendChild(buttonPC);
            buttonPC.setAttribute("class", "botoncin");

            var buttonR = document.createElement('button');
            buttonR.type = 'button';
            buttonR.innerText = 'Relacion';
            b8.appendChild(buttonR);
            buttonR.setAttribute("class", "botoncin");

            var buttonG = document.createElement('button');
            buttonG.type = 'button';
            buttonG.innerText = 'Set generoso';
            b9.appendChild(buttonG);
            buttonG.setAttribute("class", "botoncin");

            var button4 = document.createElement('button');
            button4.type = 'button';
            button4.innerText = 'Puerto';
            b10.appendChild(button4);
            button4.setAttribute("class", "botoncin");



            buttonRL.onclick = function () {
                function f(d, x, y, x1, x2) {
                    d.addRelationFromPoints(new UMLInterfaceRealization(), x, y, x1, x2);
                }

                interaccionDosClick(f);
            }



            buttonP.onclick = function () {
                function f(d, x, y) {
                    d.addElement(new UMLPackage({x: x, y: y}));
                }

                interaccionUnClick(f);
            }


            buttonPC.onclick = function () {
                function f(d, x, y) {
                    d.addElement(new UMLPackageContainer({x: x, y: y}));
                }

                interaccionUnClick(f);
            }

            buttonL.onclick = function () {
                function f(d, x, y, x1, x2) {
                    d.addRelationFromPoints(new UMLInterfaceUsage(), x, y, x1, x2);
                }

                interaccionDosClick(f);
            }


            buttonG.onclick = function () {
                function f(d, x, y, x1, x2) {
                    d.addRelationFromPoints(new UMLGeneralizationSet(), x, y, x1, x2);
                }

                interaccionDosClick(f);
            }


            buttonR.onclick = function () {
                function f(d, x, y, x1, x2) {
                    d.addRelationFromPoints(new UMLRealization(), x, y, x1, x2);
                }

                interaccionDosClick(f);
            }




            button.onclick = function () {
                function f(d, x, y) {
                    d.addElement(new UMLComComponent({x: x, y: y}));
                }

                interaccionUnClick(f);
            }

            button1.onclick = function () {
                function f(d, x, y) {
                    d.addElement(new UMLInterface({x: x, y: y}));
                }

                interaccionUnClick(f);
            }
            button2.onclick = function () {
                function f(d, x, y) {



                    diagramaComponentes.addElement(new UMLInterfaceExtended({x: x, y: y}));
                    diagramaComponentes.draw();
                }

                interaccionUnClick(f);

            }
            button3.onclick = function () {
                function f(d, x, y, x1, x2) {
                    d.addRelationFromPoints(new UMLGeneralizationSet(), x, y, x1, x2);
                }

                interaccionDosClick(f);
            }


            button4.onclick = function () {
                function f(d, x, y) {
                    d.addElement(new UMLPort({x: x, y: y}));
                }

                interaccionUnClick(f);
            }



            var interaccionUnClick = function (funcion) {
                diagramaComponentes.interaction(false);
                var funcionCaptura = function (evt) {


                    var mousex = evt.pageX - div.offsetLeft;
                    var mousey = evt.pageY - div.offsetTop;
                    console.log("x= " + mousex + " y= " + mousey);
                    funcion(diagramaComponentes, mousex, mousey);
                    div.onclick = false;
                    diagramaComponentes.draw();
                    diagramaComponentes.interaction(true);

                }
                div.onclick = funcionCaptura;
            }


            var button5 = document.createElement('button');
            button5.type = 'button';
            button5.innerText = 'Borrar';
            var br = document.createElement("br");
            b11.appendChild(br);
            button5.setAttribute("class", "botonson");

            b11.appendChild(button5);

            button5.onclick = function () {
                function f(d, x, y) {
                    var elem = diagramaComponentes.getElementByPoint(x, y);
                    if (elem && elem instanceof Element) {
                        var text = 'Estas seguro de que quieres mandar el elemento' + elem.getType() + ' con Diosito?';
                        //Create the text box
                        var dialog = new Dialog({text: text, cancelable: true});
                        //Function that changes the name of the diagram
                        var fn = function () {
                            diagramaComponentes.delElement(elem);
                            diagramaComponentes.draw();
                        }
                        //Show the text box in the web page
                        dialog.show(fn);
                    }

                }

                interaccionUnClick(f);
            };

            var button6 = document.createElement('button');
            button6.type = 'button';
            button6.innerText = 'Crear imagen';
            b12.appendChild(button6);
            button6.setAttribute("class", "botonson");

            button6.onclick = function () {
                diagramaComponentes.stopEvents();
                diagramaComponentes.draw();
                var url = canvas.toDataURL('image/png');
                window.open(url, 'image/png');
            };


            var button7 = document.createElement('button');
            button7.type = 'button';
            button7.innerText = 'Guardar';
            b13.appendChild(button7);
            button7.setAttribute("class", "botonson");
            button7.setAttribute("id", "submit");


            $(document).ready(function () {






                $('#submit').click(function (event) {
                    var xml = (new DOMParser()).parseFromString('<umldiagrams/>', 'text/xml');
                    var app = xml.getElementsByTagName('umldiagrams')[0];
                    app.appendChild(diagramaComponentes.getXML(xml));
                    var XMLS = new XMLSerializer();
                    xmlString = XMLS.serializeToString(xml);
                    var diagramName;

                    diagramName = prompt("Escriba el nombre del diagrama");
                    diagramaComponentes.setName(diagramName);
                    $.post('ServletG', {
                        diagrama: xmlString
                        , name: diagramName
                    }, function (responseText) {
                        alert(responseText);
                    });




                    //xmlString se debe manipular para enviarse y guardarse en el servidor.
                    /*  if (window.XMLHttpRequest) {
                     peticion_http = new XMLHttpRequest();
                     } else if (window.ActiveXObject) {
                     peticion_http = new ActiveXObject("Microsoft.XMLHTTP");
                     }
                     
                     peticion_http.onreadystatechange = mostrarContenido;
                     peticion_http.open('POST', './diagramas.xml', true);
                     peticion_http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                     peticion_http.send(xmlString);*/
                });


            });







            var button8 = document.createElement('button');
            button8.type = 'button';
            button8.innerText = 'Importar';
            b14.appendChild(button8);
            button8.setAttribute("class", "botonson");
            button8.setAttribute("id", "submarino");

            $(document).ready(function () {

                $('#submarino').click(function (event) {
                    var nombrecito = prompt("Ingresa el nombre a buscar");
                    $.post('ServletI', {
                        dato: nombrecito
                    }, function (xml) {
                        alert(xml);
                        xml = xml.replace("<!DOCTYPE html>", '');
                        xml = xml.replace(/\n/gi, "");
                        var xmlnode = jQuery.parseXML(xml);
                            if (xmlnode) {
                                        alert(xmlnode.documentElement.nodeName);
                                            }
                        var application = xmlnode.getElementsByTagName("umldiagrams")[0];
                        if (!application) {
                            alert("Not found a valid XML string");
                        }
                        console.log(typeof(xmlnode));
                        diagramaComponentes = new UMLComponentDiagram();

                        diagramaComponentes.setXML(xmlnode.nodeName);
                            
                        diagramaComponentes.initialize(0, div, mainContext, motionContext, width, height);
                        diagramaComponentes.interaction(true);
                        diagramaComponentes.draw();
                       

                            console.log("este es div: " + div + " Este es main context: " + mainContext + " Este es motionContext: " + motionContext + " este es width: " + width + " Esto es el nodename: " + xmlnode.nodeName + " esto es el xmlnode: " + xmlnode + "y esto es la cadena: " + xml);


                            diagramaComponentes.setXMLString(xml);



                            try {
                                diagramaComponentes.setXML(xmlnode);
                            } catch (error) {
                                alert(error);
                            }
                            diagramaComponentes.initialize(0, div, mainContext, motionContext, width, height);
                            diagramaComponentes.draw();
                            

                            /* d1.setXML( xmlnode );
                             d1.initialize( 0, div, mainContext, motionContext, width, height );
                             d1.draw();*/


                        
                       






                    });

                });
            });


            /* var xml = (new DOMParser()).parseFromString('<umldiagrams/>', 'text/xml');
             var xmlnode = (new DOMParser()).parseFromString(xml, "text/xml");
             var d1 = new UMLComponentDiagram({backgroundNodes: "#ff9900"});
             d1 = eval('new ' + xmlnode.nodeName + '()');
             d1.setXML(xmlnode, stereotypes);
             d1.initialize(0, div, mainContext, motionContext, width, height);
             d1.draw();
             var xmlnode = (new DOMParser()).parseFromString(xml, "text/xml");
             alert(xmlnode);
             profile = eval('new ' + xmlnode.nodeName + '()');
             profile.setXML(xmlnode, diagrams, acceptedElementsUML);
             var elements = profile.getElements();
             for (k = 0; k < elements[0].length; k++){
             metaclass.push(elements[0][k]);
             alert(elements[0][k])}
             
             for (k = 0; k < elements[1].length; k++){
             stereotypes.push(elements[1][k]);
             alert(elements[1][k])}
             
             
             
             profile.initialize(0, div, mainContext, motionContext, width, height);
             profile.draw();*/









            /*  button8.onclick = function(){
             
             
             
             
             
             var xml = (new DOMParser()).parseFromString('<umldiagrams/>', 'text/xml');
             var xmlnode = (new DOMParser()).parseFromString(xml, "text/xml");
             var d1 = new UMLComponentDiagram({backgroundNodes: "#ff9900"});
             d1 = eval('new ' + xmlnode.nodeName + '()');
             d1.setXML(xmlnode, stereotypes);
             d1.initialize(0, div, mainContext, motionContext, width, height);
             d1.draw();
             var xmlnode = (new DOMParser()).parseFromString(xml, "text/xml");
             alert(xmlnode);
             profile = eval('new ' + xmlnode.nodeName + '()');
             profile.setXML(xmlnode, diagrams, acceptedElementsUML);
             var elements = profile.getElements();
             for (k = 0; k < elements[0].length; k++){
             metaclass.push(elements[0][k]);
             alert(elements[0][k])}
             
             for (k = 0; k < elements[1].length; k++){
             stereotypes.push(elements[1][k]);
             alert(elements[1][k])}
             
             
             
             profile.initialize(0, div, mainContext, motionContext, width, height);
             profile.draw();
             }*/

            var interaccionDosClick = function (g) {

                diagramaComponentes.interaction(false);
                var b = 0
                        , d = 0;
                var f = true;
                var a = function (event) {
                    var j = event.pageX - div.offsetLeft;
                    var h = event.pageY - div.offsetTop;
                    if (f) {
                        f = false;
                        b = j;
                        d = h
                    } else {

                        g(diagramaComponentes, b, d, j, h);
                        div.onclick = false;
                        diagramaComponentes.draw();
                        diagramaComponentes.interaction(true)
                    }
                };
                div.onclick = a
            }
            ;
            document.body.appendChild(botones);
            function mandaDatos(xml) {
                var string = document.createElement("div");
                var form = document.createElement("form");
                var text = document.createTextNode(xml)
                form.setAttribute("method", "GET");
                form.setAttribute("action", "Servletht");
                string.appendChild(text);
                document.body.appendChild(string);
                var input = document.createElement("input");
                input.setAttribute("type", "hidden");
                input.setAttribute("name", "cadenaxml");
                input.setAttribute("value", xml);
//append to form element that you want .
                form.appendChild(input);
                document.body.appendChild(form);
            }
        </script>






    </div>



</body>


</HTML>
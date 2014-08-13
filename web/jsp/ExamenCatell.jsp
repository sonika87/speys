<%--  
    Document   : ExamenCatell
    d on : 14/07/2014, 02:44:43 PM
    Author     : sonika
--%>

<%@page import="java.util.List"%>
<%@page import="com.speys.Test.Bean.PeguntaExamenBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>


        <%
            List<PeguntaExamenBean> preguntas = (List<PeguntaExamenBean>) session.getAttribute("preguntas");
            int posicion = Integer.parseInt(request.getAttribute("posicion").toString());
            int contador = (Integer) session.getAttribute("contador");
        %>

        <script>
            
            var bPreguntar = true;
            
            function enviar_formulario(posicion) {
                bPreguntar = false;
                document.getElementById('hiddenPosicion').value = posicion;
                document.getElementById('formulario').submit();
            }
        </script>

        <script type="text/javascript">


            window.onbeforeunload = salir;

            var message = 'No debe cerrar el navegador. Si presiona Aceptar lo cerrará y perderá los cambios no guardados.';
            function salir(e)
            {
                if (bPreguntar) {
                    var evtobj = window.event ? event : e;
                    if (evtobj === e)
                    {
                        if (!evtobj.clientY)
                        {
                            evtobj.returnValue = message;
                        }
                    }
                    else
                    {
                        if (evtobj.clientY < 0)
                        {
                            evtobj.returnValue = message;
                        }
                    }
                }
            }
        </script>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <title>SPEYS</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- Tagsinput -->
        <link rel="stylesheet" href="css/plugins/tagsinput/jquery.tagsinput.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">


        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <!-- Nice Scroll -->
        <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- imagesLoaded -->
        <script src="js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/form/jquery.form.min.js"></script>
        <!-- Validation -->
        <script src="js/plugins/validation/jquery.validate.min.js"></script>
        <script src="js/plugins/validation/additional-methods.min.js"></script>
        <!-- TagsInput -->
        <script src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
        <!-- Custom file upload -->
        <script src="js/plugins/fileupload/bootstrap-fileupload.min.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>

        <!--[if lte IE 9]>
                <script src="js/plugins/placeholder/jquery.placeholder.min.js"><>
                <script>
                        $(document).ready(function() {
                                $('input, textarea').placeholder();
                        });
                </script>
        <![endif]-->

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico" />
        <!-- Apple devices Homescreen icon -->
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />

    </head>
    <!--onbeforeunload="salir(event)"-->
    <body onbeforeunload="salir(event)">
        <div id="navigation">
            <div class="container-fluid">
                <a href="#" id="brand">SPEYS</a>
                <a href="#" class="toggle-nav" rel="tooltip" data-placement="bottom" title="Toggle navigation"><i class="icon-reorder"></i></a>
                <ul class='main-nav'>
                    <li>
                        <a href="index.html">
                            <span>Inicio</span>
                        </a>
                    </li>	
                </ul>
                <div class="user">
                    <ul class="icon-nav">				
                        <li class='dropdown colo'>
                            <a href="#" class='dropdown-toggle' data-toggle="dropdown"><i class="icon-tint"></i></a>
                            <ul class="dropdown-menu pull-right theme-colors">
                                <li class="subtitle">
                                    Predefined colors
                                </li>
                                <li>
                                    <span class='red'></span>
                                    <span class='orange'></span>
                                    <span class='green'></span>
                                    <span class="brown"></span>
                                    <span class="blue"></span>
                                    <span class='lime'></span>
                                    <span class="teal"></span>
                                    <span class="purple"></span>
                                    <span class="pink"></span>
                                    <span class="magenta"></span>
                                    <span class="grey"></span>
                                    <span class="darkblue"></span>
                                    <span class="lightred"></span>
                                    <span class="lightgrey"></span>
                                    <span class="satblue"></span>
                                    <span class="satgreen"></span>
                                </li>
                            </ul>
                        </li>				
                    </ul>
                    <div class="dropdown">
                        <a href="#" class='dropdown-toggle' data-toggle="dropdown">Israel García Gómez <%= contador%><img src="img/demo/user-avatar.jpg" alt=""></a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="more-userprofile.html">Editar perfil</a>
                            </li>

                            <li>
                                <a href="login.html">Cerrar sesión</a>
                            </li>
                        </ul>
                    </div>	
                </div>
            </div>
        </div>
        <div class="container-fluid" id="content">

            <!--aqui -->
            <div id="left" disabled="true"> 
                <form action="search-results.html" method="GET" class='search-form'>
                    <div class="search-pane">
                        <input type="text" name="search" placeholder="Buscar paciente">
                        <button type="submit"><i class="icon-search"></i></button>
                    </div>
                </form>	
                <div style=" height:600px; overflow-y : scroll ; ">
                    <table width='100%' disabled="true" >
                        <%  for (PeguntaExamenBean pregunta : preguntas) {%>
                        <% if (pregunta.getNumero() == posicion) {%>
                        <tr style='background-color: #20D538' >
                            <td >&nbsp;&nbsp;&nbsp;&nbsp;Pregunta <%=pregunta.getNumero()%></td>
                            <% if (pregunta.getEstado().equals("R")) {%><td><img src="img/accepted.png" width="15px"></td><%}%>
                            <% if (pregunta.getEstado().equals("")) {%><td><img src="img/circle_orange.png" width="15px"></td><%}%>
                            <% if (pregunta.getEstado().equals("NR")) {%><td><img src="img/circle_orange.png" width="15px"></td><%}%>
                        </tr>
                        <% } else {%>
                        <tr onclick="javascript:enviar_formulario(<%= pregunta.getNumero()%>);" onmouseover='this.style.background = "#20ADD5"' onmouseout='this.style.background = ""' >
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;Pregunta <%=pregunta.getNumero()%></td>
                            <% if (pregunta.getEstado().equals("R")) {%><td><img  src="img/accepted.png" width="15px"></td><%}%>
                            <% if (pregunta.getEstado().equals("NR")) {%><td><img  src="img/clock.png" width="15px"></td><%}%>
                            <% if (pregunta.getEstado().equals("")) {%><td><img  src="img/circle_blue.png" width="15px"></td><%}%>
                        </tr>
                        <% } %>
                        <% }%>
                    </table>
                </div>
            </div>

            <div id="main">
                <div class="container-fluid">		
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <%if (posicion == 0) {%>

                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        16FP INSTRUCCIONES
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">
                                            <form neme="formulario" id="formulario" action="/SPEYS/ExamenCatellServlet" class="form-horizontal" method="POST">
                                                <div class="row-fluid">

                                                    <div class="span10">
                                                        <div >
                                                            <p>     Dentro de este cuadernillo hay cierto número de preguntas. Con ellas se quiere conocer sus actitudes y sus 
                                                                intereses. No hay respuestas "buenas" ni "malas" porque cada quien puede poseer sus propios puntos de vista. Para 
                                                                que se pueda obtener la mayor cantidad de información de sus resultados, usted deberá tratar de responder exacta y 
                                                                sinceramente.<br/><br/>

                                                                Hay tres respuestas posibles para cada pregunta. Lea los siguientes ejemplos y seleccione la respuesta que más se 
                                                                adecue a su forma de pensar ante cada situación.
                                                                EJEMPLOS:<br/><br/>

                                                                1.- Me gusta ver juegos deportivos entre equipos:<br/>
                                                                a) Sí, b) en ocasiones, e) no<br/><br/>
                                                                2.- Prefiero a la gente que es:<br/>
                                                                a) Reservada, b) Intermedia, e) hace amigos rápidamente<br/><br/>
                                                                3.- El dinero no trae la felicidad:<br/>
                                                                a) sí (cierto), b) intermedio, e) no (falso)<br/><br/>
                                                                4.- Mujer es a niña como gato es a:<br/>
                                                                a) gatito, b) perro, e) niño.<br/><br/>

                                                                En este último ejemplo hay una respuesta correcta: gatito. En el Cuestionario hay unas cuantas preguntas como 
                                                                ésta.<br/>
                                                                La letra (b) indica, por lo general, que usted está dudando acerca de lo que se le plantea. Hemos puesto varias frases y 
                                                                palabras distintas dentro de esta letra, pero todas tienen ese mismo significado.
                                                                Si algo no está claro, pregúntelo antes de empezar<br/><br/>
                                                                Al estar contestando recuerde estos cuatro puntos:<br/><br/>
                                                                1. No se le pide que medite sus respuestas. Dé la primera respuesta que más pronto le venga a la mente, 
                                                                de un modo natural. Aunque las preguntas son demasiado cortas para darle todos los datos que usted desearía tener, 
                                                                trate de dar siempre la mejor respuesta a un ritmo de alrededor de 5 contestaciones por minuto; haciéndolo así usted 
                                                                terminará aproximadamente en 35 o 45 minutos.<br/><br/>
                                                                2. Trate de no caer en el centro, en la letra (b), que son las respuestas de indecisión o de duda,
                                                                Excepto cuando le sea realmente imposible escoger cualquier otra opción.<br/><br/>
                                                                3. Asegúrese de no saltarse ninguna pregunta. Responda de manera apropiada a cada una de las
                                                                Preguntas. Algunas puede ser que no encajen con su situación. Algunas preguntas pueden parecerle dernasiado 
                                                                personales, pero recuerde que su Hoja de respuestas quedará en las manos confidenciales de un experto, y que no se 
                                                                trata de localizar ciertas respuestas especiales, sino de apreciarlas en conjunto. Por ello, esta prueba se califica con una
                                                                plantilla construida ex profeso.<br/><br/>
                                                                4. Responda con toda la honestidad posible lo que sea cierto para usted. Evite marcar la respuesta que le parezca
                                                                “la más aceptable” con el fin de impresionar al examinador.</p>
                                                            <br/>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Aceptar" onclick="bPreguntar = false;">
                                                            <input style="visibility:hidden;" name="posicion" value="1">
                                                        </div>

                                                    </div>
                                                </div>
                                            </form>
                                        </div>							
                                    </div>
                                </div>


                                <%} else {%>
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        Pregunta numero <%= posicion%>
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">
                                            <form neme="formulario" id="formulario" action="/SPEYS/ExamenCatellServlet" class="form-horizontal" method="POST">
                                                <div class="row-fluid">

                                                    <div class="span10">
                                                        <div >
                                                            <label><%= preguntas.get((posicion - 1)).getPregunta()%></label>
                                                        </div>
                                                        <br/>
                                                        <div >

                                                            <input <%if (preguntas.get((posicion - 1)).getRespuesta().equals("A")) {%> checked="checked" <% }%> type="radio" name="respuesta" value="A"/> A) <%= preguntas.get((posicion - 1)).getResA()%> <br/><br/>
                                                            <input <%if (preguntas.get((posicion - 1)).getRespuesta().equals("B")) {%> checked="checked" <% }%> type="radio" name="respuesta" value="B"/> B) <%= preguntas.get((posicion - 1)).getResB()%><br/><br/>
                                                            <input <%if (preguntas.get((posicion - 1)).getRespuesta().equals("C")) {%> checked="checked" <% }%> type="radio" name="respuesta" value="C"/> C) <%= preguntas.get((posicion - 1)).getResC()%>
                                                        </div>
                                                        <br/><br/>
                                                        <%session.setAttribute("peguntas", preguntas);%>
                                                        <input style="visibility:hidden;" name="posicion" value="<%=posicion%>">
                                                        <input id="hiddenPosicion" style="visibility:hidden;" name="posicionHiden" value="<%=posicion%>">
                                                        <div>
                                                            <%if (posicion == 1) { %>
                                                            <input type="submit" class='btn btn-primary' value="Anterior" disabled>
                                                            <%} else {%>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Anterior" onclick="bPreguntar = false;">
                                                            <% }%>
                                                            <%if (posicion == 187) { %>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Siguiente" disabled>
                                                            <% } else { %>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Siguiente" onclick="bPreguntar = false;">
                                                            <% }%>
                                                            <% if(contador == 186){ %>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Finalizar" onclick="bPreguntar = false;">
                                                            <%}%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>							
                                    </div>
                                </div>
                                <% }%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>





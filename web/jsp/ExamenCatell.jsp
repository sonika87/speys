<%-- 
    Document   : ExamenCatell
    d on : 14/07/2014, 02:44:43 PM
    Author     : sonika
--%>

<%@page import="java.util.List"%>
<%@page import="com.speys.Login.Bean.PeguntaExamenBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>


        <%
            List<PeguntaExamenBean> preguntas = (List<PeguntaExamenBean>) session.getAttribute("preguntas");
            int posicion = Integer.parseInt(request.getAttribute("posicion").toString());
        %>


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

    <body>
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
                        <a href="#" class='dropdown-toggle' data-toggle="dropdown">Israel García Gómez <img src="img/demo/user-avatar.jpg" alt=""></a>
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
            <div id="left">
                <form action="search-results.html" method="GET" class='search-form'>
                    <div class="search-pane">
                        <input type="text" name="search" placeholder="Buscar paciente">
                        <button type="submit"><i class="icon-search"></i></button>
                    </div>
                </form>	
                <div style=" height:500px; overflow-y : scroll ;">
                    <table width='100%'>
                        <% for (PeguntaExamenBean pregunta : preguntas) {%>
                        <% if (pregunta.getNumero() == posicion) {%>
                        <tr style='background-color: #20D538' onclick=""onmouseover='this.style.background = "#20ADD5"' onmouseout='this.style.background = "#20D538"' >
                            <td >&nbsp;&nbsp;&nbsp;&nbsp;Pregunta <%=pregunta.getNumero()%></td>
                            <% if(pregunta.getEstado().equals("R")){%><td><img src="img/accepted.png" width="15px"></td><%}%>
                            <% if(pregunta.getEstado().equals("")){%><td><img src="img/circle_orange.png" width="15px"></td><%}%>
                            <% if(pregunta.getEstado().equals("NR")){%><td><img src="img/circle_orange.png" width="15px"></td><%}%>
                        </tr>
                        <% } else {%>
                        <tr onclick=""onmouseover='this.style.background = "#20ADD5"' onmouseout='this.style.background = ""' >
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;Pregunta <%=pregunta.getNumero()%></td>
                            <% if(pregunta.getEstado().equals("R")){%><td><img src="img/accepted.png" width="15px"></td><%}%>
                            <% if(pregunta.getEstado().equals("NR")){%><td><img src="img/clock.png" width="15px"></td><%}%>
                            <% if(pregunta.getEstado().equals("")){%><td><img src="img/circle_blue.png" width="15px"></td><%}%>
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
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        Pregunta numero <%= posicion%>
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">
                                            <form action="/SPEYS/ExamenCatellServlet" class="form-horizontal" method="POST">
                                                <div class="row-fluid">

                                                    <div class="span10">
                                                        <div >
                                                            <label><%= preguntas.get((posicion - 1)).getPregunta()%></label>
                                                        </div>
                                                        <br/>
                                                        <div >
                                                            
                                                            <input <%if(preguntas.get((posicion - 1)).getRespuesta().equals("A")){%> checked="checked" <% } %> type="radio" name="respuesta" value="A"> A) <%= preguntas.get((posicion - 1)).getResA()%><br/><br/>
                                                            <input <%if(preguntas.get((posicion - 1)).getRespuesta().equals("B")){%> checked="checked" <% } %> type="radio" name="respuesta" value="B"> B) <%= preguntas.get((posicion - 1)).getResB()%><br/><br/>
                                                            <input <%if(preguntas.get((posicion - 1)).getRespuesta().equals("C")){%> checked="checked" <% } %> type="radio" name="respuesta" value="C"> C) <%= preguntas.get((posicion - 1)).getResC()%>
                                                        </div>
                                                        <br/><br/>
                                                        <%session.setAttribute("peguntas", preguntas);%>
                                                        <input style="visibility:hidden;" name="posicion" value="<%=posicion%>">
                                                        <div>
                                                            <%if(posicion == 1){ %>
                                                            <input type="submit" class='btn btn-primary' value="Anterior" disabled>
                                                            <%} else {%>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Anterior" >
                                                            <% } %>
                                                            <input type="submit" name="direccion" class='btn btn-primary' value="Siguiente">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>							
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>





<%-- 
    Document   : AltaPaciente
    Created on : 18/07/2014, 11:35:43 PM
    Author     : Gaby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String context = request.getContextPath();
%>
<html ng-app='app' lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <title>SPEYS</title>

        <!-- JS para el Jquery  -->
        <script src="<%=context%>/librerias/sistema/jquery-1.11.0.js" type="text/javascript" ></script>      
        <!-- jQuery -->
        <script src="<%=context%>/librerias/sistema/jquery.min.js"></script>
        <script src="<%=context%>/librerias/sistema/angular.js"></script>
        <script src="<%=context%>/js/LoginJs/PacienteJs.js"></script>
        <script src="<%=context%>/js/LoginJs/LoginJs.js"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="../css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="../css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- Tagsinput -->
        <link rel="stylesheet" href="../css/plugins/tagsinput/jquery.tagsinput.css">
        <!-- select2 -->
        <link rel="stylesheet" href="../css/plugins/select2/select2.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="../css/themes.css">

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
        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico" />
        <!-- Apple devices Homescreen icon -->
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />
    </head>
    <body>
        <div ng-controller="PacienteControllerAlta">
        <div id="navigation" >
            <div class="container-fluid">
                <a href="" id="brand">SPEYS</a>
                <a href="" class="toggle-nav" rel="tooltip" data-placement="bottom" title="Toggle navigation"><i class="icon-reorder"></i></a>
                <ul class='main-nav'>
                    <li>
                        <a href="../jsp/Perfil.jsp">
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
                        <a href="#" class='dropdown-toggle' data-toggle="dropdown">María Barrera Cárdenas <img src="../img/logo.png" alt=""></a>
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
                <form action="search-results.html" method="GET" class='search-form' id="formAlta">
                    <div class="search-pane">
                        <input type="text" name="search" placeholder="Buscar paciente">
                        <button type="submit"><i class="icon-search"></i></button>
                    </div>
                </form>			
            </div>
            <div id="main">
                <div class="container-fluid" >		
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        Alta paciente
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">
                                            <form  class="form-horizontal">
                                                <div class="row-fluid">

                                                    <div class="span10">

                                                        <div class="control-group">
                                                            <label for="name" class="control-label right">Nombre:</label>
                                                            <div class="controls">
                                                                <input  type="text"   name="name"  ng-model="nombreP" class='input-xlarge' placeholder="Nombre del paciente" required >
                                                            </div>
                                                        </div>
                                                            <!--                                                                                                        <div class="controls" ng-repeat="paciente in infoPacienteList">
                                                                                                                                                    <input type="text" name="name"  ng-value="paciente.nombre" class='input-xlarge' value="Nombre del paciente">
                                                                                                                                                </div>
                                                                                                                                                            </div>-->
                                                            <div class="control-group">
                                                                <label  class="control-label right">Apellido paterno</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="aPaterno" required  class='input-xlarge' placeholder="Apellido del paciente">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <label  class="control-label right">Apellido materno</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="aMaterno" required  class='input-xlarge' placeholder="Apellido del paciente">
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="control-group">
                                                                <label for="country" class="control-label right">Edad:</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="edad" required  class='input-xlarge' placeholder="Años">
                                                                </div>
                                                                <br>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="meses" required  class='input-xlarge' placeholder="Meses">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <label  class="control-label right">Sexo</label>
                                                                 <div class="controls">
                                                                <label class='radiobutton'>
                                                                        <input type="radio" value="femenino" ng-model="sexo" name="sex"> Femenino
                                                                         <input type="radio" value="masculino" ng-model="sexo" name="sex"> Maculino
                                                                    </label>
                                                                 </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label for="textarea" class="control-label right">Dirección:</label>
                                                                <div class="controls">
                                                                    <textarea ng-model="direccionP" required  id="textarea" rows="3" class="input-block-level" placeholder="Municipio Colonia calle número"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label  class="control-label right">Teléfono</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="telefonoP" required  class='input-xlarge' placeholder="7773129043">
                                                                </div>
                                                            </div>

                                                            <div class="control-group">
                                                                <label  class="control-label right">Estado Civil</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="estadoCivilP"  required class='input-xlarge' placeholder="estado civil">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <label  class="control-label right">Ciudad de origen</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="ciudadOrigenP" required  class='input-xlarge' placeholder="Ciudad de origen">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <label  class="control-label right">Correo electrónico</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="correoElecP" required  class='input-xlarge' placeholder="Correo electrónico">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <label  class="control-label right">Nivel Educativo</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="nivelEstudiosP" required  class='input-xlarge' placeholder="Nivel Educativo">
                                                                </div>
                                                            </div>
                                                            <div class="control-group">

                                                               <div class="control-group">
                                                                <label  class="control-label right">Costo por consulta</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="costoConsultaP" required  class='input-xlarge' placeholder="Costo por consulta">
                                                                </div>
                                                            </div>
                                                            </div>

                                                            <div class="form-actions pull-right">
                                                               
                                                                <input type="submit"  ng-click="altaPaciente();" class='btn btn-primary' value="Guardar">
                                                                
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
            </div></div>
            </div>
    </body>
</html>

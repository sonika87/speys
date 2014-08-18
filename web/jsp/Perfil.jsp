<%-- 
    Document   : Perfil
    Created on : 14/07/2014, 02:44:43 PM
    Author     : sonika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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


        <!-- dataTables -->
        <link rel="stylesheet" href="../css/plugins/datatable/TableTools.css">
        <!-- chosen -->
        <link rel="stylesheet" href="../css/plugins/chosen/chosen.css">


        <!-- JS para el Jquery  -->
        <script src="<%=context%>/librerias/sistema/jquery-1.11.0.js" type="text/javascript" ></script>      
        <!-- jQuery -->
        <script src="<%=context%>/librerias/sistema/jquery.min.js"></script>
        <script src="<%=context%>/librerias/sistema/angular.js"></script>
        <script src="<%=context%>/js/LoginJs/PacienteJs.js"></script>
        <script src="<%=context%>/js/LoginJs/LoginJs.js"></script>

        <!-- Nice Scroll -->
        <script src="../js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- imagesLoaded -->
        <script src="../js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
        <!-- jQuery UI -->
        <script src="../js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
        <!-- slimScroll -->
        <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- select2 -->
        <script src="../js/plugins/select2/select2.min.js"></script>
        <!-- Bootbox -->
        <script src="../js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- Bootbox -->
        <script src="../js/plugins/form/jquery.form.min.js"></script>
        <!-- Validation -->
        <script src="../js/plugins/validation/jquery.validate.min.js"></script>
        <script src="../js/plugins/validation/additional-methods.min.js"></script>
        <!-- TagsInput -->
        <script src="../js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
        <!-- Custom file upload -->
        <script src="../js/plugins/fileupload/bootstrap-fileupload.min.js"></script>

        <!-- Theme framework -->
        <script src="../js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="../js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="../js/demonstration.min.js"></script>

        <!-- dataTables -->
        <script src="../js/plugins/datatable/jquery.dataTables.min.js"></script>
        <script src="../js/plugins/datatable/TableTools.min.js"></script>
        <script src="../js/plugins/datatable/ColReorderWithResize.js"></script>
        <script src="../js/plugins/datatable/ColVis.min.js"></script>
        <script src="../js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
        <script src="../js/plugins/datatable/jquery.dataTables.grouping.js"></script>

        <!-- jQuery UI -->
        <script src="../js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
        <script src="../js/plugins/jquery-ui/jquery.ui.datepicker.min.js"></script>

        <!-- Chosen -->
        <script src="../js/plugins/chosen/chosen.jquery.min.js"></script>

        <!--[if lte IE 9]>
                <script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
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
        <div ng-controller="consultaPacientesController">
            
            
            
             <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button id="btnClose" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Edita Cita</h4>
                        </div>
                        <div class="modal-body">

                            <form  class="form-horizontal">
                                                <div class="row-fluid">

                                                    <div class="span10">
                                                        <div  >
                                                        <div class="control-group">
                                                            <label for="name" class="control-label right">Status Pago</label>
                                                            <div class="controls">
                                                                <input type="text" name="name"  ng-model="PacienteHistoEdit.pago_cita" class='input-xlarge' placeholder="Status Pago">
                                                            </div>
                                                        </div>
                                                            <!--                                                                                                        <div class="controls" ng-repeat="paciente in infoPacienteList">
                                                                                                                                                    <input type="text" name="name"  ng-value="paciente.nombre" class='input-xlarge' value="Nombre del paciente">
                                                                                                                                                </div>
                                                                                                                                                            </div>-->
                                                            <div class="control-group">
                                                                <label  class="control-label right">Observaciones</label>
                                                                <div class="controls">
                                                                    <input type="text" ng-model="PacienteHistoEdit.observaciones_cita" class='input-xlarge' placeholder="Observaciones">
                                                                </div>
                                                            </div>
                                                           
                                                            <div class="form-actions pull-right">
                                                               
                                                                <input type="button" ng-click="editaCita(PacienteHistoEdit);" class='btn btn-primary' value="Editar">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                            </form>
                        </div><!-- End of Modal body -->
                    </div><!-- End of Modal content -->
                </div><!-- End of Modal dialog -->
            </div><!-- End of Modal -->
            
            
            
            
            
            
            
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
                    <form  class='search-form'>
                        <div class="search-pane">
                            <input type="text" name="search" placeholder="Buscar paciente" ng-model="query">
                            <button type="submit"><i class="icon-search"></i></button>

                        </div>
                        <div ng-repeat="li in ListaPacientes| filter:query" >
                            <center><label class="alert-info" ng-model="li.pacienteId" ng-click="consultaHistorialPacientes(li.pacienteId)">{{li.nombre}} {{li.aPaterno}} {{li.aMaterno}}</label>
                            </center>
                        </div>

                    </form>			
                </div>



                <div id="main" style="display:none">
                    <div class="container-fluid">		
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="box box-color box-bordered">
                                    <div class="box-title">
                                        <h3>
                                            <i class="icon-user"></i>
                                            Bienvenido "María Barrera Cárdenas"
                                        </h3>
                                    </div>
                                    <div class="box-content nopadding">
                                        <div class="tab-content padding tab-content-inline tab-content-bottom">
                                            <div class="" id="profile">
                                                <div class="row-fluid">
                                                    <div class="pagination-centered">
                                                        <ul class="tiles"><li class="image">
                                                                <a><img src="img/img_users/default/mujer_default.png" alt=""><span class='name'>Psic. María Barrera Cárdenas</span></a>
                                                            </li></ul><br><br><br><br><br><br><br><br><br><br><br>
                                                        <h4>Egresada de<br><br>
                                                            "Universidad Autonoma De México"</h4>                                      
                                                    </div><br><br><br><br><br><br>                                                                                          
                                                </div>                                            
                                            </div>							
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                            Perfil Paciente
                                        </h3>
                                    </div>
                                    <div class="box-content nopadding">
                                        <div class="tab-content padding tab-content-inline tab-content-bottom">
                                            <div class="" id="profile">
                                                <div class="row-fluid">

                                                    <table class="table">

                                                        <tr style="text-align: center">
                                                            <td rowspan="2">

                                                                <div class="pagination-centered">
                                                                    <ul class="tiles2">
                                                                        <li class="image">
                                                                            <a><img src="../img/img_users/default/mujer_default.png" alt=""><span class='name'>{{datosPersonales.nombre}} {{datosPersonales.aPaterno}} {{datosPersonales.aMaterno}}</span></a>
                                                                        </li>
                                                                    </ul>  
                                                                </div>
                                                            </td>

                                                            <td><h6>Edad</h6></td>
                                                            <td><h6>Dirección</h6></td>
                                                            <td><h6>Telefono</h6></td>
                                                            <td><h6>Costo <br>por consulta</h6></td>
                                                            <td><h6>Estado Civil</h6></td>
                                                            <td><h6>Correo Electronico</h6></td>
                                                        </tr>

                                                        <tr style="text-align: center">
                                                            <td> {{datosPersonales.anioEdad}}</td>
                                                            <td>{{datosPersonales.direccion}}</td>
                                                            <td>{{datosPersonales.telefono}}</td>
                                                            <td>{{datosPersonales.costoConsulta}}</td>
                                                            <td>{{datosPersonales.estadoCivil}}</td>
                                                            <td>{{datosPersonales.correoElectronico}}</td>
                                                        </tr>


                                                    </table>

                                                </div>

                                                <!--adsa-->

                                                <div class="row-fluid">
                                                    <div class="span12">
                                                        <div class="box box-color box-bordered">
                                                            <div class="box-title">
                                                                <h3>
                                                                    Historial de citas
                                                                </h3>
                                                            </div>
                                                            <div class="box-content nopadding">
                                                                <table class="table">
									<thead >
                                                                            <tr >
                                                                                <th colspan="7">  <input class="pull-right" type="text" name="search" placeholder="Buscar paciente" ng-model="query2"></th>
                                                                            </tr>
										<tr>
											
											<th>Nombre</th>
                                                                                        
                                                                                        <th>Sexo</th>
                                                                                        <th>Observaciones</th>
                                                                                        <th>Status Pago</th>
											<th>Fecha de cita</th>
                                                                                       									
											<th>Opciones</th>
										</tr>

									</thead>
									<tbody>
                                                                            
                                                                            <tr ng-repeat="pac in listaHist| filter:query2">
<!--											<td class="with-checkbox">
												<input type="checkbox" name="check" value="1">
											</td>-->
											<td>{{pac.nombre}} {{pac.aPaterno}} {{pac.aMaterno}}</td>
											<td>{{pac.sexo}}</td>
                                                                                        <td>{{pac.observaciones_cita}}</td>
                                                                                        <td>{{pac.pago_cita}}</td>
                                                                                        <td>{{pac.fecha_cita}}</td>
                                                                                      											
											<td>
												
                                                                                                <a href="" ng-click="consultaHistoPaciente(pac.pacienteId);" class="btn" rel="tooltip" title="Edit"><i class="icon-edit"></i></a>
												
											</td>
										</tr>

                                                                              									
									</tbody>
								</table>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <!--fds-->


                                                </div>  

                                                <!--inicio tabla-->



                                                <!--fin tabla-->
                                            </div>							
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




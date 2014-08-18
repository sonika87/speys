<%-- 
    Document   : cita
    Created on : 5/07/2014, 04:04:32 PM
    Author     : sonika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<%
    String context = request.getContextPath();
%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Apple devices fullscreen -->
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<!-- Apple devices fullscreen -->
	
	<title>SPEYS</title>
        
        <!-- JS para el Jquery  -->
        <script src="<%=context%>/librerias/sistema/jquery-1.11.0.js" type="text/javascript" ></script>      
        <!-- jQuery -->
        <script src="<%=context%>/librerias/sistema/jquery.min.js"></script>
        <script src="<%=context%>/librerias/sistema/angular.js"></script>
        <script src="<%=context%>/js/LoginJs/CitaJs.js"></script>

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
     <div ng-controller="PacienteControllerAltaCita">
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
	</div>
	<div id="main">
		<div class="container-fluid">		
			<div class="row-fluid">
				<div class="span12">
					<div class="box box-color box-bordered">
						<div class="box-title">
							<h3>
								<i class="icon-user"></i>
								Cita
							</h3>
						</div>
						<div class="box-content nopadding">
							<div class="tab-content padding tab-content-inline tab-content-bottom">
								<div class="tab-pane active" id="profile">
									<form action="#" class="form-horizontal">
										<div class="row-fluid">

										<div class="span10">
												<div class="control-group">
													<label for="name" class="control-label right">Nombre:</label>
													<div class="controls">
														<input type="text" name="name" ng-model="nombreP" class='input-xlarge'>
													</div>
												</div>
												<div class="control-group">
													<label for="country" class="control-label right">Edad:</label>
													<div class="controls">
														<input type="text" name="name" class='input-xlarge'>
													</div>
												</div>

												<div class="control-group">
														<label for="textarea" class="control-label right">Observaciones:</label>
													<div class="controls">
                                                                                                            <textarea name="textarea" ng-model="observaciones" id="textarea" rows="3" class="input-block-level" placeholder="Anote sus observaciones brevemente"></textarea>
													</div>
												</div>

												
												<div class="control-group">
														
													<div class="controls">
														<label class='checkbox'>
														<input type="checkbox" name="pagoCheck" ng-model="pago"> Pago realizado
														</label>
													</div>
												</div>
												
												<div class="form-actions">
												<a class="content-remove">
													<input type="submit" ng-click="altaCita();" class='btn btn-primary' value="Finalizar cita"></a>
													<input type="submit" class='btn btn-primary' value="Aplicar examen">
													<input type="reset" class='btn' value="Discard changes">
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

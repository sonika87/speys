<!--<!doctype html>-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String context = request.getContextPath();
%>
<html ng-app='app' lang="es" >
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
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap responsive -->
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
	<!-- icheck -->
	<link rel="stylesheet" href="css/plugins/icheck/all.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Color CSS -->
	<link rel="stylesheet" href="css/themes.css">


	
	
	<!-- Nice Scroll -->
	<script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- Validation -->
	<script src="js/plugins/validation/jquery.validate.min.js"></script>
	<script src="js/plugins/validation/additional-methods.min.js"></script>
	<!-- icheck -->
	<script src="js/plugins/icheck/jquery.icheck.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/eakroko.js"></script>
       

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

<body class='login'>
	<div class="wrapper">
		<h1><a><img src="img/logo-big.png" alt="" class='retina-ready' width="59" height="49">SPEYS</a></h1>
		<div class="login-body" ng-controller="sesionController">
			<h2>Login</h2>
			<form method="get" id="login" class='form-validate'>
				<div class="control-group">
					<div class="email controls">
						<input type="text" required  ng-model="param001" autocomplete="off"  placeholder="Usuario" class='input-block-level' data-rule-required="true">
					</div>
				</div>
				<div class="control-group">
					<div class="pw controls">
						<input required  ng-model="param002" autocomplete="off" type="password" placeholder="Contraseña" class='input-block-level' data-rule-required="true">
					</div>
				</div>
				<div class="submit" >					
					<center><input type="submit" value=" Entrar " class='btn btn-primary' ng-click="iniciaSesion();"></center>
				</div>
			</form>
			<div class="forget">
				<br/>
			</div>
		</div>
	</div>
</body>

</html>

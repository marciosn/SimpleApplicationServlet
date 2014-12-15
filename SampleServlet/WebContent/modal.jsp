<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modal</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.remodal.css" />


</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<div class="container-fluid">
	
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
	
	<div class="remodal-bg span9">
		<h2>O conteúdo da página fica nesta div</h2>
		
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		
		<a href="#modal">Exibir modal.</a>
		
	</div>
	
	</div>
	
	<div class="remodal" data-remodal-id="modal">
    <h1>Remodal</h1>
    <p>
      Modal usando plugin JQuery Remodal.
    </p>
    <br>
    <a class="remodal-cancel" href="#">Cancel</a>
    <a class="remodal-confirm" href="#">OK</a>
</div>
	
</body>

<script src="./resources/bootstrap/plugins/jquery.min.js"></script>
<script src="./resources/bootstrap/plugins/jquery.remodal.js"></script>
</html>
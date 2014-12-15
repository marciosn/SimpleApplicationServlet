<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Typography</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/typography/css/style6.css" />

<script type="application/javascript" src="./resources/json/dados.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/typography/js/jquery.lettering.js"></script>
<script src="./resources/bootstrap/typography/js/modernizr.custom.79639.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />

	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2>Typography</h2>
			<section class="main">
				
				<h2 class="cs-text" id="cs-text">ABCD</h2>
				
			</section>
		</div>
		
		</div>

</body>

<script>
	$(document).ready(function() {
		$("#cs-text").lettering().children('span').wrap('<span />').parent().prepend('<span></span><span></span><span></span>');
	});
</script>

</html>
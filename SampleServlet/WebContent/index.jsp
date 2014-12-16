<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estudando Servlets e JSP</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/typography/css/style7.css" />
<script src="./resources/bootstrap/typography/js/jquery.lettering.js"></script>
<script src="./resources/bootstrap/typography/js/modernizr.custom.79639.js"></script>
</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
		<jsp:include page="./WEB-INF/templates/sideMenu.jsp" />
		<button class="menu-button" id="open-button"></button>
	
	<div class="container-fluid" id="content">	
		<div class="span12">
            <section class="main">
				
				<h2 class="cs-text">
					<span>M</span>
					<span>a</span>
					<span>r</span>
					<span>c</span>
					<span>i</span>
					<span>o</span>
					<span>Sn</span>
					<span></span>
				</h2>
				
			</section>
		</div>	
	
	</div>
</body>
<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
	
    content = document.querySelector( "#content" ),
	openbtn = document.querySelector( "#open-button" ),
	closebtn = document.querySelector( "#close-button" ),
	
	sideMenu(content, openbtn, closebtn);
} );

</script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sequence Text</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />


<link rel="stylesheet" type="text/css" href="./resources/bootstrap/textSequence/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/textSequence/css/default.css" />

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/textSequence/js/jquery.lettering.js"></script>
<script src="./resources/bootstrap/textSequence/js/modernizr.custom.js"></script>

<style type="text/css">
body {
	font-family: 'Lato', Calibri, Arial, sans-serif;
	color: #fff;
	background: #000;
}
</style>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
			<%-- <jsp:include page="./WEB-INF/templates/sidebar.jsp" /> --%>
		
		<div class="">
		
			<div class="os-phrases" id="os-phrases">
				<h2>Be Strong</h2>
				<h2>Be Courageous</h2>
				<h2>Be the Best</h2>
				<h2>Keeping the Faith</h2>
				<h2>Always Be Happy</h2>
				<h2>Never Give Up</h2>
				<h2>If You Fall, Raise</h2>
				<h2>I Believe You...</h2>
			</div>
		</div>		
		</div>
<script>
			$(document).ready(function() {
				$("#os-phrases > h2").lettering('words').children("span").lettering().children("span").lettering(); 
			})
</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Effects for Drop-Down Lists</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/dropdown/css/style1.css" />

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/dropdown/js/modernizr.custom.63321.js"></script>
<script src="./resources/bootstrap/dropdown/js/jquery.dropdown.js"></script>

<style type="text/css">

</style>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2>Simple Effects for Drop-Down Lists</h2>
		<section class="main">
			<div class="fleft">
					<select id="cd-dropdown" class="cd-select">
						<option value="-1" selected>DropDown</option>
						<option value="1" class="icon-google-plus">Google Plus</option>
						<option value="2" class="icon-facebook">Facebook</option>
						<option value="3" class="icon-twitter">Twitter</option>
						<option value="4" class="icon-github">GitHub</option>
					</select>
				</div>
		</section>
		</div>
		</div>
		
<script type="text/javascript">
	$( function() {
		$( '#cd-dropdown' ).dropdown( {
			gutter : 5
		} );
	});
</script>

<!--
<script type="text/javascript">			
	$( function() {	
		$( '#cd-dropdown' ).dropdown( {
			gutter : 5,
			stack : false,
			delay : 100,
			slidingIn : 100
		} );
	});
</script>
 -->
</body>

</html>
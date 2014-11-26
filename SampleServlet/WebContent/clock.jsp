<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clock</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.flipcountdown.css" />

<script src="./resources/bootstrap/plugins/jquery.flipcountdown.js"></script>
<script src="./resources/bootstrap/plugins/jquery.min.js"></script>

<script>
jQuery(function($){
	$('#retroclockbox_lg').flipcountdown({size:'lg'});
	$('#retroclockbox_md').flipcountdown({size:'md'});
	$('#retroclockbox_sm').flipcountdown({size:'sm'});
	$('#retroclockbox_xs').flipcountdown({size:'xs'});
})
</script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
	
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Clock</h2>

		<div><strong>lg</strong>-large</div>
		<div id="retroclockbox_lg"></div>
		<div><strong>md</strong>-middle, default</div>
		<div id="retroclockbox_md"></div>
		<div><strong>sm</strong>-small</div>
		<div id="retroclockbox_sm"></div>
		<div><strong>xs</strong>-Extra small</div>
		<div id="retroclockbox_xs"></div>
		
		</div>
		
	</div>

</body>
</html>
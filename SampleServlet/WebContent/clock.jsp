<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clock</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.flipcountdown.css" />

<script src="./resources/bootstrap/plugins/jquery.flipcountdown.js"></script>
<script src="./resources/bootstrap/plugins/jquery.min.js"></script>


<script type="text/javascript">
	jQuery(function(){
	  jQuery('#flipcountdownbox1').flipcountdown();
	})
</script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<jsp:include page="./WEB-INF/templates/sidebar.jsp" />

	<div id="flipcountdownbox1"></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fast Hover Slider</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/fastslider/css/style.css" />

<script type="application/javascript" src="./resources/json/dados4.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/fastslider/js/modernizr.custom.04022.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2>Fast Hover Slider</h2>
			<section>
				<div class="hs-wrapper">
					<img src="" alt="image01" id="img1"/>
					<img src="" alt="image02" id="img2"/>
					<img src="" alt="image03" id="img3"/>
					<img src="" alt="image04" id="img4"/>
					<img src="" alt="image05" id="img5"/>
					<img src="" alt="image06" id="img6"/>
					<img src="" alt="image07" id="img7"/>
					<img src="" alt="image08" id="img8"/>
					<div class="hs-overlay">
						<span>O Hobbit <strong>2014</strong></span>
					</div>
				</div>
			</section>
						
		</div>
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		fastslider(dados);
	});

</script>
</html>
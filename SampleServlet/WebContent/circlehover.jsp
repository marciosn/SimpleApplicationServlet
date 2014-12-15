<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Circle Hover</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/circlehover/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/circlehover/css/common.css" />

<script type="application/javascript" src="./resources/json/dados3.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/circlehover/js/modernizr.custom.79639.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2>Circle Hover</h2>
			
			<section class="main">
			
				<ul class="ch-grid">
					<li>
						<div class="ch-item" id="img1">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">naruto</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item" id="img2">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">one piece</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item" id="img3">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">dragon ball</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item" id="img4">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">naruto</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item" id="img5">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">naruto</a></p>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item" id="img6">
							<div class="ch-info">
								<h3>Circle Hover</h3>
								<p>by Márcio <a href="#">naruto</a></p>
							</div>
						</div>
					</li>
					
				</ul>
				
			</section>
			
		</div>
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		circulohover(dados);
	});

</script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Filter Functionality with CSS3</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/filtercss/css/style3.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/filtercss/css/demo.css" />

<script type="application/javascript" src="./resources/json/dados5.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/filtercss/js/modernizr.custom.29473.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Filter Functionality with CSS3</h2>
				<section class="ff-container">
			
				<input id="select-type-all" name="radio-set-1" type="radio" class="ff-selector-type-all" checked="checked" />
				<label for="select-type-all" class="ff-label-type-all">   All</label>
				
				<input id="select-type-1" name="radio-set-1" type="radio" class="ff-selector-type-1" />
				<label for="select-type-1" class="ff-label-type-1">   Web Design</label>
				
				<input id="select-type-2" name="radio-set-1" type="radio" class="ff-selector-type-2" />
				<label for="select-type-2" class="ff-label-type-2">   Illustration</label>
				
				<input id="select-type-3" name="radio-set-1" type="radio" class="ff-selector-type-3" />
				<label for="select-type-3" class="ff-label-type-3">   Icon Design</label>
				
				<div class="clr"></div>
				
				<ul class="ff-items">
					<li class="ff-item-type-2">
						<a href="#">
							<span>Chameleon</span>
							<img src="" id="img1"/>
						</a>
					</li>
					<li class="ff-item-type-1">
						<a href="#">
							<span>Tutorials (wip)</span>
							<img src="" id="img2"/>
						</a>
					</li>
					<li class="ff-item-type-2">
						<a href="#">
							<span>Flower</span>
							<img src="" id="img3"/>
						</a>
					</li>
					<li class="ff-item-type-1">
						<a href="#">
							<span>Symplas website</span>
							<img src="" id="img4"/>
						</a>
					</li>
					<li class="ff-item-type-3">
						<a href="#">
							<span>TRON: Mobile version</span>
							<img src="" id="img5"/>
						</a>
					</li>
					<li class="ff-item-type-2">
						<a href="#">
							<span>Cake</span>
							<img src="" id="img6"/>
						</a>
					</li>
					<li class="ff-item-type-1">
						<a href="#">
							<span>Tailoring accessories</span>
							<img src="" id="img7"/>
						</a>
					</li>
					<li class="ff-item-type-3">
						<a href="#">
							<span>App icon</span>
							<img src="" id="img8"/>
						</a>
					</li>
					<li class="ff-item-type-1">
						<a href="#">
							<span>Event Planning</span>
							<img src="" id="img9"/>
						</a>
					</li>
				</ul>
			</section>
		
		</div>
		
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		filter(dados);
	});

</script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Efeitos 3D hover</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/3dhover/css/style_common.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/3dhover/css/style3.css" />

<script type="application/javascript" src="./resources/json/dados.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/3dhover/js/jquery.hoverfold.js"></script>
<script src="./resources/bootstrap/3dhover/js/modernizr.custom.69142.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
	
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Efeitos 3D hover</h2>
			<div id="grid" class="main">
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img1"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img2"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img3"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img4"/>
				</div>
				
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img5"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img6"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img7"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img8"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img9"/>
				</div>
				<div class="view">
					<div class="view-back">
						<span data-icon="A">Dragon Ball Z</span>
						<span data-icon="B">3D Efeitos</span>
						<a href="#">&rarr;</a>
					</div>
					<img src="" id="img10"/>
				</div>
			</div>
		
		</div>
	</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		hoverEfeitos(dados);

		/*
		*imagens grandes deve ter setado o style5 e a função abaixo
		hoverEfeitosNew(dados);
		*/
		
	});

</script>

<script type="text/javascript">	
			
			Modernizr.load({
				test: Modernizr.csstransforms3d && Modernizr.csstransitions,
				yep : ['http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js','./resources/bootstrap/3dhover/js/jquery.hoverfold.js'],
				nope: 'css/fallback.css',
				callback : function( url, result, key ) {
						
					if( url === './resources/bootstrap/3dhover/js/jquery.hoverfold.js' ) {
				$( '#grid' ).hoverfold();
					}

				}
			});
				
</script>

</html>
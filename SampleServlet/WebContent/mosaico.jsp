<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mosaico</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mosaic.css" />


<script src="./resources/bootstrap/plugins/jquery.min.js"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/plugins/mosaic.1.0.1.js"></script>
<script src="./resources/bootstrap/plugins/mosaic.1.0.1.min.js"></script>
<script type="application/javascript" src="./resources/bootstrap/json/dados.json"></script>


</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
	
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Mosaico</h2>

		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic1"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 1</h4>
					<p>Mosaico 1 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic2"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 2</h4>
					<p>Mosaico 2 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic3"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 3</h4>
					<p>Mosaico 3 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic4"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 4</h4>
					<p>Mosaico 4 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic5"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 5</h4>
					<p>Mosaico 5 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic6"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 6</h4>
					<p>Mosaico 6 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic7"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 7</h4>
					<p>Mosaico 7 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic8"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 8</h4>
					<p>Mosaico 8 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic9"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 9</h4>
					<p>Mosaico 9 JQuery</p>
				</div>
			</a>
		</div>
		
		<div class="mosaic-block cover2">
			<a href="#" class="mosaic-overlay"><img src="" id="mosaic10"/></a>
			<a href="#" class="mosaic-backdrop">
				<div class="details">
					<h4>Mosaico 10</h4>
					<p>Mosaico 10 JQuery</p>
				</div>
			</a>
		</div>
		
		</div>
		
	</div>

</body>

<script type="text/javascript">
			
			$(document).ready(function($){

				carregaImagens(dados);
				
				$('.circle').mosaic({
					opacity		:	0.8			//Opacity for overlay (0-1)
				});
				
				$('.fade').mosaic();
				
				$('.bar').mosaic({
					animation	:	'slide'		//fade or slide
				});
				
				$('.bar2').mosaic({
					animation	:	'slide'		//fade or slide
				});
				
				$('.bar3').mosaic({
					animation	:	'slide',	//fade or slide
					anchor_y	:	'top'		//Vertical anchor position
				});
				
				$('.cover').mosaic({
					animation	:	'slide',	//fade or slide
					hover_x		:	'400px'		//Horizontal position on hover
				});
				
				$('.cover2').mosaic({
					animation	:	'slide',	//fade or slide
					anchor_y	:	'top',		//Vertical anchor position
					hover_y		:	'80px'		//Vertical position on hover
				});
				
				$('.cover3').mosaic({
					animation	:	'slide',	//fade or slide
					hover_x		:	'400px',	//Horizontal position on hover
					hover_y		:	'300px'		//Vertical position on hover
				});

		    
		    });
		    
		</script>
</html>
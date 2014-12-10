<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caption Hover Effects</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/caption-hover/css/component2.css" />
<!-- <link rel="stylesheet" type="text/css" href="./resources/bootstrap/caption-hover/css/default.css" /> -->

<script type="application/javascript" src="./resources/json/dados.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/caption-hover/js/modernizr.custom.js"></script>
<script src="./resources/bootstrap/caption-hover/js/toucheffects.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		
		
			<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		
		<!-- <a href="#" id="exibi"><p>exibir</p></a> -->
		
		<div class="span9">
		
		<h2>Caption Hover Effects</h2>
		
		<!-- para modificar o estilo dos efeitos CSS é preciso apenas modificar o component CS-STYLE-{NUMERO DO ESTILO DESEJADO}
			 os estilos vão de 1 a 7, feito isso o estilo sera aplicado-->
			<ul class="grid cs-style-3">
				<li>
					<figure>
						<img src="" alt="img01" id="img1"/>
						<figcaption>
							<h3>Trains</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<img src="" alt="img02" id="img2"/>
						<figcaption>
							<h3>Cards</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<img src="" alt="img04" id="img3"/>
						<figcaption>
							<h3>Feathers</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<img src="" alt="img05" id="img4"/>
						<figcaption>
							<h3>Storm</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<img src="" alt="img03" id="img5"/>
						<figcaption>
							<h3>Colors</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<img src="" alt="img06" id="img6"/>
						<figcaption>
							<h3>Landscape</h3>
							<span>Márcio Sn</span>
							<a href="#">Caption Hover</a>
						</figcaption>
					</figure>
				</li>
			</ul>
		</div>
		
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		hoverEfeitosCaption(dados);
		$("#barra").hide();
	});
</script>

<script>
$("#barra").hide();

$( "#exibi" ).mouseover(function() {
    $("#barra").show(500);
});

$( "#exibi" ).mouseout(function() {
    $("#barra").hide(400); 
});
</script>

</html>
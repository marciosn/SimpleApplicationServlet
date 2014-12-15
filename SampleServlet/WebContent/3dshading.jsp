<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3D Box</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/3dshading/css/shading.css" />


<script type="application/javascript" src="./resources/json/dados2.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>

<script src="./resources/bootstrap/3dshading/js/modernizr.custom.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>3D Boxs</h2>
				<div class="wrapper">
				<ul class="stage clearfix">

					<li class="scene" >
						<div class="movie" onclick="return true">
							<div class="poster" id="img1"></div>
							<div class="info">
								<header id="info1">
									<h1>Malévola</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">117 minutos</span>
								</header>
								<p>
									Baseado no conto da Bela Adormecida, o filme conta a história de Malévola (Angelina Jolie), a protetora do reino dos Moors.
								</p>
							</div>
						</div>
					</li>

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster" id="img2"></div>
							<div class="info">
								<header  id="info2">
									<h1>No Limite do Amanhã</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">1h53 minutos</span>
								</header>
								<p>
									Quando a Terra é tomada por alienígenas, Bill Cage (Tom Cruise), relações públicas das Forças Armadas dos Estados Unidos, é obrigado a ir para a linha de frente no dia do confronto final.
								</p>
							</div>
						</div>
					</li>

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster" id="img3"></div>
							<div class="info">
								<header   id="info3">
									<h1>Robocop</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">1h57 minutos</span>
								</header>
								<p>
									Em um futuro não muito distante, no ano de 2028, drones não tripulados e robôs são usados para garantir a segurança mundo afora, mas o combate ao crime nos Estados Unidos não pode ser realizado por eles e a empresa OmniCorp, criadora das máquinas, quer reverter esse cenário.
								</p>
							</div>
						</div>
					</li>
					
					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster" id="img4"></div>
							<div class="info">
								<header   id="info4">
									<h1>300 - A Ascensão do Império</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">1h42 minutos</span>
								</header>
								<p>
									Após a morte do pai, Xerxes (Rodrigo Santoro) dá início a uma jornada de vingança e ruma em direção à Grécia, com seu exército sendo liderado por Artemisia (Eva Green). Enquanto os 300 espartanos liderados por Leonidas tantam combater o Deus-Rei, os exércitos do resto da Grécia se unem para uma batalha com as tropas de Artemisia no mar. Themistocles (Sullivan Stapleton) é o responsável por liderar os gregos.
								</p>
							</div>
						</div>
					</li>

				</ul>
			</div>
		
		</div>
		
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		shading(dados);
	});
</script>
</html>
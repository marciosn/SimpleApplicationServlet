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
									<h1>Mal�vola</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">117 minutos</span>
								</header>
								<p>
									Baseado no conto da Bela Adormecida, o filme conta a hist�ria de Mal�vola (Angelina Jolie), a protetora do reino dos Moors.
								</p>
							</div>
						</div>
					</li>

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster" id="img2"></div>
							<div class="info">
								<header  id="info2">
									<h1>No Limite do Amanh�</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">1h53 minutos</span>
								</header>
								<p>
									Quando a Terra � tomada por alien�genas, Bill Cage (Tom Cruise), rela��es p�blicas das For�as Armadas dos Estados Unidos, � obrigado a ir para a linha de frente no dia do confronto final.
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
									Em um futuro n�o muito distante, no ano de 2028, drones n�o tripulados e rob�s s�o usados para garantir a seguran�a mundo afora, mas o combate ao crime nos Estados Unidos n�o pode ser realizado por eles e a empresa OmniCorp, criadora das m�quinas, quer reverter esse cen�rio.
								</p>
							</div>
						</div>
					</li>
					
					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster" id="img4"></div>
							<div class="info">
								<header   id="info4">
									<h1>300 - A Ascens�o do Imp�rio</h1>
									<span class="year">2014</span>
									<span class="rating">10</span>
									<span class="duration">1h42 minutos</span>
								</header>
								<p>
									Ap�s a morte do pai, Xerxes (Rodrigo Santoro) d� in�cio a uma jornada de vingan�a e ruma em dire��o � Gr�cia, com seu ex�rcito sendo liderado por Artemisia (Eva Green). Enquanto os 300 espartanos liderados por Leonidas tantam combater o Deus-Rei, os ex�rcitos do resto da Gr�cia se unem para uma batalha com as tropas de Artemisia no mar. Themistocles (Sullivan Stapleton) � o respons�vel por liderar os gregos.
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
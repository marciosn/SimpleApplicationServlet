<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animation Menus</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<!-- modifique o css style para mudar o estilo do menu -->

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/animationMenu/css/style7.css" />

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
			<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Animation Menus</h2>
				<ul class="ca-menu">
                    <li>
                        <a href="#">
                            <span class="ca-icon">B</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Exceptional Service</h2>
                                <h3 class="ca-sub">Personalized to your needs</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="ca-icon">C</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Creative Storytelling</h2>
                                <h3 class="ca-sub">Advanced use of technology</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="ca-icon">N</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Infographical Education</h2>
                                <h3 class="ca-sub">Understanding visually</h3>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="ca-icon">J</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Sophisticated Team</h2>
                                <h3 class="ca-sub">Professionals in action</h3>
                            </div>
                        </a>
                    </li>
                   <!--  <li>
                        <a href="#">
                            <span class="ca-icon">L</span>
                            <div class="ca-content">
                                <h2 class="ca-main">Unconditional Support</h2>
                                <h3 class="ca-sub">24/7 for you needs</h3>
                            </div>
                        </a>
                    </li> -->
                </ul>
                
		</div>		
		</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
</body>

</html>
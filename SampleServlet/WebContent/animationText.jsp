<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Text and Icon</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />


<link rel="stylesheet" type="text/css" href="./resources/bootstrap/animatedTextAndIcon/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/animatedTextAndIcon/css/stimenu.css" />

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/animatedTextAndIcon/js/jquery.easing.1.3.js"></script>
<script src="./resources/bootstrap/animatedTextAndIcon/js/jquery.iconmenu.js"></script>
<!-- <script src="./resources/bootstrap/animatedTextAndIcon/js/jquery-1.6.1.min.js"></script> -->

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
			<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
		
		<div class="span9">
		
		<h2>Text and Icon</h2>
				<ul id="sti-menu" class="sti-menu">
				<li data-hovercolor="#37c5e9">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Advanced Patient Care</h2>
						<h3 data-type="sText" class="sti-item">Personalized to your needs</h3>
						<span data-type="icon" class="sti-icon sti-icon-care sti-item"></span>
					</a>
				</li>
				<li data-hovercolor="#ff395e">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Alternative Medicine</h2>
						<h3 data-type="sText" class="sti-item">Holistic approaches</h3>
						<span data-type="icon" class="sti-icon sti-icon-alternative sti-item"></span>
					</a>
				</li>
				<li data-hovercolor="#57e676">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Modern Info Center</h2>
						<h3 data-type="sText" class="sti-item">Educating you</h3>
						<span data-type="icon" class="sti-icon sti-icon-info sti-item"></span>
					</a>
				</li>
				<li data-hovercolor="#d869b2">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Future Family Planning</h2>
						<h3 data-type="sText" class="sti-item">For a healthier future</h3>
						<span data-type="icon" class="sti-icon sti-icon-family sti-item"></span>
					</a>
				</li>
				<!-- <li data-hovercolor="#ffdd3f">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Advanced Technology</h2>
						<h3 data-type="sText" class="sti-item">From the latest research</h3>
						<span data-type="icon" class="sti-icon sti-icon-technology sti-item"></span>
					</a>
				</li> -->
			</ul>
		</div>		
		</div>
<script type="text/javascript">
			$(function() {
				$('#sti-menu').iconmenu();
});
</script>
</body>
<!-- <script type="text/javascript">
			$(function() {
				$('#sti-menu').iconmenu({
					animMouseenter	: {
						'mText' : {speed : 500, easing : 'easeOutExpo', delay : 200, dir : -1},
						'sText' : {speed : 500, easing : 'easeOutExpo', delay : 200, dir : -1},
						'icon'  : {speed : 700, easing : 'easeOutBounce', delay : 0, dir : 1}
					},
					animMouseleave	: {
						'mText' : {speed : 400, easing : 'easeInExpo', delay : 0, dir : -1},
						'sText' : {speed : 400, easing : 'easeInExpo', delay : 0, dir : 1},
						'icon'  : {speed : 400, easing : 'easeInExpo', delay : 0, dir : -1}
					}
				});
			});
</script> -->
</html>
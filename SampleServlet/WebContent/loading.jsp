<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html">
<meta charset="UTF-8" />
<title>Creative Loading Effects</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/loading/css/style.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/loading/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/loading/css/demo.css" />

<script type="application/javascript" src="./resources/json/dados4.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/loading/js/modernizr.custom.js"></script>
<script src="./resources/bootstrap/loading/js/classie.js"></script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
		<div class="la-anim-1"></div>
		<div class="la-anim-2"></div>
		<div class="la-anim-3"></div>
		<div class="la-anim-4"></div>
		<div class="la-anim-5"></div>
		<div class="la-anim-6">
			<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="500" height="500" viewbox="0 0 500 500">
			  <path id="la-anim-6-border" transform="translate(250, 250)"/>
			  <path id="la-anim-6-loader" transform="translate(250, 250) scale(0.9)"/>
			</svg>
		</div>
		<div class="la-anim-7"></div>
		<div class="la-anim-8"><div></div><div></div></div>
		<div class="la-anim-9"><div></div><div></div><div></div><div></div></div>
		<div class="la-anim-10"></div>
		<div class="la-anim-11"></div>
		<div class="la-anim-13"></div>
	
	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2 class="la-anim-12" data-content="Creative Loading Effects">Creative Loading Effects</h2>
				<div class="main">
				<div id="la-buttons" class="column">
					<button data-anim="la-anim-1">YouTube</button>
					<button data-anim="la-anim-2">Fill from left</button>
					<button data-anim="la-anim-3">Fill from down</button>
					<button data-anim="la-anim-4">Expanding box</button>
					<button data-anim="la-anim-5">3D Bar Bottom</button>
					<button data-anim="la-anim-6">Pie Timer</button>
					<button data-anim="la-anim-7">Centered Expanding Line</button>
					<button data-anim="la-anim-8">Fill Sides</button>
					<button data-anim="la-anim-9">Surrounding Borders</button>
					<button data-anim="la-anim-10">Corner indicator</button>
					<button data-anim="la-anim-11">Big Counter</button>
					<button data-anim="la-anim-12">Filling Title</button>
					<button data-anim="la-anim-13">Flat Top Bar</button>
				</div>
			</div>
							
		</div>
		</div>
<script>
			var loader = document.getElementById('la-anim-6-loader')
				, border = document.getElementById('la-anim-6-border')
				, alpha = 0
				, pi = Math.PI
				, t = 15
				
				, tdraw;

			function PieDraw() {
				alpha++;
				alpha %= 360;
				var r = ( alpha * pi / 180 )
				, x = Math.sin( r ) * 250
				, y = Math.cos( r ) * - 250
				, mid = ( alpha > 180 ) ? 1 : 0
				, anim = 'M 0 0 v -250 A 250 250 1 ' 
				       + mid + ' 1 ' 
				       +  x  + ' ' 
				       +  y  + ' z';

				loader.setAttribute( 'd', anim );
				border.setAttribute( 'd', anim );
				if( alpha != 0 )
				tdraw = setTimeout(PieDraw, t); // Redraw
			}

			function PieReset() {
				clearTimeout(tdraw);
				var anim = 'M 0 0 v -250 A 250 250 1 0 1 0 -250 z';
				loader.setAttribute( 'd', anim );
				border.setAttribute( 'd', anim );
			}

			var inProgress = false;

			Array.prototype.slice.call( document.querySelectorAll( '#la-buttons > button' ) ).forEach( function( el, i ) {
				var anim = el.getAttribute( 'data-anim' ),
					animEl = document.querySelector( '.' + anim );

				el.addEventListener( 'click', function() {
					if( inProgress ) return false;
					inProgress = true;
					classie.add( animEl, 'la-animate' );

					if( anim === 'la-anim-6' ) {
						PieDraw();
					}

					setTimeout( function() {
						classie.remove( animEl, 'la-animate' );
						
						if( anim === 'la-anim-6' ) {
							PieReset();
						}
						
						inProgress = false;
					}, 6000 );
				} );
			} );
</script>

</body>
</html>
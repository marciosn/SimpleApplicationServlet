<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
	<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
	<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
	

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<script type="text/javascript" src="./resources/bootstrap/js/modernizr.custom.js"></script>
	<script src="./resources/jquery/jquery-1.8.2.min.js"></script>

  </head>

  <body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />

    <div class="container">

			<div id="bl-main" class="bl-main">
			
			<!--=========== ABOUT SECTION ===========-->
				<section>
					<div class="bl-box">
						<h2 >The Walking Dead</h2> <!-- class="bl-icon bl-icon-about" -->
					</div><!-- /bl-box -->
					<div class="bl-content">
						<div class="row-fluid">
							<div class="span12">
							
								<h2>Titulo</h2>
								
								<div class="row-fluid">
									
									<div class="span4"></div>
									<div class="span12">
										<br>
										<br>
									</div>
									<div class="span12">
										<div class="row about-us">
											conteudo  
										</div><!-- /row-about-us -->  
									</div><!-- /span12 -->
								</div><!-- /row -->
							</div><!-- /span12 -->
						</div><!-- /row-fluid -->
						
					</div><!-- /bl-content -->
					<span class="bl-icon bl-icon-close">
					 <img alt="close" src="./resources/bootstrap/images/close.png">
					</span>
				</section>
				
				
				
			<!--=========== PORTFOLIO SECTION ===========-->
				<section id="bl-work-section">
					<div class="bl-box">
						<h2 >Season 6</h2> <!-- class="bl-icon bl-icon-works"-->
					</div>
					<div class="bl-content">
						<h2>Some Recent Projects</h2>
						<p></p>
						<p></p>
						<p></p>
						<p></p>
						<div class="row-fluid">
							<div class="span4">
								<ul id="bl-work-items" style="list-style: none;">
									<li data-panel="panel-1"><a href="#"><img src="./resources/bootstrap/images/project1.jpg" /></a></li>
								</ul>
								<p>Project Number 1</p>							
							</div><!-- /span4 -->
							<div class="span4">
								<ul id="bl-work-items">
									<li data-panel="panel-2"><a href="#"><img src="./resources/bootstrap/images/project2.jpg" /></a></li>
								</ul>
								<p>Project Number 2</p>							
							</div><!-- /span4 -->
							<div class="span4">
								<ul id="bl-work-items">
									<li data-panel="panel-3"><a href="#"><img src="./resources/bootstrap/images/project3.jpg" /></a></li>
								</ul>
								<p>Project Number 3</p>							
							</div><!-- /span4 -->

						</div><!-- /row-fluid -->
					</div><!-- /bl-content -->
					<span class="bl-icon bl-icon-close">
					<img alt="close" src="./resources/bootstrap/images/close.png">
					</span>
				</section>
				
				
				
			<!--=========== BLOG SECTION ===========-->
				<section>
					<div class="bl-box">
						<h2>Is Coming</h2>
					</div>
					<div class="bl-content">
						<div class="row-fluid">
							<div class="span12">
								<h2>Titulo</h2>
								<article>
									conteudo
								</article>
								
								
							</div><!-- /span12 -->
						</div><!-- /row-fluid -->
					</div><!-- /bl-content -->
					<span class="bl-icon bl-icon-close">
					<img alt="close" src="./resources/bootstrap/images/close.png">
					</span>
				</section>
				
				
				
			<!--=========== CONTACT SECTION ===========-->
				<section>
					<div class="bl-box">
						<h2 >In the AMC</h2>
					</div>
					<div class="bl-content">
						<div class="row-fluid">
							<div class="span12">
								<h2>Titulo</h2>
								<br>
								<p></p>								
							
							<p>
								<p>your@email.com | +34 600669933 | Madrid, Spain</p>
							</p>
							
							<p>
								<a href="#" class="social-network facebook"></a>
								<a href="#" class="social-network pinterest"></a>
								<a href="#" class="social-network flickr"></a>
								<a href="#" class="social-network dribbble"></a>
								<a href="#" class="social-network twitter"></a>
								<a href="#" class="social-network apple"></a>
								<a href="#" class="social-network skype"></a>
								<a href="#" class="social-network tumblr"></a>
								<a href="#" class="social-network vimeo"></a>
							</p>
							
						</div>
					</div>
					<span class="bl-icon bl-icon-close">
					<img alt="close" src="./resources/bootstrap/images/close.png">
					</span>
				</section>
				
				
				
				
			<!--=========== PROJECTS DESCRIPTIONS SECTION ===========-->
				<div class="bl-panel-items" id="bl-panel-work-items">
					<div data-panel="panel-1">
						<div class="row-fluid">
							<div class="span8 offset2 tweak">
								<img src="./resources/bootstrap/images/project1.jpg" />
								<br>
								<br>
								<h4>Project Overview</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
								<h4>Project Details</h4>
								<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
							</div><!-- /span8 -->
						</div><!-- /row-fluid -->	
					</div><!-- /panel1 -->
					
					<div data-panel="panel-2">
						<div class="row-fluid">
							<div class="span8 offset2 tweak">
							<img src="./resources/bootstrap/images/project2.jpg" />
							<br>
							<br>
							<h4>Project Overview</h4>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
							<h4>Project Details</h4>
							<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
							</div><!-- /span8 -->
						</div><!-- /row-fluid -->	
					</div><!-- /panel2 -->
					
					<div data-panel="panel-3">
						<div class="row-fluid">
							<div class="span8 offset2 tweak">
							<img src="./resources/bootstrap/images/project3.jpg" />
							<br>
							<br>
							<h4>Project Overview</h4>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
							<h4>Project Details</h4>
							<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
							</div><!-- /span8 -->
						</div><!-- /row-fluid -->	
					</div><!-- /panel3 -->
					
					<nav>
						<span class="bl-next-work">&gt; Next Project</span>
						<span class="bl-icon2 bl-icon-close">
							<img alt="close" src="./resources/bootstrap/images/close.png">
						</span>
					</nav>
				</div><!-- /panel-items -->
				
				
			</div><!-- /bl-main -->

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

		<script type="text/javascript" src="./resources/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="./resources/bootstrap/js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" src="./resources/bootstrap/js/boxlayout.js"></script>
		<script>
			$(function() {
				Boxlayout.init();
			});
		</script>
  </body>
</html>
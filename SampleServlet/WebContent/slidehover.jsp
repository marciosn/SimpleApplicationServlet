<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hover Slide</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/slidehover/css/style.css" />

<script src="./resources/bootstrap/slidehover/js/Cantarell.font.js"></script>
<script src="./resources/bootstrap/slidehover/js/cufon-yui.js"></script>
<script src="./resources/bootstrap/slidehover/js/jquery.easing.1.3.js"></script>

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script type="application/javascript" src="./resources/json/dados.json"></script>
<script src="./resources/bootstrap/js/meujq.js"></script>

<script type="text/javascript">
			Cufon.replace('a,h3');
			Cufon.replace('h1', {
				textShadow: '0px 1px #fff'
			});
			Cufon.replace('h2', {
				textShadow: '0px 1px #fff'
			});
		</script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />	
		<div class="span9">
		
		<h2>Hover Slide</h2>
			
			<div id="hs_container" class="hs_container">
				<div class="hs_area hs_area1">
					<img class="hs_visible" src="resources/bootstrap/slidehover/images/area1/1.jpg" alt="" id="img1"/>
					<img src="resources/bootstrap/slidehover/images/area1/2.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area1/3.jpg" alt=""/>
				</div>
				<div class="hs_area hs_area2">
					<img class="hs_visible" src="resources/bootstrap/slidehover/images/area2/1.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area2/2.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area2/3.jpg" alt=""/>
				</div>
				<div class="hs_area hs_area3">
					<img class="hs_visible" src="resources/bootstrap/slidehover/images/area3/1.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area3/2.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area3/3.jpg" alt=""/>
				</div>
				<div class="hs_area hs_area4">
					<img class="hs_visible" src="resources/bootstrap/slidehover/images/area4/1.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area4/2.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area4/3.jpg" alt=""/>
				</div>
				<div class="hs_area hs_area5">
					<img class="hs_visible" src="resources/bootstrap/slidehover/images/area5/1.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area5/2.jpg" alt=""/>
					<img src="resources/bootstrap/slidehover/images/area5/3.jpg" alt=""/>
				</div>
			</div>
			
		</div>
		</div>

</body>
<script type="text/javascript">
	$( document ).ready(function() {
		//slidehover(dados);
	});

</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<script type="text/javascript">
            $(function() {
				//custom animations to use
				//in the transitions
				var animations		= ['right','left','top','bottom','rightFade','leftFade','topFade','bottomFade'];
				var total_anim		= animations.length;
				//just change this to one of your choice
				var easeType		= 'swing';
				//the speed of each transition
				var animSpeed		= 450;
				//caching
				var $hs_container	= $('#hs_container');
				var $hs_areas		= $hs_container.find('.hs_area');
				
				//first preload all images
                $hs_images          = $hs_container.find('img');
                var total_images    = $hs_images.length;
                var cnt             = 0;
                $hs_images.each(function(){
                    var $this = $(this);
                    $('<img/>').load(function(){
                        ++cnt;
                        if(cnt == total_images){
							$hs_areas.each(function(){
								var $area 		= $(this);
								//when the mouse enters the area we animate the current
								//image (random animation from array animations),
								//so that the next one gets visible.
								//"over" is a flag indicating if we can animate 
								//an area or not (we don't want 2 animations 
								//at the same time for each area)
								$area.data('over',true).bind('mouseenter',function(){
									if($area.data('over')){
										$area.data('over',false);
										//how many images in this area?
										var total		= $area.children().length;
										//visible image
										var $current 	= $area.find('img:visible');
										//index of visible image
										var idx_current = $current.index();
										//the next image that's going to be displayed.
										//either the next one, or the first one if the current is the last
										var $next		= (idx_current == total-1) ? $area.children(':first') : $current.next();
										//show next one (not yet visible)
										$next.show();
										//get a random animation
										var anim		= animations[Math.floor(Math.random()*total_anim)];
										switch(anim){
											//current slides out from the right
											case 'right':
												$current.animate({
													'left':$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the left
											case 'left':
												$current.animate({
													'left':-$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the top	
											case 'top':
												$current.animate({
													'top':-$current.height()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the bottom	
											case 'bottom':
												$current.animate({
													'top':$current.height()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the right	and fades out
											case 'rightFade':
												$current.animate({
													'left':$current.width()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the left and fades out	
											case 'leftFade':
												$current.animate({
													'left':-$current.width()+'px','opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the top and fades out	
											case 'topFade':
												$current.animate({
													'top':-$current.height()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the bottom and fades out	
											case 'bottomFade':
												$current.animate({
													'top':$current.height()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;		
											default:
												$current.animate({
													'left':-$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
										}	
									}
								});
							});
							
							//when clicking the hs_container all areas get slided
							//(just for fun...you would probably want to enter the site
							//or something similar)
							$hs_container.bind('click',function(){
								$hs_areas.trigger('mouseenter');
							});
						}
					}).attr('src',$this.attr('src'));
				});			
				

            });
        </script>
</html>
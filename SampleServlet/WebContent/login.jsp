<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login 2</title>


<link rel="stylesheet" type="text/css" href="./resources/login/css/animation.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/authenty.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/orange.css" />
<link rel="stylesheet" type="text/css" href="./resources/login/css/preview.css" />

<script src="./resources/login/js/authenty.js"></script>
<script src="./resources/login/js/bootstrap.min.js"></script>
<script src="./resources/login/js/init.js"></script>
<script src="./resources/login/js/jquery.address-1.6.min.js"></script>
<script src="./resources/login/js/jquery.icheck.min.js"></script>
<script src="./resources/login/js/jquery.malihu.PageScroll2id.js"></script>
<script src="./resources/login/js/jquery.min.js"></script>
<script src="./resources/login/js/jquery-ui.min.js"></script>
<script src="./resources/login/js/scrollTo.min.js"></script>
<script src="./resources/login/js/waypoints.min.js"></script>

</head>
<body>

	<section id="authenty_preview">
	<form class="form-signin" action="login" method="post">
	
			<section id="signin_main" class="authenty signin-main">
				<div class="section-content">
				  <div class="wrap">
					  <div class="container">	  
							<div class="form-wrap">
								<div class="row">
								  <div class="title" data-animation="fadeInDown" data-animation-delay=".8s">
									  <h1>Autenticação</h1>
									  <h5>Authentication made beautiful</h5>
								  </div>
									<div id="form_1" data-animation="bounceIn">
										<div class="form-header">
										  <i class="fa fa-user"></i>
									  </div>
									  <div class="form-main">
										  
											  <div class="form-group">
									  			<input type="text" id="un_1" class="form-control" placeholder="Username" required="required" name="username">
													<input type="password" id="pw_1" class="form-control" placeholder="Password" required="required" name="password">
											  </div>
										    <button id="signIn_1" type="submit" class="btn btn-block signin">Sign In</button>
										  	
									  </div>
										<div class="form-footer">
											<div class="row">
												<div class="col-xs-7">
													<i class="fa fa-unlock-alt"></i>
													<a href="#password_recovery" id="forgot_from_1">Forgot password?</a>
												</div>
												<div class="col-xs-5">
													<i class="fa fa-check"></i>
													<a href="#signup_window" id="signup_from_1">Sign Up</a>
												</div>
											</div>
										</div>		
								  </div>
								</div>
							</div>
					  </div>
				  </div>
				</div>
				
			</section>
		</form>
	</section>

</body>

<script>
			(function($) {
				
				// get full window size
				$(window).on('load resize', function(){
				    var w = $(window).width();
				    var h = $(window).height();

				    $('section').height(h);
				});		

				// scrollTo plugin
				$('#signup_from_1').scrollTo({ easing: 'easeInOutQuint', speed: 1500 });				
				
				// set focus on input
				var firstInput = $('section').find('input[type=text], input[type=email]').filter(':visible:first');
        
				if (firstInput != null) {
            firstInput.focus();
        }
				
				$('section').waypoint(function (direction) {
					var target = $(this).find('input[type=text], input[type=email]').filter(':visible:first');
					target.focus();
				}, {
	          offset: 300
	      }).waypoint(function (direction) {
					var target = $(this).find('input[type=text], input[type=email]').filter(':visible:first');
			  	target.focus();
	      }, {
	          offset: -400
	      });
				
				
				// animation handler
				$('[data-animation-delay]').each(function () {
	          var animationDelay = $(this).data("animation-delay");
	          $(this).css({
	              "-webkit-animation-delay": animationDelay,
	              "-moz-animation-delay": animationDelay,
	              "-o-animation-delay": animationDelay,
	              "-ms-animation-delay": animationDelay,
	              "animation-delay": animationDelay
	          });
	      });
				
	      $('[data-animation]').waypoint(function (direction) {
	          if (direction == "down") {
	              $(this).addClass("animated " + $(this).data("animation"));
	          }
	      }, {
	          offset: '90%'
	      }).waypoint(function (direction) {
	          if (direction == "up") {
	              $(this).removeClass("animated " + $(this).data("animation"));
	          }
	      }, {
	          offset: '100%'
	      });
			
			})(jQuery);
		</script>
		

</html>
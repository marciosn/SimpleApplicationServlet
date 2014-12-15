<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Usuário</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.toastmessage.css" />	
	
</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<jsp:include page="./WEB-INF/templates/sideMenu.jsp" />
		<button class="menu-button" id="open-button"></button>
	<div class="container-fluid conteudo">
	
	<%-- <jsp:include page="./WEB-INF/templates/sidebar.jsp" /> --%>
	
	<div class="span7">
		<h2>
			<caption>Cadastrar Usuário</caption>
		</h2>
		<caption>
		<p>${requestScope.erro}</p>
		</caption>
		<form action="CadastraUsuario" method="post" id="inserir" class="validate">
			<input type="text" ng-model="text" class="input-block-level" placeholder="Username"	name="nome" id="username" size="30" required>
			
			<input type="email" ng-model="text" required class="input-block-level" placeholder="Email" name="email" id="mail" size="40">
			<span class="error" ng-show="inserir.input.$error.required">
			
			<input type="password" ng-model="text" class="input-block-level left"placeholder="Password" name="senha" 
			id="password" data-display="myDisplayElement1" size="40" required>
			
			<div class="left" id="myDisplayElement1"></div>
    		<div class="clear"></div>
    		<br/>
			<button class="btn btn-large btn-primary" type="submit">Cadastrar</button>
			<br/>
			<a href="javascript:showSuccessToast();">Sucess</a><br/>
			<a href="javascript:showNoticeToast();">Notice</a><br/>
			<a href="javascript:showWarningToast();">Warning</a><br/>
			<a href="javascript:showErrorToast();">Error</a>
		</form>
		
	</div>
	
	</div>
</body>

<script type="text/javascript">

    function showSuccessToast() {
        $().toastmessage('showSuccessToast', "Success Dialog which is fading away ...");
    }
    function showStickySuccessToast() {
        $().toastmessage('showToast', {
            text     : 'Success Dialog which is sticky',
            sticky   : true,
            position : 'top-right',
            type     : 'success',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });

    }
    function showNoticeToast() {
        $().toastmessage('showNoticeToast', "Notice  Dialog which is fading away ...");
    }
    function showStickyNoticeToast() {
        $().toastmessage('showToast', {
             text     : 'Notice Dialog which is sticky',
             sticky   : true,
             position : 'top-right',
             type     : 'notice',
             closeText: '',
             close    : function () {console.log("toast is closed ...");}
        });
    }
    function showWarningToast() {
        $().toastmessage('showWarningToast', "Warning Dialog which is fading away ...");
    }
    function showStickyWarningToast() {
        $().toastmessage('showToast', {
            text     : 'Warning Dialog which is sticky',
            sticky   : true,
            position : 'top-right',
            type     : 'warning',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });
    }
    function showErrorToast() {
        $().toastmessage('showErrorToast', "Error Dialog which is fading away ...");
    }
    function showStickyErrorToast() {
        $().toastmessage('showToast', {
            text     : 'Error Dialog which is sticky',
            sticky   : true,
            position : 'top-right',
            type     : 'error',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });
    }

</script>

<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/bootstrap/js/bootstrap.js"></script>
<script src="./resources/jquery/jquery-2.1.1.min.js"></script>
<script src="./resources/jquery/jquery-ui.js"></script>
<script src="./resources/jquery/jquery-ui.min.js"></script>
<script src="./resources/bootstrap/plugins/pStrength.jquery.js"></script>
<script src="./resources/bootstrap/plugins/jquery.toastmessage.js"></script>
<script src="./resources/angular/angular.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    $('#inserir').submit(function(){
        return true; //false is default
    });
    
    $('#password').pStrength({
        'changeBackground'          : false,
        'onPasswordStrengthChanged' : function(passwordStrength, strengthPercentage) {
            if ($(this).val()) {
                $.fn.pStrength('changeBackground', this, passwordStrength);
            } else {
                $.fn.pStrength('resetStyle', this);
            }
            $('#' + $(this).data('display')).html('Sua força da senha é ' + strengthPercentage + '%');
        },
        'onValidatePassword': function(strengthPercentage) {
            $('#' + $(this).data('display')).html($('#' + $(this).data('display')).html() + ' Ótimo, agora você pode continuar a registar-se!');
            
            $('#inserir').submit(function(){
                //alert("vai alterar o valor para true");
                return true;
            });
        }
    });
});
</script>

<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
	
    content = document.querySelector( "#content" ),
	openbtn = document.querySelector( "#open-button" ),
	closebtn = document.querySelector( "#close-button" ),
	
	sideMenu(content, openbtn, closebtn);
} );

</script>
</html>
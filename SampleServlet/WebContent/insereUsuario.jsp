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
	
<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/bootstrap/js/bootstrap.js"></script>
<script src="./resources/jquery/jquery-2.1.1.min.js"></script>
<script src="./resources/jquery/jquery-ui.js"></script>
<script src="./resources/jquery/jquery-ui.min.js"></script>
<script src="./resources/bootstrap/plugins/pStrength.jquery.js"></script>

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

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid form">
	
	<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
	
	<div class="span6">
		<h2>
			<caption>Cadastrar Usuário</caption>
		</h2>
		<caption>
		<p>${requestScope.erro}</p>
		</caption>
		<form action="CadastraUsuario" method="post" id="inserir" class="validate">
			<input type="text" class="input-block-level" placeholder="Username"	name="nome" id="username" size="30">
			<span data-alertid="example"></span>
			<input type="text" class="input-block-level" placeholder="Email" name="email" id="mail" size="40">
			<input type="password" class="input-block-level left"placeholder="Password" name="senha" 
			id="password" data-display="myDisplayElement1" size="40">
			<div class="left" id="myDisplayElement1"></div>
    		<div class="clear"></div>
    		<br/>
			<button class="btn btn-large btn-primary" type="submit">Cadastrar</button>
		</form>
		
	</div>
	
	</div>
</body>

</html>
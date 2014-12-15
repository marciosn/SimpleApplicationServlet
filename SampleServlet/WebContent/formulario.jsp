<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulário</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.datetimepicker.css" />
 
</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<jsp:include page="./WEB-INF/templates/sideMenu.jsp" />
		<button class="menu-button" id="open-button"></button>
	
	<div class="container-fluid conteudo">
		<%-- <jsp:include page="./WEB-INF/templates/sidebar.jsp" /> --%>
		
		<form action="Formulario" method="post" id="formulario" class="validate">
		
		<div class="span5">
		<h2>
			<caption>Formulário</caption>
		</h2>
		<p>${requestScope.erro}</p>
		<p>${requestScope.sucesso}</p>
		
		<!-- <form action="CadastraUsuario" method="get" id="inserir"> -->
				<input type="text" required class="input-block-level required" placeholder="Nome..."	name="nome" id="nome" size="40">
				<input type="email" ng-model="text" required class="input-block-level required" placeholder="Email..." name="email" id="email" size="40">			
				<input type="text" required class="input-block-level required" placeholder="Data de Nascimento..." name="data" id="datepicker"
				  title="Clique para adicionar a data de Nascimento">
				<input type="text" required class="input-block-level required" placeholder="Nome da Mãe..."	name="nomeMae" id="nomeMae" size="40">
				<input type="text" required class="input-block-level required" placeholder="Nome da Pai..."	name="nomePai" id="nomePai" size="40">
				<input type="number" required class="input-block-level required" placeholder="CPF..."	name="cpf" id="cpf" size="11">
				

		<!-- </form> -->
		
		<button class="btn btn-large btn-inverse" type="submit">Cadastrar</button>
		</div>
		
		<div class="span5">
		<fieldset>
					<select name="estado" id="estado">
						<option selected="selected" >Selecione</option>
      						<option>Acre (AC)</option>
      						<option>Alagoas (AL)</option>
				      		<option>Amapá (AP)</option>
				      		<option>Amazonas (AM)</option>
				      		<option>Bahia (BA)</option>
				      		<option>Ceará (CE)</option>
				      		<option>Distrito Federal (DF)</option>
				      		<option>Espirito Santo (ES)</option>
				      		<option>Goiás (GO)</option>
				      		<option>Maranhão (MA)</option>
				      		<option>Mato Grosso (MT)</option>
				      		<option>Mato Grosso Do Sul (MS)</option>
      						<option>Minas Gerais (MG)</option>
				      		<option>Pará (PA)</option>
				      		<option>Paraíba (PB)</option>
				      		<option>Pernambuco (PE)</option>
				      		<option>Piauí (PI)</option>
				      		<option>Rio de Janeiro (RJ)</option>
				      		<option>Rio Grande do Norte (RN)</option>
				      		<option>Rondônio (RO)</option>
				      		<option>Roraima (RR)</option>
				      		<option>Santa Catarina (SC)</option>
				      		<option>São Paulo (SP)</option>
				      		<option>Sergipe (SE)</option>
				      		<option>Tocatins (TO)</option>
    				</select>
    				
    				<br />
    				<br />
    				
    				<input type="text" required class="input-block-level required" placeholder="Endereço..."	name="endereco" id="endereco" size="40">
					<input type="text" required class="input-block-level required" placeholder="Bairro..."	name="bairro" id="bairro" size="40">
					<input type="text" required class="input-block-level required" placeholder="Complemento..."	name="complemento" id="complemento" size="40">
    				<input type="number" required class="input-block-level required" placeholder="CEP..."	name="cep" id="cep" size="20">
    				
    			</fieldset>
    			</div>
		
		</form>		
	</div>


</body>
<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/js/validaFormulario.js"></script>
<script src="./resources/bootstrap/js/jquery-ui.js"></script>

<script src="./resources/angular/angular.js"></script>

 <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>

<script>
  $(function() {
    $( "#estado" ).selectmenu();
  });
</script>

<script>
  $(function() {
    $( document ).tooltip();
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
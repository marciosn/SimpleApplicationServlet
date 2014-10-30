<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Usuário</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.min.css" />

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />

<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/bootstrap/js/bootstrap.js"></script>
<script src="./resources/jquery/jquery-2.1.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	  $("#lista").click(function(){
	  $.ajax({
	   type : "POST",
	   url : "CadastraUsuario",
	   success: function(response){
	    $("#id").val(response.id);
	    $("#nome").val(response.nome);
	    $("#senha").val(response.senha);
	    $("#email").val(response.email);
	    },
	    
	   error : function(){
		   $().toastmessage('Falhouuuuuuuuuu');
	    }
	   
	   });
	  });
	 });
</script>
</head>
<body>
<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<div class="container span4">
	<h2><caption>Cadastrar Usuário</caption></h2>
	<form action="CadastraUsuario" method="get">
		<input type="text" class="input-block-level" placeholder="Username" name="nome">
		<input type="text" class="input-block-level" placeholder="Email" name="email">
        <input type="password" class="input-block-level" placeholder="Password" name="senha">
        <button class="btn btn-large btn-primary" type="submit">Cadastrar</button>
	</form>
	
	<form action="CadastraUsuario" method="post"><button class="btn btn-large btn-primary" type="submit">Testar JSON</button></form>
	
	</div>
	
	<div class="span6">
	<h2><caption>Tabela de Usuários</caption></h2>
	<table class="table table-bordered">
  		<thead>
    		<tr>
      		<th>id</th>
      		<th>Nome</th>
      		<th>Email</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr>
      		<td>...</td>
      		<td>...</td>
      		<td>...</td>
    		</tr>
  		</tbody>
	</table>
	
	Usuario ID: <input type="text" id="id"></input><br/>
	Usuario NOME: <input type="text" id="nome"></input><br/>
	Usuario SENHA: <input type="text" id="senha"></input><br/>
	Usuario EMAIL: <input type="text" id="email"></input><br/>
	
	<input type="button" id="lista" value="GET VALUE"></input>
	
	</div>
	
</body>
</html>
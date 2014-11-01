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
<script src="./resources/jquery/jput.min.js"></script>


<!-- <script type="text/javascript">
$(document).ready(function(){
		$.ajax({
			url:'CadastraUsuario',
			type:'POST',
			dataType:'json',
			success: function(data) {
				/* $("#tbody").jPut({
				    jsonData:data,
				    //ajax_url:"youfile.json",  if you want to call from a json file
				    name:"tbody_template",
				}); */

				});
				
			}
				   
		});  	
		
	});
</script> -->

<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			url : 'CadastraUsuario',
			type : 'post',
			dataType : 'json',
			success : function(data) {
				$("#tbody").jPut({
					jsonData : data,
					name : "tbody_template",
				});
			}
		});
	});
</script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	<div class="containerMarcio span5 form">
		<h2>
			<caption>Cadastrar Usuário</caption>
		</h2>
		<form action="CadastraUsuario" method="get" id="inserir">
			<input type="text" class="input-block-level" placeholder="Username"
				name="nome" id="username"> <input type="text"
				class="input-block-level" placeholder="Email" name="email" id="mail">
			<input type="password" class="input-block-level"
				placeholder="Password" name="senha" id="password">
			<button class="btn btn-large btn-primary" type="submit" id="submit">Cadastrar</button>
		</form>

		<script type="text/javascript">
			var form = $('#inserir');
			form.submit(function() {

				$.ajax({
					type : form.attr('method'),
					url : form.attr('action'),
					data : form.serialize(),
					success : function(data) {
					}
				});
			});
		</script>
		
		<h2>
			<caption>Tabela de Usuários</caption>
		</h2>

		<div jput="tbody_template">
			<tr>
				<td>{{nome}}</td>
			</tr>
		</div>

		<table>
			<tbody id="tbody">
			</tbody>
		</table>

	</div>

	<div class="">
		

		<!-- <table class="table table-bordered" id="my-ajax-table">
  		<thead>
    		<tr>
      		<th>{{id}}</th>
      		<th>{{nome}}</th>
    		</tr>
  		</thead>
  		<tbody>
    		<tr>
      		<td>...</td>
      		<td>...</td>
      		<td>...</td>
    		</tr>
  		</tbody>
	</table> -->
	</div>

</body>
</html>
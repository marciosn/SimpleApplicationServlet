<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar</title>

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.dataTables_themeroller.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.dataTables.min.css" />

<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
<script src="./resources/bootstrap/js/bootstrap.js"></script>
<script src="./resources/jquery/jquery-2.1.1.min.js"></script>
<script src="./resources/jquery/jquery-ui.js"></script>
<script src="./resources/jquery/jquery-ui.min.js"></script>
<script src="./resources/jquery/jput.min.js"></script>
<script src="./resources/bootstrap/plugins/pStrength.jquery.js"></script>
<script src="./resources/bootstrap/plugins/jquery.dataTables.js"></script>
<script src="./resources/bootstrap/plugins/jquery.dataTables.min.js"></script>

<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
    $('#usuarios').dataTable( {
    	 "processing": true,
        "ajax": {
            "url": "ListarUsuarios",
           "type" : "post",
            "dataSrc": ""
        },
        "columns": [
            { "data": "id" },
            { "data": "nome" },
            { "data": "email" },
            { "data": "senha" }
        ]
    } );
} );

</script>

</head>
<body>
	<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />
	
	<div class="container-fluid form">
	
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
	
	<div class="span9">
	
	<!-- <h2>
		<caption>Tabela de Usuários</caption>
	</h2> -->
		<table id="usuarios" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
            	<th>id</th>
                <th>nome</th>
                <th>email</th>
                <th>senha</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>id</th>
                <th>nome</th>
                <th>email</th>
                <th>senha</th>
            </tr>
        </tfoot>
    </table>
	
	</div>
	
	</div>
</body>
</html>
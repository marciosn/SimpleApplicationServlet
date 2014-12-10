<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/uploadfile.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.fileupload.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/jquery.fileupload-ui.css" />

<script src="./resources/bootstrap/js/jquery-1.10.2.js"></script>
<script src="./resources/bootstrap/plugins/jquery.uploadfile.js"></script>
<script src="./resources/bootstrap/plugins/jquery.uploadfile.min.js"></script>
<script src="./resources/angular/angular.js"></script>

</head>
<body>
<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />

<div class="container-fluid form">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
			
		<div class="span3">
		<h2>
			<caption>Upload de imagens</caption>
		</h2>
		
		<!-- <div id="fileuploader">Upload</div> -->
		
		<div id="fileuploader2">
		<div>Upload</div>
		
                <form action="ControladorImagens" method="post"  enctype="multipart/form-data">
                <input type="file" name="myFile"/><br/>
                <input type="submit" value="Upload it"/>
                </form>
         </div>
         
         <p>${requestScope.erro}</p>
         <h2>Exibir imagem</h2>
         
			<form action="ControladorImagens" method="get"  enctype="multipart/form-data">
				<!-- <input type="text" class="input-block-level required" placeholder="id da imagem.." name="imagem" id="imagem"> -->
				<input type="number" ng-model="id.imagem" class="input-block-level" placeholder="id da imagem.." name="imagem" id="imagem">
                <button class="btn btn-large btn-inverse" type="submit" onclick="getImage()">Buscar</button>
            </form>
            
            Path : ${requestScope.img}
            
            
            
            <img src="http://i.imgbox.com/wyfcXAVY.jpg" id="img"/>
            
		</div>
		
		<div class="span3">
		
   		</div>
				
	</div>

</body>

<script>
$(document).ready(function(){
	
	$("#fileuploader2").uploadFile({
	url:"ControladorImagens",
	allowedTypes:"png,gif,jpg,jpeg",
	fileName:"myfile"
	});
});
</script>

<script>
function getImage(){
	$.ajax({
        type: 'GET',
        url: 'ControladorImagens',
        data: dataJson,
        contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert(data);
        }, 
        error: function () {
            alert('deu erro');
        }
    });	
}
</script>


</html>
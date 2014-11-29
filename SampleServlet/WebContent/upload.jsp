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
<!-- <script src="./resources/bootstrap/plugins/jquery.fileupload-image.js"></script>
<script src="./resources/bootstrap/plugins/jquery.fileupload.js"></script>
<script src="./resources/bootstrap/plugins/jquery.ui.widget.js"></script>
<script src="./resources/bootstrap/plugins/jquery.postmessage-transport.js"></script>
<script src="./resources/bootstrap/plugins/jquery.fileupload-process.js"></script>
<script src="./resources/bootstrap/plugins/load-image.all.min.js"></script> -->
<script src="./resources/bootstrap/plugins/jquery.uploadfile.js"></script>
<script src="./resources/bootstrap/plugins/jquery.uploadfile.min.js"></script>

</head>
<body>
<jsp:include page="./WEB-INF/templates/barra_menu.jsp" />

<div class="container-fluid form">
		<jsp:include page="./WEB-INF/templates/sidebar.jsp" />
			
		<div class="span6">
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
		
<script>
$(document).ready(function()
{
	$("#fileuploader2").uploadFile({
	url:"ControladorImagens",
	allowedTypes:"png,gif,jpg,jpeg",
	fileName:"myfile"
	});
});
</script>
		
		<!-- <span class="btn btn-success fileinput-button">
	       <i class="glyphicon glyphicon-plus"></i>
        <span>Add files...</span>
        <input id="fileupload" type="file" name="files[]" multiple>
	    </span>
	    
	    <button type="submit" class="btn btn-primary start">
           <i class="icon-upload icon-white"></i>
               <span>Start upload</span>
                </button>
                <button type="reset" class="btn btn-warning cancel">
                    <i class="icon-remove-circle icon-white"></i>
                    <span>Cancel upload</span>
                </button>
        	       <button type="button" class="btn btn-danger delete">
                  <i class="icon-trash icon-white"></i>
                  <span>Delete</span>
               </button>
	    <br>
	    <br>
	    
    <div id="progress" class="progress">
        <div class="progress-bar progress-bar-success"></div>
    </div>
    
    <div id="files" class="files"></div>
    <br> -->

		</div>
		
		<div class="span4">
   		</div>
				
	</div>

</body>
</html>
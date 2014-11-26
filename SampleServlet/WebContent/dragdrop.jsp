<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DragDrop</title>

<!-- <link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/component.css" />
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/mycss.css" /> -->

<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/dragdrop.css" /> 

</head>
<body>
	<div class="drag"></div>
	
        <div id="drop">
            <div class="a"></div>
            <div class="b"></div>
            <div class="c"></div>
            <div class="d"></div>
        </div>
        
        <div id="drop2">
            <div class="e"></div>
            <div class="f"></div>
            <div class="g"></div>
            <div class="h"></div>
        </div>

        <!-- <script src='http://code.jquery.com/jquery-1.9.1.min.js'></script> -->
        <script src="./resources/bootstrap/js/jquery-1.9.1.min.js"></script>
		<script src="./resources/bootstrap/plugins/jquery.drop.js"></script>
		<script src="./resources/bootstrap/plugins/jquery.drag.js"></script>
        <script>
            $(function() {
                $(".drag").drag();
                $("#drop").find('div').each(function() {
                    var elem = $(this);
                    elem.drop(function() {
                        $(".drag").animate({
                            top: elem.offset().top,
                            left: elem.offset().left
                        });
                    });
                });
            });
        </script>
        
        <script>
            $(function() {
                $(".drag").drag();
                $("#drop2").find('div').each(function() {
                    var elem = $(this);
                    elem.drop(function() {
                        $(".drag").animate({
                            top: elem.offset().top,
                            left: elem.offset().left
                        });
                    });
                });
            });
        </script>

</body>
</html>
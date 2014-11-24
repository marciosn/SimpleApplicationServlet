$(document).ready(function(){
	
	$(":text").keyup(function(){
		$("#formulario").text($(this).val())
	});
	
});
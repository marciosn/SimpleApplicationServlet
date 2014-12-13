function carregaImagens(dados){
	var wall = dados.wallpapers;
	
	var mosaic1 = wall.imagens[0];
	var mosaic2 = wall.imagens[1];
	var mosaic3 = wall.imagens[2];
	var mosaic4 = wall.imagens[3];
	var mosaic5 = wall.imagens[4];
	var mosaic6 = wall.imagens[5];
	var mosaic7 = wall.imagens[6];
	var mosaic8 = wall.imagens[7];
	var mosaic9 = wall.imagens[8];
	var mosaic10 = wall.imagens[9];
	
	$("#mosaic1").attr("src", mosaic1);
    $("#mosaic2").attr("src", mosaic2);
    $("#mosaic3").attr("src", mosaic3);
    $("#mosaic4").attr("src", mosaic4);
    $("#mosaic5").attr("src", mosaic5);
    $("#mosaic6").attr("src", mosaic6);
    $("#mosaic7").attr("src", mosaic7);
    $("#mosaic8").attr("src", mosaic8);
    $("#mosaic9").attr("src", mosaic9);
    $("#mosaic10").attr("src", mosaic10);
	
}
function hoverEfeitos(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[40];
	var img2 = wall.imagens[41];
	var img3 = wall.imagens[42];
	var img4 = wall.imagens[43];
	var img5 = wall.imagens[44];
	var img6 = wall.imagens[45];
	var img7 = wall.imagens[46];
	var img8 = wall.imagens[47];
	var img9 = wall.imagens[48];
	var img10 = wall.imagens[39];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
    $("#img10").attr("src", img10);
}

function hoverEfeitosNew(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[11];
	var img2 = wall.imagens[12];
	var img3 = wall.imagens[13];
	var img4 = wall.imagens[14];
	var img5 = wall.imagens[15];
	var img6 = wall.imagens[16];
	var img7 = wall.imagens[17];
	var img8 = wall.imagens[18];
	var img9 = wall.imagens[19];
	var img10 = wall.imagens[20];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
    $("#img10").attr("src", img10);
}

function hoverEfeitosCaption(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[21];
	var img2 = wall.imagens[22];
	var img3 = wall.imagens[23];
	var img4 = wall.imagens[24];
	var img5 = wall.imagens[25];
	var img6 = wall.imagens[31];
	var img7 = wall.imagens[27];
	var img8 = wall.imagens[28];
	var img9 = wall.imagens[29];
	var img10 = wall.imagens[30];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
    $("#img10").attr("src", img10);
}

function shading(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[4];
	var img2 = wall.imagens[5];
	var img3 = wall.imagens[6];
	var img4 = wall.imagens[7];
	
	var info1 = wall.imagens[2];
	var info2 = wall.imagens[1];
	var info3 = wall.imagens[3];
	var info4 = wall.imagens[0];
	
	$( "#img1" ).css("background-image", 'url('+img1+')');
    $( "#img2" ).css("background-image", 'url('+img2+')');
    $( "#img3" ).css("background-image", 'url('+img3+')');
    $( "#img4" ).css("background-image", 'url('+img4+')');
    
    $( "#info1" ).css("background-image", 'url('+info1+')');
    $( "#info2" ).css("background-image", 'url('+info2+')');
    $( "#info3" ).css("background-image", 'url('+info3+')');
    $( "#info4" ).css("background-image", 'url('+info4+')');
}

function circulohover(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[0];
	var img2 = wall.imagens[1];
	var img3 = wall.imagens[2];
	var img4 = wall.imagens[3];
	var img5 = wall.imagens[4];
	var img6 = wall.imagens[5];
	
	$( "#img1" ).css("background-image", 'url('+img1+')');
    $( "#img2" ).css("background-image", 'url('+img2+')');
    $( "#img3" ).css("background-image", 'url('+img3+')');
    $( "#img4" ).css("background-image", 'url('+img4+')');
    $( "#img5" ).css("background-image", 'url('+img5+')');
    $( "#img6" ).css("background-image", 'url('+img6+')');
}

function slidehover(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[0];
	var img2 = wall.imagens[7];
	var img3 = wall.imagens[3];
	var img4 = wall.imagens[4];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
    $("#img10").attr("src", img10);
    
}
function fastslider(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[0];
	var img2 = wall.imagens[1];
	var img3 = wall.imagens[2];
	var img4 = wall.imagens[3];
	var img5 = wall.imagens[4];
	var img6 = wall.imagens[5];
	var img7 = wall.imagens[6];
	var img8 = wall.imagens[7];
	var img9 = wall.imagens[8];
	var img10 = wall.imagens[9];
	var img11 = wall.imagens[10];
	var img12 = wall.imagens[11];
	var img13 = wall.imagens[12];
	var img14 = wall.imagens[13];
	var img15 = wall.imagens[14];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
    $("#img10").attr("src", img10);
    $("#img11").attr("src", img11);
    $("#img12").attr("src", img12);
    $("#img13").attr("src", img13);
    $("#img14").attr("src", img14);
    $("#img15").attr("src", img15);
    
}
function filter(dados){
	var wall = dados.wallpapers;
	
	var img1 = wall.imagens[0];
	var img2 = wall.imagens[1];
	var img3 = wall.imagens[2];
	var img4 = wall.imagens[3];
	var img5 = wall.imagens[4];
	var img6 = wall.imagens[5];
	var img7 = wall.imagens[6];
	var img8 = wall.imagens[7];
	var img9 = wall.imagens[8];
	
	$("#img1").attr("src", img1);
    $("#img2").attr("src", img2);
    $("#img3").attr("src", img3);
    $("#img4").attr("src", img4);
    $("#img5").attr("src", img5);
    $("#img6").attr("src", img6);
    $("#img7").attr("src", img7);
    $("#img8").attr("src", img8);
    $("#img9").attr("src", img9);
}

/* 	Como chamar as funções de validação:
	$("#local").change(function(){
	validar_int($(this).val(),$(this).attr('id'));
	});
*/
// FUNÇÕES DE VALIDAÇÃO DAS ENTRADAS
function validar_int(input,tag){
	str1 = '#';
	tag = str1.concat(tag);
	if (isNaN(input)) {
		$(tag).css("background-color","#F63333");
		return false;
	}
	else{
		$(tag).css("background-color","#FBFBFB")
		return true;
	}
}

function validar_string(input,tag){
	str1 = '#';
	tag = str1.concat(tag);
	if (isNaN(input)) {
		$(tag).css("background-color","#FBFBFB");
		return true;
	}
	else{
		$(tag).css("background-color","#F63333");
		return false;
	}
}

// ATUALIZAR INPUTS DE DATE E TIME.
function atualizar_tempo(){
	d = new Date();
	return d.toLocaleTimeString();
}
function atualizar_data(){
	d  = new Date();
	return d.toISOString().slice(0,10);
}

function atualizar_intervalo(intervalo){
	ah = new Date('12-12-12 '+intervalo);
	ah.setSeconds(ah.getSeconds()+5);
	return ah.toLocaleTimeString();
}

// tratamento de Input iniciar

function validar_request(input,resp){
	if (resp == true){
		input.addClass('shadow-pulse2');
		input.on('animationend', function(){    
		    input.removeClass('shadow-pulse2');
		});
	}
	else{
		input.addClass('shadow-pulse');
		input.on('animationend', function(){    
		    input.removeClass('shadow-pulse');
		});
	}
}
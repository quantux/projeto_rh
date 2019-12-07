$(window).on('load',function() {
 	x = 0;
 	setTimeout(function(){
 		$("#logo-lamon").show();
 		$("#load").fadeOut(1000*x);
    	$("#program").toggle(3000*x,function(){
    		$("#load").empty();
    	});
 	},6000*x);//Colocar flag no callback do script de verificação.
});

// ++++++++++++++++++++++++++++++++++++
var status = 'desconectado';
var Modelo = null;
var ns= null;
var firware= null;
var tela = 'vazio';
var dados = null;

function limpar_tela(){
	tela = 'vazio';
	$("#conteiner-layer").empty();
	$("#conteiner-top-layer").empty();
	$("#conteiner-top-layer").css("display","none");
	$("#conteiner-layer").css("display","none");
}

// Reseta o programa, desliga o python, apaga todas as telas atuais e add a tela de inicio
function reset(){
	if (py != null) {
		py.kill('SIGTERM');
	}
	event_desconectar();
	//$("#conteiner-top-layer").empty();
	$("#conteiner-top-layer").hide();
	add_tela('tela_conectar',500);
	//left_svg();
	$("#logo-lamon").css({"top":"92.5%"});
}

function add_tela(x_tela,time){
	if (time == undefined) {
		time = 500;
	}
	if (status == 'conectado') {
		menu_topo();
		$("#left-conectar .legend").text('Desconectar');
		$("#logo-lamon").css({"top":"99%"});
	}
	else{
		$("#left-conectar .legend").text('Conectar');
	}
	limpar_tela();
	$("#conteiner-layer").prepend(telas(x_tela));
	x_tela = null;
	$("#conteiner-layer").fadeIn(time);
	tela = $("#conteiner-layer div").attr('id');
	left_svg();
	console.log(tela);
	func_telas();
}

function add_s_tela(x_tela,time){
	if (time == undefined) {
		time = 5000;
	}
	$("#conteiner-top-layer").empty();
	$("#conteiner-top-layer").css({"height":"90.5%","top":"9.5%"});
	$("#conteiner-top-layer").fadeIn(time);
	$("#conteiner-top-layer").prepend(telas_secundarias(x_tela));
	x_tela = null;
}

function add_tela_carregamento(){
	$("#conteiner-top-layer").empty();
	$("#conteiner-top-layer").css({"height":"100%","top":"0"});
	$("#conteiner-top-layer").prepend(tela_de_carregamento());
	$("#conteiner-top-layer").show();
	$("#logo-lamon").css({"top":"99%"});
}

function remove_tela_carregamento(){
	$("#conteiner-top-layer").empty();
	$("#conteiner-top-layer").hide();
}

function func_telas(){
	switch(tela){
	  	case 'tela_espera':
	    	ct_conectar();
	    break;
	  	case 'tela-configurar':
			ct_configurar();
	    break;
	  	case 'tela-vizualizar': //Modo online
			dados_do_equipamento();
			//unidades();
			//on_create_chart_g();
			//on_create_chart_gg();
			//on_ct_chart();
	    break;
	    case 'tela-coletar':
	    	ct_coletar_chart();
	    	dados_conclusao();
	    	dados_do_equipamento();
	    break;
  		default:
    		//console.log("######");
	}
}

// Controle dos icones svg do menu lateral
function left_svg(){
	if (status == 'conectado'){
		$("#left-conectar svg svg").show();
	}
	else if (status == 'desconectado'){
		$("#left-conectar svg svg").hide();	
	}
	// Ocultar todos os svg
	$("#left-online svg svg").hide(0);
	switch(tela){
	  	case 'tela-configurar':
			
	    break;
	  	case 'tela-vizualizar': // Modo online
			$("#left-online svg svg").show(0);
	    break;
  		default:
    	//console.log("######");
	}
}

// 	Controle das funções do menu do topo
function menu_topo(){
	nclid = $('#menu-top').children().length;
	switch(Modelo) {
		case "DP":
			func = '1';
	    break;
	    case "DPP":
	    	func = '2';
	    break;
	    case "DAP":
	    	func = '3';
	    break;
	  	case "MDH_600_300C":
	  		func = '4';
	    break;
	  	case "MDH_600_300C+":
	  		func = '5';
	    break;
	    case "MDH_3966":
	    	func = '6';
	    break;
  		default:
    		//console.log("######");
	}
	for (var i = nclid - 1; i >= 0; i--){
		visualizar = $('#menu-top').children().eq(i).attr('value');
		if (visualizar.indexOf(func) != -1){
			$('#menu-top').children().eq(i).css({"display":"inline-block"});
		}
	}
}

$(document).ready(function() {
	//add_tela('tela_conectar',1000);
	//$("#conteiner-top-layer").show();
	//add_tela_carregamento();
	/*
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("conteiner-top-layer").innerHTML =
			this.responseText;
		}
	};
	xhttp.open("GET", "./Frontend/html/tela_carregando.html", true);
	xhttp.send();
	*/
	$("#conteiner-layer").css("display","block");
	init();
	//alert(navigator.cookieEnabled)
	// Inicio...
	function init(){
	//******* Menu Lateral *******
        // Fechar o programa
		$("#menu_sair").click(function(){
			nwin.close();
		});
		//.css({"background-color":"red"});
		//onclick="document.getElementById('file_input').click();"
		$("#menu_abrir").click(function(){
			document.getElementById('file_input').click();
		});
		$('#file_input').on('change',function(){
            var filePath = $(this).val();
			$("#conteiner-layer").load("./Frontend/html/tela_extapp.html",function(){
            	console.log(filePath);
            	$('object').attr('data',filePath);
			});
        });
        $("#menu_atualizar_firm").click(function(){
			add_s_tela('tela_atualizar_firmware',100);
			atualizar();
        });
        $("#menu_atualizar_firm").click(function(){
        	add_s_tela('tela_atualizar_firmware',100);
        	atualizar();
        	//$("#conteiner-top-layer").show();
        	//$("#conteiner-top-layer").load("./Frontend/html/tela_atualizar_firmware.html")
        	//alert('foi');
        })
		// 	botão conectar menu á esquerda
		$("#left-conectar").click(function(){
			if (status == 'desconectado') {
				event_conectar(function(a){
					status = a;
					console.log(status);
					$("#left-conectar .legend").text('Desconectar')
					if(status == 'desconectado'){
						$("#left-conectar").addClass('shadow-pulse');
						$("#left-conectar").on('animationend',function(){ 
						    $("#left-conectar").removeClass('shadow-pulse');
						});
					}
				});		
			}
			else if(status == 'conectado'){
				reset();
			}
		});
		// Botão configurar equipamento
		$("#left-configurar").click(function(){
			if (tela == "tela-configurar"){
				reset();
			}
			else{
				event_simple_conectar(function(a){
					status = a;
					if(status == 'conectado'){
						add_tela('tela_configurar',1000);
					}else if(status == 'desconectado'){
						$("#left-configurar").addClass('shadow-pulse');
						$("#left-configurar").on('animationend', function(){    
						    $("#left-configurar").removeClass('shadow-pulse');
						});
					}
				});
			}
		});

		// Coletar dados do logger
		$("#left-coletar").click(function(){
			if (tela == "tela-coletar") {
				coletar_reset_charts();
				reset();
			}
			else{
				if (status == 'conectado') {
					reset();
				}
				event_coletar_conectar(function(a){
					status = a;
					if(status == 'conectado'){
						coletar_reset_charts();
						add_tela('tela_coletar',1000);
						constructor_dos_dados();
					}else if(status == 'desconectado'){
						coletar_reset_charts();
						$("#left-coletar").addClass('shadow-pulse');
						$("#left-coletar").on('animationend', function(){
						    $("#left-coletar").removeClass('shadow-pulse');
						});
					}
				});
			}
		});

		// Modo online
		$("#left-online").click(function(){
			if (tela == "tela-vizualizar") {
				reset_chart_on();
				reset();
				if (py != null) {
					py.kill('SIGTERM');
				}
			}
			else{
				event_visualizar_conectar(function(a){
					status = a;
					if(status == 'conectado'){
						reset_chart_on();
						add_tela('tela_visualizar',1000);
						event_online_unidades(function(b){
							status = b;
							if (status == 'conectado') {
								reset_chart_on();
								unidades();
								on_create_chart_g();
								on_create_chart_gg();
								on_ct_chart();
								event_modo_online(function(c){
									status = c;
									if (c == 'falha') {
										reset();
									}
								});
							}
							else{
								reset_chart_on();
								reset();
							}
						});
					}else if(status == 'desconectado'){
						reset_chart_on();
						reset();
						$("#left-online").addClass('shadow-pulse');
						$("#left-online").on('animationend', function(){    
						    $("#left-online").removeClass('shadow-pulse');
						});
						//reset();
					}
				});
			}
		});

		$("#left-stop").click(function(){
			if (tela == "tela-vizualizar") {
				py.kill('SIGTERM');
				//reset();
			}
			else{
				$("#left-stop").addClass('shadow-pulse');
				$("#left-stop").on('animationend', function(){    
				    $("#left-stop").removeClass('shadow-pulse');
				});
			}
		});
		
		// Telas secundarias
		/* Modelo
			$(" Item do menu do topo ").click(function(){
			add_tela_carregamento(); // Adiciona a tela de carregamento
			simulador_de_evento(function(a){
				add_s_tela('tela_propriedades',1000);
				});
			});
		*/
		$("#menu-top1").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_propriedades',3000);
			});
		});
		$("#menu-top2").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_estacao_pitometrica',100);
			});
		});
		$("#menu-top3").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_desvio_padrao',100);
			});
		});
		$("#menu-top4").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_pitot',100);
			});
		});
		$("#menu-top5").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_fv',100);
			});
		});
		$("#menu-top6").click(function(){
			add_tela_carregamento();
			simulador_de_evento(function(a){
				add_s_tela('tela_propriedades',100);
			});
		});
	}
});

//Simula os eventos de comunicação com o equipamento
function simulador_de_evento(status) {
	setTimeout(function(){ return status('conectado')}, 1500);
}
$(document).ready(function() {
	$(document).click(function() {
		$("#menu-toggle").animate({width: 'hide'},"slow");	
	});
	$("#left-folder").click(function(){
		$("#menu-toggle").animate({width: 'toggle'},"slow",function(){
			$("#menu-toggle").stop();
		});
		event.stopPropagation();
	});
});
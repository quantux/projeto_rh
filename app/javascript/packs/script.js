$(document).ready(function(){
  $(".iten").click(function(){
    $(this).children().eq(2).slideToggle("slow");
  });
});
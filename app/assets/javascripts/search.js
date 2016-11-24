$(document).ready(function(){
 $(".search-wrapper input").mouseenter(function(){
   $(".search-wrapper button").css("background-color", "#4aba10whi");


 });
 $(".search-wrapper input").mouseout(function(){
   $(".search-wrapper button").css("background-color", "" );
 });
});

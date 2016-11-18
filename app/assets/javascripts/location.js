
$(document).ready(function () {

   function success(position) {
    var lat  = position.coords.latitude;
    var lng = position.coords.longitude;

    var _href = $('#find-btn').attr('href');
    $("#find-btn").attr("href", _href + '?lat=' + lat + '&lng=' + lng);

  }

  navigator.geolocation.getCurrentPosition(success);

});


// function geoFindMe() {
//   // var output = document.getElementById("out");

//   // if (!navigator.geolocation){
//   //   output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
//   //   return;
//   // }

//   function success(position) {
//     var lat  = position.coords.latitude;
//     var lng = position.coords.longitude;

//     var _href = $('#find-btn').attr('href');
//     $("#find-btn").attr("href", _href + '?lat=' + lat + '&lng=' + lng);

//   }

//   navigator.geolocation.getCurrentPosition(success);
// }

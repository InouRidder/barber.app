$(document).ready(function(){

  $(".appointment-book").on('click', function(){

    var start_time = $(this).data('start-time');

    $("#appointment_availability_id option").each(function(){

      var option = $(this);
      var date = option.text();
      var availability_id = option.val();

      if (date === start_time ){
        $("#appointment_availability_id").val(availability_id);
        return false;
      }
    });

  });

});

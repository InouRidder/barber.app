var rangeSlider = function(){
  var slider = $('.range-slider'),
      range = $('.range-slider__range'),
      value = $('.range-slider__value');

  slider.each(function(){

    value.each(function(){
      var value = $(this).prev().attr('value');
      $(this).html(value);
    });

    range.on('input', function(){
      $(this).next(value).html(this.value);
    });
  });
};

rangeSlider();


$("#find-btn").on("click", function(){
  var href_original = $('#find-btn').attr("href")
  var range_distance = "&distance=" + $("#slider-value").text()
  var href_original_with_distance = href_original + range_distance

  $('#find-btn').attr("href", href_original_with_distance)
});



//= require jquery3
//= require jquery_ujs
//= require_tree .

$("search-box__button").click(function() {
  $('html,body').animate({
      scrollTop: $(".cards-container").offset().top},
      'slow');
});

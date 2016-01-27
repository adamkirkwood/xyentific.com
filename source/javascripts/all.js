//= require_tree .


$(document).scroll(function() {
  $('.navigation').toggleClass('navigation--affixed', $(this).scrollTop() > 1);
});

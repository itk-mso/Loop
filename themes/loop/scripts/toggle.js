(function($) {
  $(document).ready(function () {
    $(".js-toggle").click(function(){
      $(this).toggleClass("is-shown");
      $(".js-toggle-data").toggleClass("is-shown");
    });
    $(".js-toggle-notify").click(function(){
      $(this).toggleClass("is-shown");
      $(".js-toggle-data-notify").toggleClass("is-shown");
    });
  });
})(jQuery);
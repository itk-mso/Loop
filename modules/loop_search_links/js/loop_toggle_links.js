/**
 * @file
 * Toggle search links.
 * Would have used collapse library but it has conflict with angular.
 * https://www.drupal.org/project/drupal/issues/2395065
 */
(function ($) {
  "use strict";
  $(document).ready(function($) {
    $(".js-toggle-links").click(function () {
      $(".search-filter--links").toggleClass("open");
    })
  });
})(jQuery);

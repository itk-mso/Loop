/**
 * @file
 * Toggle search links.
 * Would have used collapse library but it has conflict with angular.
 * https://www.drupal.org/project/drupal/issues/2395065
 */
(function ($) {
  'use strict';

  $(document).ready(function($) {
    let $links = $('.search-filter--links');
    let $delegate = $('.typeahead-block--wrapper');

    $('.js-toggle-links').click(function () {
      $links.toggleClass('open');
    });

    // Attached to this outer block as the inner block is angular and throws
    // the event handler when it has been loaded.
    $delegate.click(function (e) {
      let target = $(e.target) || $(e.srcElement);
      if (target.hasClass('search-box-block--button')) {
        $links.removeClass('open');
      }
    });

    // Listen for enter in the search field.
    $delegate.keypress(function (e) {
      if (e.key === 'Enter') {
        let target = $(e.target) || $(e.srcElement);
        if (target.is('#loop-search-field')) {
          $links.removeClass('open');
        }
      }
    });

  });
})(jQuery);

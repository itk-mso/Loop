(function($) {
    // Add target="_blank" to all external links in quickbox and body field.
    $(document).ready(function() {
        $('.loop-documents--content .field-name-body a, .loop-documents--content .quickbox a').each(function(index, el) {
            if (/^https?:\/\//.test($(el).attr('href'))) {
                $(el).attr('target', '_blank');
            }
        });
    });
}(jQuery));

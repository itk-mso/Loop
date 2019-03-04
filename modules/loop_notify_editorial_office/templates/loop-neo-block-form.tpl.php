<?php
/**
 * @file
 * Document (collection) navigation template.
 *
 * Available variables
 *  - $node : The current node if any
 *  - $form : The notify form
 */
?>
<div class="loop-documents--box">
  <h2 class="loop-documents--collection-meta-title no-margin js-toggle">
    <?php print t('Contact editorial office'); ?>
  </h2>
  <div class="notify-editorial-office js-toggle-data">
    <?php print render($form) ?>
  </div>
</div>


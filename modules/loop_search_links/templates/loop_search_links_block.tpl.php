<?php

/**
 * @file
 * loop_search_links_block.tpl.php.
 *
 * Template for providing links based on subject taxonomy
 * Colors defined in theme configuration.
 *
 * Available variables:
 * - $items: An array of field values. Use render() to output them.
 */
?>
<label><?php print t('Show content from'); ?></label>
<div class="search-filters--search-box search-filter--links">
  <?php foreach ($items as $delta => $item): ?>
    <div class="search-filter--link-wrapper">
      <a style="background-color:<?php  print $item['color']; ?>" class="search-filter--link" href="<?php print $item['path']; ?>"><?php print $item['name']; ?></a>
    </div>
  <?php endforeach; ?>
</div>

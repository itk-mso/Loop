<?php

/**
 * @file
 * Loop_search_links_block.tpl.php.
 *
 * Template for providing links based on subject taxonomy
 * Colors defined in theme configuration.
 *
 * Available variables:
 * - $items: An array of field values. Use render() to output them.
 */
?>

<fieldset class="search-filter--links--wrapper">
  <div class="search-filter--links-inner">
    <legend>
      <span class="fieldset-legend js-toggle-links">
        <?php print t('Toggle search links');?>
      </span>
    </legend>
    <div class="fieldset-wrapper">
      <div class="search-filters--search-box search-filter--links no-horizontal-padding <?php if ($is_front){print 'open';}?>">
        <div><label class="search-filter--label"><?php print t('Show content from'); ?></label></div>
        <?php foreach ($items as $delta => $item): ?>
          <div class="search-filter--link-wrapper">
            <a style="background-color:<?php  print $item['color']; ?>" class="search-filter--link" href="<?php print $item['path']; ?>"><?php print $item['name']; ?></a>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</fieldset>

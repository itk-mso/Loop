<?php

/**
 * @file
 * Implementation of hook_panels_layouts().
 */

$notify_editors_block = '';

if(module_exists('loop_notify_editorial_office')) {
  $notify_editors_block = module_invoke('loop_notify_editorial_office', 'block_view', 'loop_neo_block');
}

$plugin = array(
  'title' => t('Default'),
  'category' => t('Loop custom'),
  'icon' => 'default.png',
  'theme' => 'default',
  'regions' => array(
    'alpha' => t('Alpha'),
    'beta' => t('Beta'),
    'gamma' => t('Gamma'),
  ),
  'notify_editors' => $notify_editors_block,
);

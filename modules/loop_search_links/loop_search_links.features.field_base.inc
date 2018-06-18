<?php
/**
 * @file
 * loop_search_links.features.field_base.inc
 */

/**
 * Implements hook_field_default_field_bases().
 */
function loop_search_links_field_default_field_bases() {
  $field_bases = array();
  
  // Exported field_base: 'field_color'.
  $field_bases['field_color'] = array(
    'active' => 1,
    'cardinality' => 1,
    'deleted' => 0,
    'entity_types' => array(),
    'field_name' => 'field_color',
    'indexes' => array(
      'rgb' => array(
        0 => 'rgb',
      ),
    ),
    'locked' => 0,
    'module' => 'color_field',
    'settings' => array(
      'default_colors' => '#000000,#222222,#F3F3F3,#2A398B,#F1F3FF,#EFBB00,#FFFBBC,#068711,#F3F8F3,#FFFFFF',
    ),
    'translatable' => 0,
    'type' => 'color_field_rgb',
  );

  return $field_bases;
}

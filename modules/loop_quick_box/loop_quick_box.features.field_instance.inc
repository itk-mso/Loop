<?php
/**
 * @file
 * loop_quick_box.features.field_instance.inc
 */

/**
 * Implements hook_field_default_field_instances().
 */
function loop_quick_box_field_default_field_instances() {
  $field_instances = array();

  // Exported field_instance: 'node-loop_documents_collection-field_quickbox'.
  $field_instances['node-loop_documents_collection-field_quickbox'] = array(
    'bundle' => 'loop_documents_collection',
    'default_value' => NULL,
    'deleted' => 0,
    'description' => '',
    'display' => array(
      'default' => array(
        'label' => 'hidden',
        'module' => 'text',
        'settings' => array(),
        'type' => 'text_default',
        'weight' => 2,
      ),
      'teaser' => array(
        'label' => 'above',
        'settings' => array(),
        'type' => 'hidden',
        'weight' => 0,
      ),
    ),
    'entity_type' => 'node',
    'field_name' => 'field_quickbox',
    'label' => 'Quickbox',
    'required' => 0,
    'settings' => array(
      'better_formats' => array(
        'allowed_formats' => array(
          'editor' => 0,
          'html' => 0,
          'loop_documents' => 'loop_documents',
          'mime_mail_filter' => 0,
          'plain_text' => 0,
          'simple' => 0,
        ),
        'allowed_formats_toggle' => 1,
        'default_order_toggle' => 0,
        'default_order_wrapper' => array(
          'formats' => array(
            'editor' => array(
              'weight' => 0,
            ),
            'html' => array(
              'weight' => -10,
            ),
            'loop_documents' => array(
              'weight' => 0,
            ),
            'mime_mail_filter' => array(
              'weight' => 0,
            ),
            'plain_text' => array(
              'weight' => 10,
            ),
            'simple' => array(
              'weight' => -10,
            ),
          ),
        ),
      ),
      'text_processing' => 1,
      'user_register_form' => FALSE,
    ),
    'widget' => array(
      'active' => 1,
      'module' => 'text',
      'settings' => array(
        'rows' => 5,
      ),
      'type' => 'text_textarea',
      'weight' => 1,
    ),
  );

  // Exported field_instance: 'node-loop_documents_document-field_quickbox'.
  $field_instances['node-loop_documents_document-field_quickbox'] = array(
    'bundle' => 'loop_documents_document',
    'default_value' => NULL,
    'deleted' => 0,
    'description' => '',
    'display' => array(
      'default' => array(
        'label' => 'hidden',
        'module' => 'text',
        'settings' => array(),
        'type' => 'text_default',
        'weight' => 2,
      ),
      'teaser' => array(
        'label' => 'above',
        'settings' => array(),
        'type' => 'hidden',
        'weight' => 0,
      ),
    ),
    'entity_type' => 'node',
    'field_name' => 'field_quickbox',
    'label' => 'Quickbox',
    'required' => 0,
    'settings' => array(
      'better_formats' => array(
        'allowed_formats' => array(
          'editor' => 0,
          'html' => 0,
          'loop_documents' => 'loop_documents',
          'mime_mail_filter' => 0,
          'plain_text' => 0,
          'simple' => 0,
        ),
        'allowed_formats_toggle' => 1,
        'default_order_toggle' => 0,
        'default_order_wrapper' => array(
          'formats' => array(
            'editor' => array(
              'weight' => 0,
            ),
            'html' => array(
              'weight' => -10,
            ),
            'loop_documents' => array(
              'weight' => 0,
            ),
            'mime_mail_filter' => array(
              'weight' => 0,
            ),
            'plain_text' => array(
              'weight' => 10,
            ),
            'simple' => array(
              'weight' => -10,
            ),
          ),
        ),
      ),
      'text_processing' => 1,
      'user_register_form' => FALSE,
    ),
    'widget' => array(
      'active' => 1,
      'module' => 'text',
      'settings' => array(
        'rows' => 5,
      ),
      'type' => 'text_textarea',
      'weight' => 1,
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Quickbox');

  return $field_instances;
}

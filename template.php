<?php
/**
 * @file
 * Preprocess and Process Functions.
 */

/**
 * Override or insert variables into the html template.
 */
function loop_preprocess_html(&$variables) {
}

/**
 * Override or insert variables into the page template.
 */
function loop_preprocess_page(&$variables) {
  $arg0 = arg(0);
  // Prepare system search block for page.tpl.
  if (module_exists('search_api_page')) {
    $variables['search'] = module_invoke('search_api_page', 'block_view', 'default');
  }
  else {
    $variables['search'] = module_invoke('search', 'block_view', 'form');
  }

  if ( ($arg0 == 'search') && (!isset($variables['page']['no_result'])) ) {
    // No search results, change title.
    $variables['title'] = t('Ask question');
  }

  if ($arg0 == 'user') {
    $variables['loop_user_my_content'] = module_invoke('loop_user', 'block_view', 'loop_user_my_content');
  }

  // Load LOOP primary menu.
  if (module_exists('loop_navigation')) {
    $variables['loop_primary_menu'] = module_invoke('menu', 'block_view', 'menu-loop-primary-menu');
  }

  // Check if we are using a panel page to define layout.
  $variables['no_panel'] = FALSE;
  $panel = panels_get_current_page_display();

  if(empty($panel)) {
    $variables['no_panel'] = TRUE;
  }
}


/**
 * Override or insert variables into the region template.
 */
function loop_preprocess_region(&$variables) {
}

/**
 * Override or insert variables into the node template.
 */
function loop_preprocess_node(&$variables) {
}

/**
 * Override or insert variables into the field template.
 */
function loop_preprocess_field(&$variables) {
}

/**
 * Override or insert variables into the block template.
 */
function loop_preprocess_block(&$variables) {
}

/**
 * Override or insert variables into the panel pane template.
 */
function loop_preprocess_panels_pane(&$variables) {
}

/**
 * Implements template_preprocess_search_results().
 */
function loop_apachesolr_search_page_alter(&$build, $search_page) {
  if (!isset($build['search_results']['#results'])) {
    // No hits. Send formular to template.
    module_load_include('inc', 'node', 'node.pages');
    $node = new stdClass();
    $node->type = 'post';

    // Add no search results message.
    $build['no_result'] = array(
      '#prefix' => '<div class="loop-no-search-results">',
      '#suffix' => '</div>',
      '#markup' => t('No search results found!'),
    );

    // Add the post.
    $node->field_description['und'][0]['value'] = arg(2);
    $form = drupal_get_form('node_form', $node);
    $build['form'] = $form;

    // Remove suggestions and other related information.
    unset($build['search_form']);
    unset($build['suggestions']);
    unset($build['search_results']);
  }
}

// Main menu
function loop_menu_tree__menu_block__1($variables) {
  return $variables['tree'];
}

// Secondary menu
function loop_menu_tree__menu_block__2($variables) {
  return $variables['tree'];
}

/**
 * Implements theme_menu_link().
 */
function loop_menu_link($variables) {
  $element = $variables['element'];

  // Dropdown menu.
  if ($element['#theme'][0] == 'menu_link__menu_block__1') {
    return _loop_menu_styling($variables, 'nav-dropdown--link', 'nav-dropdown--header', 'nav-dropdown--item');
  }

  // Main menu.
  if ($element['#theme'][0]  == 'menu_link__menu_block__2') {
    return _loop_menu_styling($variables, 'nav--link', FALSE, FALSE, 'nav--icon', 'nav--text');
  }

  // Mobile menu.
  if ($element['#theme'][0] == 'menu_link__menu_block__3') {
    return _loop_menu_styling($variables, 'nav-mobile--link', FALSE, FALSE, FALSE, 'nav-mobile--text');
  }
}

/**
 * Helper function for menu blocks
 */
function _loop_menu_styling($variables, $class, $nolink_class = FALSE, $below_class = FALSE, $icon = FALSE, $span_class = FALSE) {
  // Path to theme variable.
  $path_to_theme = '/' . drupal_get_path('theme', 'loop');

  $element = $variables['element'];

  $sub_menu = '';

  // Check if <nolink> is present (used for parent menu items).
  if ($element['#href'] == '<nolink>') {
    // Add header class to parent item.
    $element['#localized_options']['attributes']['class'][] = $nolink_class;

    if (isset($element['#below'])) {
      // Add a wrapper class.
      if ($below_class) {
        $sub_menu = '<div class="' . $below_class . '">' . drupal_render($element['#below']) . '</div>';
      }
      else {
        $sub_menu = drupal_render($element['#below']);
      }
    }
  }
  else {
    // Add default class to a tag.
    $element['#localized_options']['attributes']['class'][] = $class;
  }

  // Make sure text string is treated as html by l function.
  $element['#localized_options']['html'] = true;

  // Add an icon.
  $icon_output = '';

  if (isset($icon) && isset($element['#localized_options']['attributes']['rel'])) {
    $icon_output = '<img src="'. $path_to_theme. '/images/' . $element['#localized_options']['attributes']['rel'] . '.png ' . '" class="' . $icon . '">';
  }

  // Add a span.
  if ($span_class) {
    $output = l($icon_output . '<span class="' . $span_class . '">'. $element['#title'] . '</span>', $element['#href'], $element['#localized_options']);
  }
  else {
    $output = l($element['#title'], $element['#href'], $element['#localized_options']);
  }

  return $output . $sub_menu . "\n";
}

/**
 * Implements theme_menu_local_task().
 */
function loop_menu_local_task($variables) {
  $link = $variables['element']['#link'];
  $list_class = 'block-module--user-links-item';

  if ($link['page_callback'] == 'page_manager_user_view_page') {
    $link['title'] = t('My account');
  }

  if ($link['page_callback'] == 'messaging_simple_user_page') {
    $link['title'] = t('Notifications');
  }

  if ($link['path'] == 'user/%/notifications') {
    $link['title'] = t('Subscriptions');
  }

  if ($link['page_callback'] == 'statistics_user_tracker' || $link['path'] == 'user/%/shortcuts') {
    return;
  }

  if(!empty($variables['element']['#active'])) {
    $list_class .= ' active';
  }

  $link_text = $link['title'];

  if (!empty($variables['element']['#active'])) {
    // Add text to indicate active tab for non-visual users.
    $active = '<span class="element-invisible">' . t('(active tab)') . '</span>';

    // If the link does not contain HTML already, check_plain() it now.
    // After we set 'html'=TRUE the link will not be sanitized by l().
    if (empty($link['localized_options']['html'])) {
      $link['title'] = check_plain($link['title']);
    }
    $link['localized_options']['html'] = TRUE;
    $link_text = t('!local-task-title!active', array('!local-task-title' => $link['title'], '!active' => $active));
  }

  return '<li class=" ' .$list_class. ' ">' . l($link_text, $link['href'], $link['localized_options']) . "</li>\n";
}

/**
 * Implements theme_menu_local_task().
 */
function loop_menu_local_tasks($variables) {
  $output = '';

  if (!empty($variables['primary'])) {
    $variables['primary']['#prefix'] = '<h2 class="element-invisible">' . t('Primary tabs') . '</h2>';
    $variables['primary']['#prefix'] .= '<ul class="block-module--user-links-list">';
    $variables['primary']['#suffix'] = '<li class="block-module--user-links-item"><a href="/user/logout">' . t('Logout') . '</a></li></ul>';
    $output .= drupal_render($variables['primary']);
  }
  if (!empty($variables['secondary'])) {
    $variables['secondary']['#prefix'] = '<h2 class="element-invisible">' . t('Secondary tabs') . '</h2>';
    $variables['secondary']['#prefix'] .= '<ul class="block-module-user-links-list-sub secondary">';
    $variables['secondary']['#suffix'] = '</ul>';
    $output .= drupal_render($variables['secondary']);
  }

  return $output;
}


/**
 * Returns HTML for a fieldset form element and its children.
 *
 * Changes the class added to fieldsets, so it differs from the wrapper added inside.
 */
function loop_fieldset($variables) {
  $element = $variables['element'];
  element_set_attributes($element, array('id'));
  _form_set_class($element, array('field-group-fieldset'));

  $output = '<fieldset' . drupal_attributes($element['#attributes']) . '>';
  if (!empty($element['#title'])) {
    // Always wrap fieldset legends in a SPAN for CSS positioning.
    $output .= '<legend><span class="fieldset-legend">' . $element['#title'] . '</span></legend>';
  }
  $output .= '<div class="fieldset-wrapper">';
  if (!empty($element['#description'])) {
    $output .= '<div class="fieldset-description">' . $element['#description'] . '</div>';
  }
  $output .= $element['#children'];
  if (isset($element['#value'])) {
    $output .= $element['#value'];
  }
  $output .= '</div>';
  $output .= "</fieldset>\n";
  return $output;
}


/**
 * Implements template_preprocess_user_profile().
 */
function loop_preprocess_user_profile(&$variables) {
  $account = $variables['elements']['#account'];

  // Provide a full name to the template if both first name and surname exists.
  $first_name = field_get_items('user', $variables['elements']['#account'], 'field_first_name');
  $surname = field_get_items('user', $variables['elements']['#account'], 'field_last_name');
  if(!empty($first_name)) {
    $variables['first_name'] = field_view_value('user', $variables['elements']['#account'], 'field_first_name', $first_name['0']);
  }
  if(!empty($surname)) {
    $variables['surname'] = field_view_value('user', $variables['elements']['#account'], 'field_last_name', $surname['0']);
  }
  if(!empty($first_name) && !empty($surname)) {
    $variables['full_name'] = $variables['first_name']['#markup'] . ' ' . $variables['surname']['#markup'];
  }

  // Helpful $user_profile variable for templates.
  foreach (element_children($variables['elements']) as $key) {
    $variables['user_profile'][$key] = $variables['elements'][$key];
  }

  // Preprocess fields.
  field_attach_preprocess('user', $account, $variables['elements'], $variables);
}


/**
 * Implements hook_form_alter().
 *
 * Adds custom class names and placeholder attribute and icon prefix to search field.
 */
function loop_form_search_api_page_search_form_default_alter(&$form, &$form_state, $form_id) {
  // Change title text and make sure the label is displayed.
  $form['keys_1']['#title_display'] = 'before';
  $form['keys_1']['#title'] = t('Search for an answer');

  // Add icon markup as a prefix to field.
  $form['keys_1']['#field_prefix'] = '<i class="typeahead-block--icon icon-search"></i>';
}

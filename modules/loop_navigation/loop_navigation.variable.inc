<?php
/**
 * @file
 * loop_navigation.variable.inc
 */

/**
 * Implements hook_variable_realm_default_variables().
 */
function loop_navigation_variable_realm_default_variables() {
  $realm_variables = array();
  $realm_variables['language']['da'] = array();
  $realm_variables['language']['en'] = array();
  return $realm_variables;
}

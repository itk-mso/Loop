api = 2
core = 7.x

; Contrib modules
projects[abuse][type] = "module"
projects[abuse][subdir] = "contrib"
projects[abuse][download][type] = "git"
projects[abuse][download][url] = "http://git.drupal.org/project/abuse.git"
projects[abuse][download][branch] = "7.x-1.x-dev"

projects[admin_views][subdir] = "contrib"
projects[admin_views][version] = "1.7"

projects[auto_entitylabel][subdir] = "contrib"
projects[auto_entitylabel][version] = "1.4"

projects[autocomplete_deluxe][subdir] = "contrib"
projects[autocomplete_deluxe][version] = "2.3"

projects[better_formats][subdir] = "contrib"
projects[better_formats][version] = "1.0-beta2"

projects[comment_counter][subdir] = "contrib"
projects[comment_counter][version] = "1.0-alpha1"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.15"

projects[ckeditor_link][subdir] = "contrib"
projects[ckeditor_link][version] = "2.4"

projects[date][subdir] = "contrib"
projects[date][version] = "2.x-dev"

projects[diff][subdir] = "contrib"
projects[diff][version] = "3.4"

projects[elements][subdir] = "contrib"
projects[elements][version] = "1.5"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.9"

projects[entity_print][subdir] = "contrib"
projects[entity_print][version] = "1.5"

projects[entitycache][subdir] = "contrib"
projects[entitycache][version] = "1.5"

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.5"

projects[facetapi][subdir] = "contrib"
projects[facetapi][version] = "1.6"

projects[features][subdir] = "contrib"
projects[features][version] = "2.11"

projects[features_extra][subdir] = "contrib"
projects[features_extra][version] = "1.0"

projects[features_override][subdir] = "contrib"
projects[features_override][version] = "2.0-rc3"

projects[field_group][subdir] = "contrib"
projects[field_group][version] = "1.6"

projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.29"

projects[flag][subdir] = "contrib"
projects[flag][version] = "3.9"

projects[globalredirect][subdir] = "contrib"
projects[globalredirect][version] = "1.6"

projects[google_analytics][subdir] = "contrib"
projects[google_analytics][version] = "2.6"

projects[google_analytics_counter][subdir] = "contrib"
projects[google_analytics_counter][version] = "3.4"

projects[html5_tools][subdir] = "contrib"
projects[html5_tools][version] = "1.3"

projects[i18n][subdir] = "contrib"
projects[i18n][version] = "1.27"

projects[i18nviews][subdir] = "contrib"
projects[i18nviews][version] = "3.0-alpha1"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "3.0-alpha5"

projects[l10n_update][subdir] = "contrib"
projects[l10n_update][version] = "2.4"

projects[libraries][subdir] = "contrib"
projects[libraries][version] = "2.5"

projects[link][subdir] = "contrib"
projects[link][version] = "1.7"

projects[logintoboggan][subdir] = "contrib"
projects[logintoboggan][version] = "1.5"

projects[memcache][subdir] = "contrib"
projects[memcache][version] = "1.6"

projects[mailsystem][subdir] = "contrib"
projects[mailsystem][version] = "2.35"

projects[media][subdir] = "contrib"
projects[media][version] = "2.26"

projects[menu_admin_per_menu][subdir] = "contrib"
projects[menu_admin_per_menu][version] = "1.1"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0"

projects[menu_block][subdir] = "contrib"
projects[menu_block][version] = "2.8"

projects[menu_token][subdir] = "contrib"
projects[menu_token][version] = "1.0-beta7"

projects[menu_position][subdir] = "contrib"
projects[menu_position][version] = "1.2"

projects[menu_view_unpublished][subdir] = "contrib"
projects[menu_view_unpublished][version] = "1.0-beta3"

projects[metatag][subdir] = "contrib"
projects[metatag][version] = "1.27"

projects[message][subdir] = "contrib"
projects[message][version] = "1.12"

projects[message_notify][subdir] = "contrib"
projects[message_notify][version] = "2.5"

projects[message_subscribe][subdir] = "contrib"
projects[message_subscribe][version] = "1.0-rc2"

projects[mimemail][subdir] = "contrib"
projects[mimemail][version] = "1.1"

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = "2.2"

projects[node_export][subdir] = "contrib"
projects[node_export][version] = "3.1"

projects[node_limit][subdir] = "contrib"
projects[node_limit][version] = "1.0-alpha5"

projects[oauth][subdir] = "contrib"
projects[oauth][version] = "3.4"

projects[page_title][subdir] = "contrib"
projects[page_title][version] = "2.7"

projects[panels][subdir] = "contrib"
projects[panels][version] = "3.9"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.3"

projects[path_breadcrumbs][subdir] = "contrib"
projects[path_breadcrumbs][version] = "3.4"

projects[pcp][subdir] = "contrib"
projects[pcp][version] = "1.7"
projects[pcp][patch][] = "https://www.drupal.org/files/issues/2018-10-09/pcp-fix_ambiguity_in_execution_added_curly_braces.patch"

projects[phpwkhtmltopdf][subdir] = "contrib"
projects[phpwkhtmltopdf][version] = "2.1"

projects[publishcontent][subdir] = "contrib"
projects[publishcontent][version] = "1.4"

projects[redirect][subdir] = "contrib"
projects[redirect][version] = "1.0-rc3"

projects[role_delegation][subdir] = "contrib"
projects[role_delegation][version] = "1.2"

projects[rules][subdir] = "contrib"
projects[rules][version] = "2.12"
projects[rules][patch][] = "https://www.drupal.org/files/issues/rules-2020917.patch"

;;; 3.0???
projects[saml_sp][subdir] = "contrib"
projects[saml_sp][version] = "2.2"
; Custom SAML SP hooks
projects[saml_sp][patch][] = "https://raw.githubusercontent.com/os2loop/profile/main/patches/saml_sp_drupal_login-alter_user_hooks.patch"
projects[saml_sp][patch][] = "https://raw.githubusercontent.com/os2loop/profile/main/patches/saml_sp_remove_make_file.patch"

projects[search_api][subdir] = "contrib"
projects[search_api][version] = "1.26"

projects[search_api_page][subdir] = "contrib"
projects[search_api_page][version] = "1.5"

projects[search_api_solr][subdir] = "contrib"
projects[search_api_solr][version] = "1.15"

projects[search_api_spellcheck][subdir] = "contrib"
projects[search_api_spellcheck][version] = "1.0"

projects[search_api_search_node][type] = "module"
projects[search_api_search_node][subdir] = "contrib"
projects[search_api_search_node][download][type] = "git"
projects[search_api_search_node][download][url] = "http://github.com/search-node/search_api_search_node.git"
projects[search_api_search_node][download][tag] = "7.x-1.1.8"

projects[search_node_page][type] = "module"
projects[search_node_page][subdir] = "contrib"
projects[search_node_page][download][type] = "git"
projects[search_node_page][download][url] = "http://github.com/search-node/search_node_page.git"
projects[search_node_page][download][tag] = "7.x-1.3.5"

projects[secure_permissions][subdir] = "contrib"
projects[secure_permissions][version] = "1.6"

projects[shorten][subdir] = "contrib"
projects[shorten][version] = "1.4"

projects[shurly][subdir] = "contrib"
projects[shurly][version] = "1.4"

projects[simplesamlphp_auth][subdir] = "contrib"
projects[simplesamlphp_auth][version] = "2.0-alpha2"

projects[special_menu_items][subdir] = "contrib"
projects[special_menu_items][version] = "2.1"

projects[statistics_counter][subdir] = "contrib"
projects[statistics_counter][version] = "1.4"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[style_settings][subdir] = "contrib"
projects[style_settings][version] = "2.0"
projects[style_settings][patch][] = "patches/style_settings-path.patch"

projects[system_status][subdir] = "contrib"
projects[system_status][version] = "3.3"

projects[taxonomy_manager][subdir] = "contrib"
projects[taxonomy_manager][version] = "1.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.7"
projects[token][patch] = "https://www.drupal.org/files/issues/token-field_description_overwritten-2474403-12-D7.patch"

projects[transliteration][subdir] = "contrib"
projects[transliteration][version] = "3.2"

projects[uuid][subdir] = "contrib"
projects[uuid][version] = "1.3"

projects[uuid_features][subdir] = "contrib"
projects[uuid_features][version] = "1.0-rc2"

projects[variable][subdir] = "contrib"
projects[variable][version] = "2.5"

projects[view_unpublished][subdir] = "contrib"
projects[view_unpublished][version] = "1.2"

projects[views][subdir] = "contrib"
projects[views][version] = "3.24"
projects[views][patch][] = "https://www.drupal.org/files/issues/2018-06-05/views-make_destination_parameter_configurable-1239566-33.patch"

projects[views_calc][subdir] = "contrib"
projects[views_calc][version] = "1.1"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.6"

projects[views_flag_refresh][subdir] = "contrib"
projects[views_flag_refresh][version] = "1.3"

projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][version] = "2.6"

projects[linkchecker][subdir] = "contrib"
projects[linkchecker][version] = "1.4"

projects[linkchecker_summary_mail][subdir] = "contrib"
projects[linkchecker_summary_mail][version] = "1.2"

projects[color_field][subdir] = "contrib"
projects[color_field][version] = "1.8"

; Libraries
libraries[angular][download][type] = "get"
libraries[angular][download][url] = "https://code.angularjs.org/1.5.5/angular.min.js"
libraries[angular][directory_name] = "angular"
libraries[angular][destination] = "libraries"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.5.3/ckeditor_4.5.3_full.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[respondjs][download][type] = "get"
libraries[respondjs][download][url] = "https://raw.github.com/scottjehl/Respond/master/dest/respond.min.js"
libraries[respondjs][directory_name] = "respondjs"
libraries[respondjs][destination] = "libraries"

libraries[php-saml][download][type] = "git"
libraries[php-saml][download][url] = "https://github.com/onelogin/php-saml.git"
libraries[php-saml][download][tag] = "v2.12.0"
libraries[php-saml][directory_name] = "php-saml"
libraries[php-saml][destination] = "libraries"

libraries[xmlseclibs][download][type] = "git"
libraries[xmlseclibs][download][url] = "https://github.com/robrichards/xmlseclibs.git"
libraries[xmlseclibs][download][branch] = "1.3.2"
libraries[xmlseclibs][directory_name] = "xmlseclibs"
libraries[xmlseclibs][destination] = "libraries"

libraries[zen-grids][download][type] = "git"
libraries[zen-grids][download][url] = "https://github.com/JohnAlbin/zen-grids.git"
libraries[zen-grids][download][tag] = "1.4"
libraries[zen-grids][destination] = "libraries"

libraries[handlebars][download][type] = "get"
libraries[handlebars][download][url] = "http://builds.handlebarsjs.com.s3.amazonaws.com/handlebars-v1.2.1.js"
libraries[handlebars][destination] = "libraries"

projects[aarhus_kommune_management][type] = "module"
projects[aarhus_kommune_management][subdir] = "contrib"
projects[aarhus_kommune_management][download][type] = "git"
projects[aarhus_kommune_management][download][url] = "https://github.com/rimi-itk/aarhus-kommune-management-drupal"
projects[aarhus_kommune_management][download][branch] = "7.x"

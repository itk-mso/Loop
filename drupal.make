api = 2
core = 7.x

; Core
; As d.o is having issues with the update XML file, we are using this form for downloading core.
; See this: https://drupal.org/node/2126123
projects[drupal][type] = core
projects[drupal][version] = 7.60
projects[drupal][patch][] = "https://drupal.org/files/drupal-menu_navigation_links-1018614-83.patch"
projects[drupal][patch][] = "https://drupal.org/files/issues/translate_role_names-2205581-1.patch"
; Drupal has issues clearing caches when node_modules/ or bower_components/ directories are present.
projects[drupal][patch][] = "https://www.drupal.org/files/issues/optimize_scan-2329453-89-d7-do-not-test.patch"
projects[drupal][patch][] = "https://raw.githubusercontent.com/os2loop/profile/master/patches/rebuild_local_js_alter.patch"

; Setup Docker
libraries[docker_vhost][download][type] = "get"
libraries[docker_vhost][download][url] = "https://raw.githubusercontent.com/aakb/itkdev-docker/develop/templates/drupal-7/.docker/vhost.conf"
libraries[docker_vhost][destination] = /../../
libraries[docker_vhost][directory_name] = .docker

projects[otherothertest][download][type] = "file"
projects[otherothertest][download][url] = "https://code.angularjs.org/1.5.5/angular.min.js"
projects[otherothertest][destination] = /../../
projects[otherothertest][overwrite] = TRUE


; Install profile.
;projects[loopdk][type] = "profile"
;projects[loopdk][download][type] = "git"
;projects[loopdk][download][url] = "https://github.com/itk-mso/Loop.git"
;projects[loopdk][download][tag] = "1.8.12"

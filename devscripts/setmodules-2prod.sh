#!/bin/bash

if [ -d web ]; then
  cd web
fi

# INSTALL
drush en dynamic_page_cache page_cache big_pipe -y



# UNINSTALL
drush pmu devel kint config_delete -y



# DRUPAL CONFIGS
drush cset system.performance css.preprocess 1 -y
drush cset system.performance js.preprocess 1 -y
drush cget system.performance



# FINAL
drush cr

#!/bin/bash

if [ -d web ]; then
  cd web
fi

# INSTALL
drush en devel kint config_delete -y



# UNINSTALL
drush pmu dynamic_page_cache page_cache big_pipe -y



# DRUPAL CONFIGS
drush cset system.performance css.preprocess 0 -y
drush cset system.performance js.preprocess 0 -y
# drush cget system.performance



# FINAL
drush cr

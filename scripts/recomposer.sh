#!/bin/bash

composer=$(which composer)
drush=$(which drush)

if [ -f "web/sites/default/settings.php" ]; then
  rm -fr vendor
  rm -fr composer.lock
  rm -fr web/core
  rm -fr web/modules/contrib
  rm -fr web/themes/contrib
  rm -fr web/profiles/contrib
  $composer update --with-dependencies
fi

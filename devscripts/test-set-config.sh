#!/bin/bash

if [ ! -f enabled.test ]; then
  touch enabled.test
  drush cset system.performance css.preprocess 1 -y
  drush cset system.performance js.preprocess 1 -y
else
  echo borrando
  rm *.test

fi

drush cex -y

ls | grep *.test

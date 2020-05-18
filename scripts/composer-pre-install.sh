#!/bin/bash

echo "====> composer-pre-install"

if [ -d "web/sites/default" ]; then
  chmod 775 web/sites/default
  chmod 775 web/sites/default/settings*
fi

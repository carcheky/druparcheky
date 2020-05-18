#!/bin/bash

echo "====> composer-post-install"

if [ -d "web/sites/default" ]; then
  chmod 555 web/sites/default
  chmod 444 web/sites/default/settings*
fi

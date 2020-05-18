#!/bin/bash
echo "====> composer-post-install"

if [ -d "web/sites/default" ]; then
  chmod 555 web/sites/default
fi

if [ -d "sites/default" ]; then
  chmod 555 sites/default
fi

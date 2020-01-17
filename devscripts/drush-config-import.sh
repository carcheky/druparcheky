#!/bin/bash

echo "drush-config-import2 running2" >test-drush-config-import2.txt ;

cd web >>test-drush-config-import2.txt ;

/opt/plesk/php/7.2/bin/php /usr/local/bin/drush config:import -y >>test-drush-config-import2.txt ;

echo "drush-config-import2 runed" >>test-drush-config-import2.txt ;

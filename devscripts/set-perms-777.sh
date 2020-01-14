#!/bin/bash

if [ -f "web/sites/default/settings.php" ]; then
  sudo echo "=> CORRIGIENDO PERMISOS, ESPERA...."
  sudo chmod -R 777 .
  drush fp
  echo "=> PERMISOS CORREGIDOS"; else echo "=> DEBES ESTAR EN LA RAIZ DE DRUPAL";
fi

#!/bin/bash

# vars

if [ ! $1 ]; then
  echo "nombre del tema:"
  read THEME_NAME
  THEME_NAME=${THEME_NAME}
elif [ $1 ]; then
  THEME_NAME=${1}
fi

if [ ! $2 ]; then
  echo "site dir, full linux path:"
  read SITE_DIR
elif [ $2 ]; then
  SITE_DIR=${2}
fi

THEMES_DIR=${SITE_DIR}/themes/custom
THEME_BASE="${THEMES_DIR}/druparcheky_theme"
THEME_NEW=${THEMES_DIR}/${THEME_NAME}

echo $THEMES_DIR
cd $THEMES_DIR
echo $ORIGINAL_DIR
echo $THEME_NAME

# exit

sudo apt install rename -y 0>/dev/null

# functions
generate_theme() {

  cd ${THEME_NEW}
  # echo "sudo rm -fr .git"
  sudo rm -fr .git
  rename "s/^druparcheky_theme/$THEME_NAME/" druparcheky_theme* 2>/dev/null

  cd ${THEME_NEW}/config/install/
  rename "s/^druparcheky_theme/$THEME_NAME/" druparcheky_theme* 2>/dev/null

  # cd ${THEME_NEW}
  # ls -Rla | grep $THEME_NAME

  find ${THEME_NEW} -type f -print0 | xargs -0 sed -i "s/druparcheky_theme/$THEME_NAME/g"
  # find ${THEME_NEW} -type f -exec cat {} \; | grep $THEME_NAME
  FINAL_MESSAGE="El nuevo tema está en ${THEME_NEW}"

}

# logic


if [ -d ${THEMES_DIR}/${THEME_NAME} ]; then
  echo "=> ya existe ${THEME_NAME}"
  FINAL_MESSAGE="El tema está en ${THEME_NEW}"
  rm -fr ${THEME_NEW}
elif [ ! -d ${THEMES_DIR}/${THEME_NAME} ]; then
  echo "=> creando ${THEME_NAME}..."
  cd ${THEMES_DIR}
  cp -fr ${THEME_BASE} ${THEME_NEW}
  generate_theme
fi



  echo "===================================================================="
  echo "===================================================================="
  echo "=> ${FINAL_MESSAGE}"
  echo "===================================================================="
  echo "===================================================================="

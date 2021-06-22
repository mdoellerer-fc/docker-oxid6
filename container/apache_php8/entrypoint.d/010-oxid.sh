#!/usr/bin/env bash
set -e
rm -rf ./php8/
# bootstrap oxid files/project
if [ ! -f /var/www/html/source/config.inc.php ]
then
  rm -rf ./php8/
	composer create-project oxid-esales/oxideshop-project php8 ${OXID_VERSION}
	mv -v ./php8/* /var/www/html/
	mv /var/www/config.inc.php /var/www/html/source/config.inc.php
	chown -R www-data:www-data /var/www/html/source/
	echo "#####################################"
	echo "##### OXID bootstrap completed! #####"
	echo "#####################################"
fi

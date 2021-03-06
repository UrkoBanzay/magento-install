﻿#!/bin/bash
#installing composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '92102166af5abdb03f49ce52a40591073a7b859a86e8ff13338cf7db58a19f7844fbc0bb79b2773bf30791e935dbd938') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/home/
php -r "unlink('composer-setup.php');"
wait
#copiyng json file with credentials for repo.magento.com
cp auth.json /home/administrator/.composer/
wait
php /home/composer.phar create-project --repository-url=https://repo.magento.com/ magento/project-community-edition $homedir$domainname
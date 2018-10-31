plugin=S3

all:
	@ echo "Build archive for plugin ${plugin} version=${version}"
	@ git archive HEAD --prefix=${plugin}/ --format=zip -o ${plugin}-${version}.zip
        @ curl -sS https://getcomposer.org/installer | php
        @ php -d memory_limit=-1 composer.phar install
	@ rm composer.phar composer.lock



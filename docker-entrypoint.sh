#!/usr/bin/env bash

if [[ "$1" == apache2* ]] || [ "$1" = 'php-fpm' ]; then
    if [ ! -e /usr/src/app/public/index.php ]; then
        echo "CREATING PROJECT"
        /usr/bin/symfony new /usr/src/app --version='6.3.*' --webapp
    fi
fi

echo "STARTING APACHE"

exec "$@"
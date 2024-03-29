#!/bin/bash

DIR='/etc/apache2/sites-available/'
DIR1='/home/qqee/backend2-git/000-backend2.conf'
DIR2='/etc/apache2/sites-available/000-backend2.conf'
DIR4='/home/qqee/backend2-git/index.html'
DIR5='/var/www/backend2/'
DIR6='/var/www/backend2/index.html'
cp $DIR1 $DIR2
echo "Конфиг 000-backend2.conf, Apache сервиса скопирован по пути $DIR"
mkdir $DIR5
cp $DIR4 $DIR6

#Активация новых файлов виртуального хоста
a2ensite 000-backend2.conf

#Отключите сайт по умолчанию, заданный в файле 000-default.conf:
a2dissite 000-default.conf

systemctl restart apache2
if [ $? -eq 0 ]; then
        echo "Сервис Apache готов к работе!"
else
        echo "Возникла ошибка!"
fi

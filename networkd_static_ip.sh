#!/bin/bash

DIR='/etc/systemd/network/'
DIR1='/home/qqee/backend2-git/10-eth.network'
DIR2='/etc/systemd/network/10-eth.network'

# Копируем конфиг
cp $DIR1 $DIR2
echo "Конфиг 10-eth.network, Networkd сервиса скопирован по пути $DIR"

# Перезапускаем сервис
systemctl restart systemd-networkd
if [ $? -eq 0 ]; then
        echo "Сервис Network включил Вам статический ip адрес!"
else
        echo "Возникла ошибка!"
fi

 <!---Пример кода-->
[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Computer+science+student)](https://git.io/typing-svg)

> [!CAUTION] 
> ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT

### APACHE

    # Установка Apache
    sudo apt install apache2
#
    # Запуск Apache
    sudo systemctl start apache2
#
    # Проверка статуса
    sudo systemctl status apache2
#

### MySQL

    # Устанавливаем MySQL
    apt install mysql-server-8.0
#
    # Запускаем
    systemctl start mysql
#

 ### Установка Node Exporter

    # Скачиваем Node Exporter
    wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
#
    # Распаковка архивов
    tar xzvf node_exporter-*.t*gz
#
    # Добавляем пользователей
    useradd --no-create-home --shell /bin/false node_exporter
#
    # Копируем файлы в /usr/local
    cp node_exporter-*.linux-amd64/node_exporter /usr/local/bin
    chown node_exporter: /usr/local/bin/node_exporter
    
### НАСТРОЙКА APACHE2

### 1. Настраиваем статические ip адреса :
   
* #### Запустить скрипт [networkd_static_ip.sh](https://github.com/rashenko/backend2-git/blob/main/networkd_static_ip.sh), он настроит статический ip

### 2. Копируем конфиги apache2:
   
* #### Запустить скрипт [apache_script_b2.sh](https://github.com/rashenko/backend2-git/blob/main/apache_script_b2.sh), он скопирует конфиг и перезапустит сервис apache2

### 3. Установка node_exporter:
   
* #### Запустить скрипт [node_exporter.sh](https://github.com/rashenko/backend2-git/blob/main/node_exporter.sh), он установит и настроит node_exporter
#

### MYSQL (SLAVE)

### 4. Настройка MySQL :

* #### После настройки MySQL (SOURCE) [см. №4](https://github.com/rashenko/backend1-git/blob/main/README.md)
  
* #### Запустить скрипт [mysql_scrip_slave.sh](https://github.com/rashenko/backend2-git/blob/main/mysql_scrip_slave.sh), он настроит MySQL и изменит источник репликации

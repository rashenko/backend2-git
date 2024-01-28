 ## ЗАПУСКАТЬ СКРИПТЫ ОТ ПОЛЬЗОВАТЕЛЯ ROOT
 
### НАСТРОЙКА APACHE2
### 1. Настраиваем статические ip адреса:
   
* #### Запустить скрипт networkd_static_ip.sh, он настроит статический ip

### 2. Копируем конфиги apache2:
   
* #### Запустить скрипт apache_script_b2.sh, он скопирует конфиг и перезапустит сервис apache2

### 3. Установка node_exporter:
   
* #### Запустить скрипт node_exporter.sh, он установит и настроит node_exporter
#

### MYSQL (SOURCE)

### 4. Настройка MySQL:

* #### После настройки MySQL (SOURCE) [см. №4](https://github.com/rashenko/backend1-git/blob/main/README.md)
  
* #### Запустить скрипт mysql_scrip_slave.sh, он настроит MySQL и изменит источник репликации

#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

#sudo apt install -y wget curl git python3-pip python3-dev libpq-dev 

# Создаем окружение для postgres для обеспечения безопасности
sudo useradd -r -s /bin/bash postgres  
sudo mkdir -p /var/lib/postgresql/16/main  
sudo chown -R postgres:postgres /var/lib/postgresql  

sudo apt install iptables-persistent -y


#настройки iptables

echo " Очищаем старые правила iptables..."
sudo iptables -F
sudo iptables -X
sudo iptables -Z

#  Разрешаем SSH (порт 22)
echo " Разрешаем SSH (порт 22)..."
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT


#  Устанавливаем политики по умолчанию (блокируем всё входящее, разрешаем исходящее)
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD DROP

#  Разрешаем локальный трафик (loopback)
echo " Разрешаем локальный трафик (loopback)..."
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

#  Разрешаем установленные и связанные подключения (КРИТИЧНО!)
echo " Разрешаем установленные и связанные подключения..."
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT


#  Разрешаем Etcd (порты 2379 и 2380)
echo " Разрешаем Etcd (порты 2379, 2380)..."
sudo iptables -A INPUT -p tcp --dport 2379 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 2380 -j ACCEPT

#  Разрешаем PostgreSQL (порт 5432)
echo " Разрешаем PostgreSQL (порт 5432)..."
sudo iptables -A INPUT -p tcp --dport 5432 -j ACCEPT

#  Разрешаем Patroni REST API (порт 8008)
echo " Разрешаем Patroni REST API (порт 8008)..."
sudo iptables -A INPUT -p tcp --dport 8008 -j ACCEPT

# Разрешаем ICMP (ping)
echo "Разрешаем ICMP (ping)..."
sudo iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT

# Сохраняем правила для Ubuntu 26.04
echo " Сохраняем правила iptables..."
sudo netfilter-persistent save
sudo netfilter-persistent reload

# Проверяем, что правила применены
echo -e "\n Текущие правила iptables:"
sudo iptables -L -n -v

# install etcd
sudo apt install etcd-server etcd-client

sudo mkdir -p /etc/etcd/ /var/local/bin/

sudo touch etcd.conf.yml
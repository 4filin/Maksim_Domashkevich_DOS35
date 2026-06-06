#!/usr/bin/env bash

# 1. Удалите старую испорченную папку
rm -rf ~/myenv

# 2. Создайте пустое виртуальное окружение (без pip и setuptools)
/usr/bin/python3.14 -m venv --without-pip ~/myenv

# 3. Активируйте его
source ~/myenv/bin/activate

# 4. Вручную установите pip внутрь окружения
curl -sS https://bootstrap.pypa.io/get-pip.py | python

# 5. Проверьте, что всё работает
pip --version

pip install 'patroni[etcd]' psycopg2-binary

# Создайте директорию для конфигов
sudo mkdir -p /etc/patroni
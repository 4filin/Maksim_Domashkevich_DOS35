#!/usr/bin/env bash
echo "Start"
sudo apt update && sudo apt upgrade -y
echo "1 step over"
echo "step 2"
sudo apt install -y \
 git \
 curl \
 wget \
 unzip \
 htop \
 tree \
 zsh \
 jq
echo "2 step over"
echo "3 step"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "3 step over"
mkdir src docs tests

touch README.md
$ printf " # First DevOps Project
 
  ## Описание
  Проект для изучения практик DevOps
 
 
  ## Структура
  - `/src` - исходный код
  - `/docs` - документация
  - `/tests` - тесты
  "  > README.md
echo "4 step over"

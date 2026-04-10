## Работа с сервером Linux основы BASH 

1. Создание и запуск простого скрита на Bash
     Создаем скрипт
         ![step1](./temp/step1.png)
2. Переносим скрипт на сервер 
    Прописываем разрешения для запуска и запускаем скрипт 
         ![step2](./temp/step2.png)
3. Пишем скрипт на установку пакета програм
    * htop для мониторинга процессов
    * mc (Midnight Commander) для работы с файлами
    * tree для просмотра структуры каталогов
4. Повторяем процедуру из путкта 2 и запускаем скрипт
         ![step3](./temp/step3.png)
         ![step4](./temp/step4.png)
    скриптом создан дополнительно файл installed_packages.txt 
         ![step5](./temp/step5.png)            
    содержимое файла после команды 
    dpkg --get-selections > installed_packages.txt  
         ![step6](./temp/step6.png)            

